# This is "Compass" pack, after all
require "compass"

# I don't like to bother with compass vendor prefix helpers, so I use autoprefixer
# https://github.com/postcss/autoprefixer#compass
require "autoprefixer-rails"
on_stylesheet_saved do |file|
  css = File.read(file)
  map = file + '.map'
  if File.exists? map
    result = AutoprefixerRails.process(css,
      from: file,
      to:   file,
      map:  { prev: File.read(map), inline: false })
    File.open(file, 'w') { |io| io << result.css }
    File.open(map,  'w') { |io| io << result.map }
  else
    File.open(file, 'w') { |io| io << AutoprefixerRails.process(css) }
  end
end

preferred_syntax = :scss

http_path = '/'
css_dir = 'css'
sass_dir = 'scss'
images_dir = 'img'
javascripts_dir = 'js'
fonts_dir = 'fonts'

relative_assets = true
line_comments = true

# Switch this to :compressed when you're ready to go live
output_style = :expanded #:compressed
