#!/bin/sh


# Install ruby using rbenv
# 获取指定的ruby版本号
ruby_version=`cat .ruby-version`

# 若当前没有安装指定版本的ruby，则先进行安装
if [[ ! -d "$HOME/.rbenv/versions/$ruby_version" ]]; then
   # 在 rbenv 下安装特定版本的 Ruby 开发环境
  rbenv install $ruby_version;
  rbenv init
fi

# Install bunlder
gem install bundler

# Install all gems（Gemfile文件中的依赖包）
bundle install

# Install all pods（podfile文件中的依赖库）
bundle exec pod install
