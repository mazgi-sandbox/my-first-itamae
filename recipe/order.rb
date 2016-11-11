Itamae.logger.info "#{__LINE__}:1st"

local_ruby_block '' do
  Itamae.logger.info "#{__LINE__}:Before block"
  block do
    Itamae.logger.info "#{__LINE__}:In block"
  end
  Itamae.logger.info "#{__LINE__}:After block"
end

Itamae.logger.info "#{__LINE__}:Last"
