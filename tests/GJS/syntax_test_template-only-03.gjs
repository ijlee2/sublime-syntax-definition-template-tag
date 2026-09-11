// SYNTAX TEST "Packages/User/Template Tag.sublime-syntax"
import { hash, uniqueId } from '@ember/helper';
import { local } from 'embroider-css-modules';

import styles from './field.css';

const UiFormFieldComponent =
// ^^ keyword.declaration.js
  <template>
  // ^^^^^^^ punctuation.definition.tag.begin.js
    {{#let (uniqueId) as |inputId|}}
    // ^^^ source.template-tag.content meta.function.block.start.handlebars support.constant.handlebars keyword.control
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
  </template>;
  // ^^^^^^^^ punctuation.definition.tag.end.js

export default UiFormFieldComponent;
