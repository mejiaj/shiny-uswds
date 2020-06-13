# shiny-uswds
USWDS implementation in Shiny

## Requirements
Use [rstudio](https://rstudio.com/) IDE.

### R
- shiny
- sass

### Other
- USWDS via npm

## Instructions
Copy over USWDS using:

```bash
rsync -r node_modules/uswds/dist/. .
```

We'll use this to update USWDS in the future so it only updates files that
have changed. Be aware that this could wipe out customizations if you're not careful.

This approach uses the `sass()` package in R. This works for the most part, but
doesn't seem to have livereloading or re-compile on SCSS changes. This means if
you're making a lot of changes you'll have to close and re-open your app to view
the newly compiled CSS.

