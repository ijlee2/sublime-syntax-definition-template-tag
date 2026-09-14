// SYNTAX TEST "Packages/User/Template Tag.sublime-syntax"
import styles from './hello.css';

const Hello = <template>
         // ^ source.template-tag keyword.operator.assignment.js
            // ^^^^^^^^ punctuation.definition.tag.begin.js
                     // ^ source.template-tag source.template-tag.content text.html.handlebars
  <div class={{styles.container}}>
    Hello {{@name}}!
  </div>
</template>;
//^^^^^^^^ punctuation.definition.tag.end.js
        // ^ source.template-tag punctuation.terminator.statement.js

export default Hello;
// ^^^ source.template-tag meta.export.js keyword.control.import-export.js
