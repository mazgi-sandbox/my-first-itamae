local_ruby_block '' do
  only_if "test -d /tmp"
  block do
    Itamae.logger.info '/tmp is a directory.'
  end
end

local_ruby_block '' do
  not_if "test -d /tmp"
  block do
    Itamae.logger.info '/tmp is not a directory.'
  end
end

local_ruby_block '' do
  only_if "test -f /tmp/not_exist"
  block do
    Itamae.logger.info '/tmp/not_exist is a file.'
  end
end

local_ruby_block '' do
  not_if "test -f /tmp/not_exist"
  block do
    Itamae.logger.info '/tmp/not_exist is not a file.'
  end
end
