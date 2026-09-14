// SYNTAX TEST "Packages/User/Glimmer TS.sublime-syntax"
import type { TOC } from '@ember/component/template-only';

import styles from './hello.css';

interface HelloSignature {
  Args: {
    name: string;
  }
}

const Hello: TOC<HelloSignature> = <template>
                              // ^ source.gts keyword.operator.assignment.js
                                 // ^^^^^^^^ punctuation.definition.tag.begin.js
                                          // ^ source.gts source.gts.content
  <div class={{styles.container}}>
    Hello {{@name}}!
  </div>
</template>;
//^^^^^^^^ punctuation.definition.tag.end.js
        // ^ source.gts punctuation.terminator.statement.js

export default Hello;
// ^^^ source.gts
