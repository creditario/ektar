# frozen_string_literal: true

require "active_support/concern"

module Ektar
  module Destroy
    extend ActiveSupport::Concern

    included do
      def destroy(options = {}, &block)
        object = get_resource || find_resource

        object.destroy
        options[:location] = collection_path

        redirect_with(object, options, &block)
      end
      alias_method :destroy!, :destroy
    end
  end
end
