// SYNTAX TEST "Packages/User/Template Tag.sublime-syntax"
import styles from './hello.css';

<template>
// ^^^^^^^ punctuation.definition.tag.begin.js
  <div class={{styles.container}}>
// ^^^ source.template-tag source.template-tag.content text.html.handlebars meta.tag.block.any.html entity.name.tag.block.any.html
            // ^^^^^^^^^^^^^^^^ source.template-tag source.template-tag.content text.html.handlebars meta.tag.block.any.html meta.function.inline.other.handlebars variable.parameter.handlebars
    Hello {{@name}}!
  </div>
</template>
// ^^^^^^^^ punctuation.definition.tag.end.js
        // ^ source.template-tag
