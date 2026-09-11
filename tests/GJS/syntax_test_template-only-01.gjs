// SYNTAX TEST "Packages/User/Template Tag.sublime-syntax"
import styles from './hello.css';

<template>
// ^^^^^^^ punctuation.definition.tag.begin.js
  <div class={{styles.container}}>
// ^^^ source.template-tag source.template-tag.content text.html.handlebars meta.tag.block.any.html entity.name.tag.block.any.html 
    Hello {{@name}}!
  </div>
</template>
// ^^^^^^^^ punctuation.definition.tag.end.js
