module.exports = {
  env: {
    node: true,
    es2021: true,
    jest: true,
  },
  extends: [
    "airbnb-typescript",
    "airbnb/hooks",
    "eslint:recommended",
    "plugin:react/recommended",
    "plugin:@typescript-eslint/eslint-recommended",
    "plugin:@typescript-eslint/recommended",
    "plugin:@typescript-eslint/recommended-requiring-type-checking",
    "plugin:jest/recommended",
    "plugin:jest/style",
    "prettier",
    "prettier/@typescript-eslint",
    "prettier/react",
    "plugin:prettier/recommended",
  ],
  parserOptions: {
    project: "tsconfig.eslint.json",
    tsconfigRootDir: ".",
  },
  rules: {
    "react/prop-types": "off",
    "react/style-prop-object": [
      2,
      {
        allow: ["StatusBar"],
      },
    ],
  },
};
