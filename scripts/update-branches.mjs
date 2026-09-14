import { execFileSync } from 'node:child_process';

/*
  Package Control installs the source archive of a branch, so each package has a
  long-lived branch that differs from `main` in one line of `.gitattributes`.
  Advancing a branch publishes the package, which is why this is a deliberate
  step rather than something that follows every commit to `main`.
*/
const TARGETS = [
  { branch: 'glimmer-js', fileToExclude: 'src/Glimmer TS.sublime-syntax' },
  { branch: 'glimmer-ts', fileToExclude: 'src/Glimmer JS.sublime-syntax' },
];

const TARGET_BRANCHES = TARGETS.map(({ branch }) => branch);

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
  for (const { branch, fileToExclude } of TARGETS) {
    if (branchExists(branch)) {
      git('checkout', branch);
      git('merge', MAIN_BRANCH, '--no-edit');
    } else {
      git('checkout', '-b', branch, MAIN_BRANCH);

      execFileSync('sh', [
        '-c',
        `printf '%s export-ignore\\n' '${fileToExclude.replaceAll(' ', '[[:space:]]')}' >> .gitattributes && sort -o .gitattributes .gitattributes`,
      ]);

      git('add', '.gitattributes');
      git('commit', '-m', `Excluded ${fileToExclude}`);
    }

    console.log(`Updated ${branch}`);
  }
} finally {
  git('checkout', startingBranch);
}

git('push', 'origin', ...TARGET_BRANCHES);
