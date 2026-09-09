// SYNTAX TEST "Packages/User/GTS.sublime-syntax"
import type { TOC } from '@ember/component/template-only';

import styles from './hello.css';

interface HelloSignature {
  Args: {
    name: string;
  }
}

const HelloComponent: TOC<HelloSignature> = <template>
                                          // ^^^^^^^^ punctuation.definition.tag.begin.js
                                          //          ^ source.template-tag.ts source.template-tag.ts.content text.html.handlebars
  <div class={{styles.container}}>
    Hello {{@name}}!
  </div>
</template>;
//^^^^^^^^ punctuation.definition.tag.end.js

export default HelloComponent;
