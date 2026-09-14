// SYNTAX TEST "Packages/User/Template Tag.sublime-syntax"
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
         // ^ source.template-tag meta.export.js meta.class.js meta.block.js meta.function.js punctuation.separator.type.js
    return this.args.name ?? 'world';
  }

  <template>
  // ^^^^^^^ source.template-tag meta.export.js meta.class.js meta.block.js punctuation.definition.tag.begin.js
    <div class={{styles.container}}>
  // ^^^ source.template-tag meta.export.js meta.class.js meta.block.js source.template-tag.content meta.tag.block.any.html entity.name.tag.block.any.html
      Hello {{this.name}}!
   // ^^^^^ source.template-tag meta.export.js meta.class.js meta.block.js source.template-tag.content
           // ^^^^^^^^^ source.template-tag meta.export.js meta.class.js meta.block.js source.template-tag.content meta.function.inline.other.handlebars variable.parameter.handlebars
    </div>
  </template>
// ^^^^^^^^^ source.template-tag meta.export.js meta.class.js meta.block.js punctuation.definition.tag.end.js
}
