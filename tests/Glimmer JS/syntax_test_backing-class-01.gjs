// SYNTAX TEST "Packages/User/Glimmer JS.sublime-syntax"
import Component from '@glimmer/component';

import styles from './hello.css';

export default class Hello extends Component {
// ^^^ meta.export.js keyword.control.import-export.js
  get name() {
         // ^ source.gjs meta.export.js meta.class.js meta.block.js meta.function.js
    return this.args.name ?? 'world';
  }

  <template>
  // ^^^^^^^ source.gjs meta.export.js meta.class.js meta.block.js meta.function.js punctuation.definition.tag.begin.js
    <div class={{styles.container}}>
  // ^^^ source.gjs meta.export.js meta.class.js meta.block.js meta.function.js source.gjs.content text.html.handlebars meta.tag.block.any.html entity.name.tag.block.any.html
      Hello {{this.name}}!
   // ^^^^^ source.gjs meta.export.js meta.class.js meta.block.js meta.function.js source.gjs.content text.html.handlebars
           // ^^^^^^^^^ source.gjs meta.export.js meta.class.js meta.block.js meta.function.js source.gjs.content text.html.handlebars meta.function.inline.other.handlebars
    </div>
  </template>
// ^^^^^^^^^ source.gjs meta.export.js meta.class.js meta.block.js meta.function.js punctuation.definition.tag.end.js
}
