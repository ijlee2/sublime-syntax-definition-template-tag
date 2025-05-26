import baseConfiguration from '@ijlee2-frontend-configs/prettier';

export default {
  ...baseConfiguration,
  overrides: [
    ...baseConfiguration.overrides,
    {
      files: '*.sublime-syntax',
      options: {
        parser: 'yaml',
        printWidth: 80,
      },
    },
  ],
};
