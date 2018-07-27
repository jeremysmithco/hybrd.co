# Fix for 'comparison of String with :current_path failed' error
Tilt::SYMBOL_ARRAY_SORTABLE = false

activate :directory_indexes
activate :sprockets

set :relative_links, false

configure :development do
  activate :livereload
end

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :layout, 'layouts/application'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end
