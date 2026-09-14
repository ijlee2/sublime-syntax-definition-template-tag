// SYNTAX TEST "Packages/User/Glimmer JS.sublime-syntax"
import { hash, uniqueId } from '@ember/helper';
import { local } from 'embroider-css-modules';

import styles from './field.css';

const UiFormField = <template>
// ^^ keyword.declaration.js
                 // ^ punctuation.definition.tag.begin.js
                 // ^^^^^^^^^^ punctuation.definition.tag.begin.js
                           // ^ source.gjs source.gjs.content
  {{#let (uniqueId) as |inputId|}}
  // ^^^ source.gjs.content meta.function.block.start.handlebars support.constant.handlebars keyword.control
    <div
      class={{local
        styles
        "container"
        (if @isInline "is-inline")
        (if @isWide "is-wide")
        (unless @errorMessage "no-feedback")
      }}
    >
      <div class={{styles.label}}>
        {{yield (hash inputId=inputId) to="label"}}
      </div>

      <div class={{styles.field}}>
        {{yield (hash inputId=inputId) to="field"}}
      </div>

      {{#if @errorMessage}}
        <div
          class={{local styles "feedback" "is-error"}}
          data-test-feedback
          role="alert"
        >
          {{@errorMessage}}
        </div>
      {{/if}}
    </div>
  {{/let}}
       // ^ source.gjs source.gjs.content
</template>;
//^^^^^^^^ punctuation.definition.tag.end.js

export default UiFormField;
