Compass Pack
============

A Sass starter project template with Compass config.rb

This is mainly just a place for me to keep and build upon the folders and files I usually need to create when starting a new project.

Heavily inspired by [css-burrito](https://github.com/jasonreece/css-burrito), but not as strict.

## The Pack

```
css
fonts
img
js
├───lib
└───scripts.js
scss
├───core
│   ├───_base.scss
│   ├───_mixins.scss
│   ├───_settings.scss
│   ├───_typography.scss
│   └───_utilities.scss
├───layout
│   └───_grid.scss
├───lib
├───modules
│   ├───_footer.scss
│   ├───_header.scss
│   └───_nav.scss
├───pages
│   └───index.scss
├───config.rb
└───styles.scss
```

### Layout & Skin

This template is still in flux. I'm still deciding whether to split the `modules` into `layout` and `skin` folders. It would mean each component would consist of two separate files, which soulds like a pain to deal with during development, but I hear it's a grand idea to split the layout from the rest of the presentation. For now, I create layout and skin subsections within each style.

### Pages

It's likely that you'll have at least one page that is too unique to include its styles on every page. Usually it's the index page, which I've already included. Just remember that on each unique page you need to link the separate CSS files that are generated.

### A Note on Print Styles

Some project templates out there include a screen and print file as the main outputs. I've decided to stick with one main styles file and include `@media print` declarations where necessary throughout.

## To Do

- Provide more explanation and reasoning behind folder/file structure
