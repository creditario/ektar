# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/actioncable/all/actioncable.rbi
#
# actioncable-6.1.0

module ActionCable
  def self.gem_version; end
  def self.server; end
  def self.version; end
  def server; end
  extend ActiveSupport::Autoload
end
module ActionCable::VERSION
end
module ActionCable::Helpers
end
module ActionCable::Helpers::ActionCableHelper
  def action_cable_meta_tag; end
end
class ActionCable::Engine < Rails::Engine
end
