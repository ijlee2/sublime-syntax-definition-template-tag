// SYNTAX TEST "Packages/User/Template Tag.sublime-syntax"
import styles from './hello.css';

<template>
// ^^^^^^^ punctuation.definition.tag.begin.js
  <div class={{styles.container}}>
    Hello {{@name}}!
  </div>
</template>
// ^^^^^^^^ punctuation.definition.tag.end.js
