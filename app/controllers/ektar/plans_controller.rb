# typed: true
# frozen_string_literal: true

module Ektar
  class PlansController < Ektar::ResourcefulController
    extend T::Sig

    resourceful(list_attributes: %i[name price active updated_at],
                form_attributes: {name: :input,
                                  description: :rich_text,
                                  active: :checkbox,
                                  trial: :input,
                                  free: :checkbox,
                                  price_cents: :number,
                                  price_currency: :currency,},
                show_attributes: %i[name description free trial active price])

    def index
      index! do |resource|
        authorize resource
        resource
      end
    end

    def show
      show! do |resource|
        authorize resource
      end
    end

    def new
      new! do |resource|
        authorize resource
      end
    end

    def crate
      create! do |resource|
        authorize resource
      end
    end

    def edit
      edit! do |resource|
        authorize resource
      end
    end

    def update
      update! do |resource|
        authorize resource
      end
    end

    sig { void }
    def destroy
      object = Ektar::Plan.find_by!(find_by_param => params[:id])

      authorize object

      object.active = false

      object.save
      set_flash(errors: object.errors, klass: resource_class.model_name.element, active: action_name)

      redirect_to collection_path
    end

    sig { params(resource: T.untyped).returns(T::Boolean) }
    def allow_delete?(resource)
      resource.active
    end

    private

    sig { returns(ActionController::Parameters) }
    def secure_params
      params.require_typed(:plan, TA[ActionController::Parameters].new).permit(T.must(form_attributes).keys)
    end
  end
end
