require 'devise'
require 'cequel/record/orm_adapter'
require 'cequel/devise/railtie' if defined? Rails
Cequel::Record::ClassMethods.module_eval { include Devise::Models }
