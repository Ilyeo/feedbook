module Feedbook
  class Engine < ::Rails::Engine
    isolate_namespace Feedbook

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
