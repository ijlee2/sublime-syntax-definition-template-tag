import { execFileSync } from 'node:child_process';

/*
  Package Control installs the source archive of a branch, so each package has a
  long-lived branch that differs from `main` in one line of `.gitattributes`.
  Advancing a branch publishes the package, which is why this is a deliberate
  step rather than something that follows every commit to `main`.
*/
const TARGETS = [
  { branch: 'gjs', excludes: 'src/GTS.sublime-syntax' },
  { branch: 'gts', excludes: 'src/GJS.sublime-syntax' },
];

const MAIN_BRANCH = 'main';

function git(...args) {
  return execFileSync('git', args, { encoding: 'utf8' }).trim();
}

function branchExists(branch) {
  try {
    execFileSync('git', ['rev-parse', '--verify', `refs/heads/${branch}`], {
      stdio: 'ignore',
    });

    return true;
  } catch {
    return false;
  }
}

if (git('status', '--porcelain') !== '') {
  throw new Error('The working tree must be clean.');
}

const startingBranch = git('rev-parse', '--abbrev-ref', 'HEAD');

if (startingBranch !== MAIN_BRANCH) {
  throw new Error(`Run this script on ${MAIN_BRANCH}, not ${startingBranch}.`);
}

try {
  for (const { branch, excludes } of TARGETS) {
    if (branchExists(branch)) {
      git('checkout', branch);
      git('merge', MAIN_BRANCH, '--no-edit');
    } else {
      git('checkout', '-b', branch, MAIN_BRANCH);

      execFileSync('sh', [
        '-c',
        `printf '%s export-ignore\\n' '${excludes}' >> .gitattributes && sort -o .gitattributes .gitattributes`,
      ]);

      git('add', '.gitattributes');
      git('commit', '-m', `Excluded ${excludes} from the ${branch} package`);
    }

    console.log(`Updated ${branch}`);
  }
} finally {
  git('checkout', startingBranch);
}

console.log(
  [
    '',
    'Next, push the branches to publish the packages:',
    '',
    `  git push origin ${TARGETS.map(({ branch }) => branch).join(' ')}`,
    '',
  ].join('\n'),
);
