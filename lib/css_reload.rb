if RAILS_ENV == 'development'
  require 'css_reload/filter'

  class ActionController::Base
    after_filter CssReload::Filter
  end
end
