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
├───libs
└───scripts.js
scss
├───core
│   ├───_base.scss
│   ├───_mixins.scss
│   ├───_settings.scss
│   ├───_typography.scss
│   └───_utilities.scss
├───layout
│   ├───_general.scss
│   └───_grid.scss
├───libs
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

I have decided not to split the `modules` into `layout` and `skin` folders like other similar SASS templates. It would mean each component would consist of two separate files, which is a pain to deal with switching between during development. It is a nice idea to split the layout from the rest of the presentation, in theory... I like to keep layout and skin subsections separate within each style, like so:

```css
.foo {
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    
    color: black;
    background-color: white;
    border: 4px solid grey;
    box-shadow: 5px 5px 10px rgba(0,0,0,0.5);
}
```

### Pages

It's likely that you'll have at least one page that is too unique to include its styles on every page. Usually it's the index page, which I've already included. Just remember that on each unique page you need to link the separate CSS files that are generated in the `/css/pages/` folder.

### A Note on Print Styles

Some project templates out there include a screen and print file as the main outputs. I've decided to stick with one main styles file and include `@media print` declarations where necessary throughout.
