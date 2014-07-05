# Standard Middleman template
class Middleman::Templates::Standard < Middleman::Templates::Base
  class_option 'css_dir',
               default: 'stylesheets',
               desc: 'The path to the css files'
  class_option 'js_dir',
               default: 'javascripts',
               desc: 'The path to the javascript files'
  class_option 'images_dir',
               default: 'images',
               desc: 'The path to the image files'
  class_option 'fonts_dir',
               default: 'fonts',
               desc: 'The path to the font files'
  class_option 'data_dir',
               default: 'data',
               desc: 'The path to the local data files'
  class_option 'partials_dir',
               default: 'partials',
               desc: 'The path to the HTML partials'

  # Template files are relative to this file
  # @return [String]
  def self.source_root
    File.dirname(__FILE__)
  end

  # Actually output the files
  # @return [void]
  def build_scaffold!
    template 'shared/config.tt', File.join(location, 'config.rb')
    copy_file 'standard/source/index.html.erb', File.join(location, 'source/index.html.erb')
    copy_file 'standard/source/layouts/layout.erb', File.join(location, 'source/layouts/layout.erb')
    empty_directory File.join(location, 'source', options[:css_dir])
    copy_file 'standard/source/stylesheets/styles.scss', File.join(location, 'source', options[:css_dir], 'styles.scss')
    copy_file 'standard/source/stylesheets/_reset.scss', File.join(location, 'source', options[:css_dir], '_reset.scss')
    copy_file 'standard/source/stylesheets/_font-face.scss', File.join(location, 'source', options[:css_dir], '_font-face.scss')
    copy_file 'standard/source/stylesheets/_variables.scss', File.join(location, 'source', options[:css_dir], '_variables.scss')
    copy_file 'standard/source/stylesheets/_mixins.scss', File.join(location, 'source', options[:css_dir], '_mixins.scss')
    empty_directory File.join(location, 'source', options[:js_dir])
    copy_file 'standard/source/javascripts/scripts.js', File.join(location, 'source', options[:js_dir], 'scripts.js')
    copy_file 'standard/source/javascripts/prefixfree.min.js', File.join(location, 'source', options[:js_dir], 'prefixfree.min.js')
    empty_directory File.join(location, 'source', options[:images_dir])
    empty_directory File.join(location, 'source', options[:fonts_dir])
    empty_directory File.join(location, 'source', options[:data_dir])
    empty_directory File.join(location, 'source', options[:partials_dir])
  end
end

# Register this template
Middleman::Templates.register(:standard, Middleman::Templates::Standard)
