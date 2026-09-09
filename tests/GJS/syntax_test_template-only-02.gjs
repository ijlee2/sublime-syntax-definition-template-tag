// SYNTAX TEST "Packages/User/GJS.sublime-syntax"
import styles from './hello.css';

const HelloComponent = <template>
                     // ^^^^^^^^ punctuation.definition.tag.begin.js
                     //          ^ source.template-tag.js source.template-tag.js.content text.html.handlebars
  <div class={{styles.container}}>
    Hello {{@name}}!
  </div>
</template>;
//^^^^^^^^ punctuation.definition.tag.end.js

export default HelloComponent;
