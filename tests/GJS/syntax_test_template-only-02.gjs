// SYNTAX TEST "Packages/User/Glimmer JS.sublime-syntax"
import styles from './hello.css';

const Hello = <template>
         // ^ source.gjs keyword.operator.assignment.js
            // ^^^^^^^^ punctuation.definition.tag.begin.js
                     // ^ source.gjs source.gjs.content
  <div class={{styles.container}}>
    Hello {{@name}}!
  </div>
</template>;
//^^^^^^^^ punctuation.definition.tag.end.js
        // ^ source.gjs punctuation.terminator.statement.js

export default Hello;
// ^^^ source.gjs meta.export.js keyword.control.import-export.js
