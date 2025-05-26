// SYNTAX TEST "Packages/User/Template Tag.sublime-syntax"
import { render } from '@ember/test-helpers';
import { a11yAudit } from 'ember-a11y-testing/test-support';
import { hbs } from 'ember-cli-htmlbars';
import UiFormField from 'my-app/components/ui/form/field';
import { setupRenderingTest } from 'my-app/tests/helpers';
import { module, test } from 'qunit';

module('Integration | Component | ui/form/field', function (hooks) {
  setupRenderingTest(hooks);

  test('The component handles the field layout', async function (assert) {
    await render(hbs`
      <UiFormField>
        <:label as |l|>
          <label
            data-test-label
            for={{l.inputId}}
          >
            Name
          </label>
        </:label>

        <:field as |f|>
          <input
            data-test-field="Name"
            id={{f.inputId}}
            type="text"
          />
        </:field>
      </UiFormField>
    `);

    assert.dom('[data-test-label]').hasText('Name', 'We see the label.');

    assert.dom('[data-test-field="Name"]').hasValue('', 'We see the field.');

    assert
      .dom('[data-test-feedback]')
      .doesNotExist('We should not see an error message.');

    await a11yAudit();

    assert.ok(true, 'We passed the accessibility audit.');
  });

  test('We can pass @errorMessage to show an error message', async function (assert) {
    await render(
    // ^^ meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js keyword.control.flow.await.js
      <template>
      // ^^^^^^^ source.template-tag meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js punctuation.definition.tag.begin.js 
        <UiFormField
          @errorMessage="Please provide a value."
        >
        // ^ meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js source.template-tag.content
          <:label as |l|>
          // ^^^^ meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js source.template-tag.content meta.tag.other.html entity.name.tag.other.html
            <label
              data-test-label
              for={{l.inputId}}
            >
            // ^ meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js source.template-tag.content
              Name
              // ^^ meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js source.template-tag.content
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
      // ^^^^^^^ source.template-tag meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js meta.function.js meta.block.js meta.function-call.arguments.js meta.group.js punctuation.definition.tag.end.js 
    );

    assert
      .dom('[data-test-feedback]')
      .hasText('Please provide a value.', 'We see the error message.');
  });
});
