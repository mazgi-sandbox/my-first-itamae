# my-first-itamae

ref: http://gihyo.jp/admin/serial/01/itamae

## Outer Vagrant Box

### Install Itamae w/ bundler

```
$ gem install --no-document bundler
$ bundle install --path=vendor/bundle
```

### Execute Itamae w/ bundler

```
$ vagrant ssh-config > ssh.config;: ignored
$ bundle exec itamae ssh --ssh-config=ssh.config --host default recipe/dstat.rb
```

## Inner Vagrant Box

```
$ sudo itamae local recipe/dstat.rb
```
