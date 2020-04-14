# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/pagy/all/pagy.rbi
#
# pagy-3.7.4

class Pagy
  def count; end
  def from; end
  def initialize(vars); end
  def items; end
  def last; end
  def next; end
  def offset; end
  def page; end
  def pages; end
  def prev; end
  def self.root; end
  def sequels; end
  def series(size = nil); end
  def to; end
  def vars; end
end
module Pagy::Backend
  def pagy(collection, vars = nil); end
  def pagy_get_items(collection, pagy); end
  def pagy_get_vars(collection, vars); end
end
module Pagy::Helpers
  def pagy_get_params(params); end
  def pagy_url_for(page, pagy, url = nil); end
end
module Pagy::Frontend
  def pagy_bulma_combo_nav_js(pagy, id = nil); end
  def pagy_bulma_nav(pagy); end
  def pagy_bulma_nav_js(pagy, id = nil); end
  def pagy_id; end
  def pagy_info(pagy); end
  def pagy_json_tag(*args); end
  def pagy_link_proc(pagy, link_extra = nil); end
  def pagy_marked_link(link); end
  def pagy_nav(pagy); end
  def pagy_t(*args); end
  def pagy_t_with_i18n(*args); end
  def pagy_without_i18n(path, vars = nil); end
  include Pagy::Helpers
end
class Pagy::VariableError < ArgumentError
  def initialize(pagy); end
  def pagy; end
  def value; end
  def variable; end
end
class Pagy::OverflowError < Pagy::VariableError
end
