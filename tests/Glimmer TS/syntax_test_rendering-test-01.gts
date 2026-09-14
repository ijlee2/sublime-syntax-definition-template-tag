// SYNTAX TEST "Packages/User/Template Tag.sublime-syntax"
import { render } from '@ember/test-helpers';
import UiFormField from 'my-app/components/ui/form/field';
import { setupRenderingTest } from 'my-app/tests/helpers';
import { module, test } from 'qunit';

module('Integration | Component | ui/form/field', function (hooks) {
  setupRenderingTest(hooks);

  test('We can pass @errorMessage to show an error message', async function (assert) {
    await render(
 // ^^^^^ meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js keyword.control.flow.await.js
      <template>
   // ^^^^^^^^^^ source.template-tag meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js punctuation.definition.tag.begin.js
        <UiFormField @errorMessage="Please provide a value.">
      // ^^^^^^^^^^^ meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js source.template-tag.content
          <:label as |l|>
            <label data-test-label for={{l.inputId}}>
              Name
            </label>
          </:label>

          <:field as |f|>
            <input
              data-test-field="Name"
              id={{f.inputId}}
              required
              type="text"
            />
          </:field>
        </UiFormField>
      </template>
   // ^^^^^^^^^^^ source.template-tag meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js punctuation.definition.tag.end.js
    );

    assert
      .dom('[data-test-feedback]')
      .hasText('Please provide a value.', 'We see the error message.');
  });
});
