echo "Installing rbenv for managing Ruby versions ..."
  git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
  # no need to export paths as those are in my dotfiles
  exec $SHELL

echo "Installing ruby-build as an rbenv plugin ..."
  mkdir -p ~/.rbenv/plugins
  cd ~/.rbenv/plugins
  git clone git://github.com/sstephenson/ruby-build.git
  cd ~/

echo "Installing Ruby 1.9.3-p286 ..."
  rbenv install 1.9.3-p286
  rbenv rehash
  rbenv global 1.9.3-p286
  # chown -R ~/.rbenv

echo "Updating RubyGems and default gems for Ruby" `rbenv global` "..."
  gem update --system
  gem update
  rbenv rehash

echo "Installing Bundler ..."
  gem install bundler
  rbenv rehash

echo "Installing Rake ..."
  gem install rake
  rbenv rehash

echo "Installing Foreman ..."
  gem install foreman
  rbenv rehash

echo "Installing Rails ..."
  gem install rails
  rbenv rehash

echo "Installing Sinatra ..."
  gem install sinatra
  rbenv rehash

echo "Installing Serious ..."
  gem install serious
  rbenv rehash

echo "Installing Awesome Print gem for pretty print debugging ..."
  gem install awesome_print
  rbenv rehash
