// SYNTAX TEST "Packages/User/Template Tag.sublime-syntax"
import type { TOC } from '@ember/component/template-only';

import styles from './hello.css';

interface HelloSignature {
  Args: {
    name: string;
  }
}

const Hello: TOC<HelloSignature> = <template>
                              // ^ source.template-tag keyword.operator.assignment.js
                                 // ^^^^^^^^ punctuation.definition.tag.begin.js
                                          // ^ source.template-tag source.template-tag.content
  <div class={{styles.container}}>
    Hello {{@name}}!
  </div>
</template>;
//^^^^^^^^ punctuation.definition.tag.end.js
        // ^ source.template-tag punctuation.terminator.statement.js

export default Hello;
// ^^^ source.template-tag
