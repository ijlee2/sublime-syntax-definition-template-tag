// SYNTAX TEST "Packages/User/Glimmer TS.sublime-syntax"
import Component from '@glimmer/component';

import styles from './hello.css';

interface HelloSignature {
  Args: {
    name?: string;
  }
}

export default class Hello extends Component<HelloSignature> {
// ^^^ meta.export.js keyword.control.import-export.js
  get name(): string {
         // ^ source.gts meta.export.js meta.class.js meta.block.js meta.function.js punctuation.separator.type.js
    return this.args.name ?? 'world';
  }

  <template>
  // ^^^^^^^ source.gts meta.export.js meta.class.js meta.block.js punctuation.definition.tag.begin.js
    <div class={{styles.container}}>
  // ^^^ source.gts meta.export.js meta.class.js meta.block.js source.gts.content meta.tag.block.any.html entity.name.tag.block.any.html
      Hello {{this.name}}!
   // ^^^^^ source.gts meta.export.js meta.class.js meta.block.js source.gts.content
           // ^^^^^^^^^ source.gts meta.export.js meta.class.js meta.block.js source.gts.content meta.function.inline.other.handlebars variable.parameter.handlebars
    </div>
  </template>
// ^^^^^^^^^ source.gts meta.export.js meta.class.js meta.block.js punctuation.definition.tag.end.js
}
