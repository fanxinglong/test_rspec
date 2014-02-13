source 'https://rubygems.org'

ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use sqlite3 as the database for Active Record
gem 'mysql2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development,:test do
  gem "rspec-rails", "~> 2.14.0" #封装 RSpec 的程序,还包含了一些专为 Rails 提供的功能
  gem "factory_girl_rails", "~> 4.2.1" #把 Rails 生成测试数据默认使用的固件换成更好用的预构件
end

group :test do
  gem "faker", "~> 1.1.2" #为预构件生成名字、Email 地址以及其他的示例数据
  gem "capybara", "~> 2.1.0" #集成功能测试工具，类似于cucumber
  gem "database_cleaner", "~> 1.0.1" #清理“测试数据库”,确保 RSpec 中的测试用例运行于一块净土之上
  gem "launchy", "~> 2.3.0" #这个 gem 的功能只有一个,但做的很好,如果需要,它会打开系统的默认浏览器,显示应用程序当前渲染的页面。调试测试时特别有用
  gem "selenium-webdriver", "~> 2.33.0" #结合 Capybara 测试基于 JavaScript 的交互操作
end
# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
