# Liquibase Checks Create Action

⚠️ **VERSION SUPPORT NOTICE**: This action supports Liquibase versions up to 4.x. For Liquibase 5.0+ features, please migrate to [`liquibase/setup-liquibase`](https://github.com/liquibase/setup-liquibase).

## Migration Guide

### Current Approach (Supports Liquibase 4.x)
```yaml
- uses: liquibase-github-actions/checks-create@v4.33.0
  with:
    # your parameters here
```

### Recommended for Liquibase 5.0+ Features
```yaml
- uses: liquibase/setup-liquibase@v1
  with:
    version: '5.0.0'  # Supports latest features
    edition: 'oss'
- run: liquibase checks-create # add your parameters as CLI flags
```

---

Official GitHub Action to run Liquibase Checks Create in your GitHub Action Workflow. For more information on how checks create works visit the [Official Liquibase Documentation](https://docs.liquibase.com/commands/home.html).
## Checks Create
The create subcommand allows you to create a new YAML checks package file.
## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: liquibase-github-actions/checks-create@v4.33.0
  with:
    # One or more comma-separated relative path(s) to the checks-settings files (or to a directory of files) to be bundled into the checks-package. If the value is a directory, all files will be added to the "checks-package-name" object, but not recursively.
    # string
    # Required
    packageContents: ""

    # The literal name of the checks-package object to be created inside the checks-package yaml file
    # string
    # Required
    packageName: ""

    # Relative or fully qualified path and filename of the checks-package file to be created
    # string
    # Optional
    packageFile: ""

```

### Secrets
It is a good practice to protect your database credentials with [GitHub Secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets)

## Optional Liquibase Global Inputs
The liquibase checks create action accepts all valid liquibase global options as optional parameters. A full list is available in the official [Liquibase Documentation](https://docs.liquibase.com/parameters/command-parameters.html).

### Example
```yaml
steps:
  - uses: actions/checkout@v3
  - uses: liquibase-github-actions/checks-create@v4.33.0
    with:
      packageContents: ""
      packageName: ""
      headless: true
      licenseKey: ${{ secrets.LIQUIBASE_LICENSE_KEY }}
      logLevel: INFO
```

## Feedback and Issues
This action is automatically generated. Please submit all feedback and issues with the [generator repository](https://github.com/liquibase/github-action-generator/issues).
