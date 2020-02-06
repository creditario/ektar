# typed: strong
module Ektar
  module ApplicationHelper
    def model_name; end
  end

  class ApplicationController < ActionController::Base
    extend T::Sig
    include ApplicationHelper

    sig { params(klasses: T::Array[Class], with: Symbol).void }
    def rescue_from(*klasses, with:); end

    sig { returns(T.untyped) }
    def cookies; end
  end

  class UsersController < Ektar::ResourcefulController
    include ActionDispatch::Cookies::ChainedCookieJars
  end
end

