local_ruby_block '' do
  block do
    puts 'foo'
  end
end

local_ruby_block '' do
  block do
    p 'bar'
  end
end

# ref: https://github.com/itamae-kitchen/itamae/blob/0d548655aa9528bd1335ecb3b4a6880d7d6ad4ea/spec/integration/recipes/default.rb#L274-L278
local_ruby_block 'call logger' do
  block do
    Itamae.logger.info "baz:info"
    Itamae.logger.warn "baz:warn"
    Itamae.logger.error "baz:error"
    Itamae.logger.debug "baz:debug"
  end
end
