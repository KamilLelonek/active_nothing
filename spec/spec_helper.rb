$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'active_nothing'

Dir['./spec/support/**/*.rb'].each &method(:require)
