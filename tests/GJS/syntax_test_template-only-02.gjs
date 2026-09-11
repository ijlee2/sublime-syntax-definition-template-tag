// SYNTAX TEST "Packages/User/Template Tag.sublime-syntax"
import styles from './hello.css';

const HelloComponent = <template>
                     // ^^^^^^^^ punctuation.definition.tag.begin.js
                     //          ^ source.template-tag source.template-tag.content text.html.handlebars
  <div class={{styles.container}}>
    Hello {{@name}}!
  </div>
</template>;
//^^^^^^^^ punctuation.definition.tag.end.js

export default HelloComponent;
