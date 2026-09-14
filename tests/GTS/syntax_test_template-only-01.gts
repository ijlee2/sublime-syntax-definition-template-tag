// SYNTAX TEST "Packages/User/Glimmer TS.sublime-syntax"
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
// ^^^ source.gts source.gts.content meta.tag.block.any.html entity.name.tag.block.any.html
            // ^^^^^^^^^^^^^^^^ source.gts source.gts.content meta.tag.block.any.html meta.function.inline.other.handlebars variable.parameter.handlebars
    Hello {{@name}}!
  </div>
</template> satisfies TOC<HelloSignature>;
// ^^^^^^^^ punctuation.definition.tag.end.js
        // ^ source.gts
         // ^^^^^^^^^ source.gts variable.other.readwrite.js
                   // ^^^ source.gts variable.other.constant.js
