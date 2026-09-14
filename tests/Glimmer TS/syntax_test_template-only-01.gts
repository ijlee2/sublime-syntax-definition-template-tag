// SYNTAX TEST "Packages/User/Template Tag.sublime-syntax"
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
// ^^^ source.template-tag source.template-tag.content meta.tag.block.any.html entity.name.tag.block.any.html
            // ^^^^^^^^^^^^^^^^ source.template-tag source.template-tag.content meta.tag.block.any.html meta.function.inline.other.handlebars variable.parameter.handlebars
    Hello {{@name}}!
  </div>
</template> satisfies TOC<HelloSignature>;
// ^^^^^^^^ punctuation.definition.tag.end.js
        // ^ source.template-tag
         // ^^^^^^^^^ source.template-tag variable.other.readwrite.js
                   // ^^^ source.template-tag variable.other.constant.js
