require File.expand_path("app", File.dirname(__FILE__))

run Cuba

Sequel::DATABASES.each(&:disconnect)
