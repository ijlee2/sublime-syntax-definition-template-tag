[![This project uses GitHub Actions for continuous integration.](https://github.com/ijlee2/sublime-syntax-definition-template-tag/actions/workflows/ci.yml/badge.svg)](https://github.com/ijlee2/sublime-syntax-definition-template-tag/actions/workflows/ci.yml)

# sublime-syntax-definition-template-tag

_Provides syntax highlighting for `<template>` tags for Sublime Text_

<div align="center">
  <img alt="The template tag and the code inside are highlighted in Sublime Text" src="https://github.com/user-attachments/assets/344c2206-e78b-4881-ac11-073c25c9c16f" />
</div>


## Installation

> [!NOTE]
>
> This package is currently [under review](https://github.com/wbond/package_control_channel/pull/9123). Once it is approved and merged, you can skip the steps in `1. Add repository`.


### 1. Add repository

1. Open Sublime Text.
1. Open Package Control by pressing <kbd>Cmd</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> (Mac) or <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> (Windows). Alternatively, in the menu bar, click on `Sublime Text` > `Settings` > `Package Control`.
1. Type `repo` in the search bar so that you can quickly find and select `Package Control: Add Repository`.
1. Type `https://raw.githubusercontent.com/ijlee2/sublime-syntax-definition-template-tag/main/repository.json`.
1. Continue with the steps in `2. Install via Package Control`.


### 2. Install via Package Control

Install the package via [Sublime Text Package Control](https://packagecontrol.io/). This will provide auto-updates.

1. Open Sublime Text.
1. Open Package Control by pressing <kbd>Cmd</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> (Mac) or <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> (Windows). Alternatively, in the menu bar, click on `Sublime Text` > `Settings` > `Package Control`.
1. Type `install` in the search bar so that you can quickly find and select `Package Control: Install Package`.
1. Search for `Template Tag`, then select to install.
1. Open any file with a `<template>` tag (e.g. components, routes, tests) to see syntax highlighting in action!

> [!NOTE]
>
> This package depends on another package called [Handlebars](https://github.com/daaain/Handlebars). Use the Package Control to install the latter, too.


## Contributing

See the [Contributing](CONTRIBUTING.md) guide for details.


## Credits

Thanks to [@daain](https://github.com/daaain/) for supporting Handlebars since 2012.


## License

This project is licensed under the [MIT License](LICENSE.md).
