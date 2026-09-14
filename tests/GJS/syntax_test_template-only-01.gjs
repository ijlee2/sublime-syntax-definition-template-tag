// SYNTAX TEST "Packages/User/Glimmer JS.sublime-syntax"
import styles from './hello.css';

<template>
// ^^^^^^^ punctuation.definition.tag.begin.js
  <div class={{styles.container}}>
// ^^^ source.gjs source.gjs.content meta.tag.block.any.html entity.name.tag.block.any.html
            // ^^^^^^^^^^^^^^^^ source.gjs source.gjs.content meta.tag.block.any.html meta.function.inline.other.handlebars variable.parameter.handlebars
    Hello {{@name}}!
  </div>
</template>
// ^^^^^^^^ punctuation.definition.tag.end.js
        // ^ source.gjs
