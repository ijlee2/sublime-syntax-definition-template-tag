// SYNTAX TEST "Packages/User/GTS.sublime-syntax"
import type { TOC } from '@ember/component/template-only';

import styles from './hello.css';

interface HelloSignature {
  Args: {
    name: string;
  }
}

<template>
// ^^^^^^^ punctuation.definition.tag.begin.js
  <div class={{styles.container}}>
// ^^^ source.template-tag.ts source.template-tag.ts.content text.html.handlebars meta.tag.block.any.html entity.name.tag.block.any.html 
    Hello {{@name}}!
  </div>
</template> satisfies TOC<HelloSignature>;
// ^^^^^^^^ punctuation.definition.tag.end.js
