// SYNTAX TEST "Packages/User/Template Tag.sublime-syntax"
import Component from '@glimmer/component';

import styles from './hello.css';

interface HelloSignature {
  Args: {
    name?: string;
  }
}

export default class HelloComponent extends Component<HelloSignature> {
// ^^^ meta.export.js keyword.control.import-export.js
  get name() {
    return this.args.name ?? 'world';
  }

  <template>
  // ^^^^^^^ source.template-tag meta.export.js meta.class.js meta.block.js meta.function.js punctuation.definition.tag.begin.js
    <div class={{styles.container}}>
    // ^ meta.export.js meta.class.js meta.block.js meta.function.js source.template-tag.content meta.tag.block.any.html entity.name.tag.block.any.html
      Hello {{this.name}}!
      // ^^^^^^^^^^^^^^^^^^ meta.export.js meta.class.js meta.block.js meta.function.js source.template-tag.content
    </div>
    // ^^ meta.export.js meta.class.js meta.block.js meta.function.js source.template-tag.content meta.tag.block.any.html entity.name.tag.block.any.html
  </template>
  // ^^^^^^^^ source.template-tag meta.export.js meta.class.js meta.block.js meta.function.js punctuation.definition.tag.end.js
}

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    Hello: typeof HelloComponent;
    hello: typeof HelloComponent;
  }
}
