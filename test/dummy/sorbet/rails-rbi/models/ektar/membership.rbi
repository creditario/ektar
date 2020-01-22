# This is an autogenerated file for dynamic methods in Ektar::Membership
# Please rerun rake rails_rbi:models[Ektar::Membership] to regenerate.

# typed: strong
module Ektar::Membership::EnumInstanceMethods
  extend T::Sig

  sig { returns(T::Boolean) }
  def admin?; end

  sig { void }
  def admin!; end

  sig { returns(T::Boolean) }
  def member?; end

  sig { void }
  def member!; end
end

module Ektar::Membership::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module Ektar::Membership::GeneratedAttributeMethods
  extend T::Sig

  sig { returns(T::Boolean) }
  def active; end

  sig { params(value: T::Boolean).void }
  def active=(value); end

  sig { returns(T::Boolean) }
  def active?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(DateTime, Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(Integer) }
  def ektar_organization_id; end

  sig { params(value: T.any(Integer, Float, ActiveSupport::Duration)).void }
  def ektar_organization_id=(value); end

  sig { returns(T::Boolean) }
  def ektar_organization_id?; end

  sig { returns(Integer) }
  def ektar_user_id; end

  sig { params(value: T.any(Integer, Float, ActiveSupport::Duration)).void }
  def ektar_user_id=(value); end

  sig { returns(T::Boolean) }
  def ektar_user_id?; end

  sig { returns(Integer) }
  def id; end

  sig { params(value: T.any(Integer, Float, ActiveSupport::Duration)).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(String) }
  def role; end

  sig { params(value: T.any(Integer, String, Symbol)).void }
  def role=(value); end

  sig { returns(T::Boolean) }
  def role?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(DateTime, Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end
end

module Ektar::Membership::GeneratedAssociationMethods
  extend T::Sig

  sig { returns(::Ektar::Organization) }
  def organization; end

  sig { params(value: ::Ektar::Organization).void }
  def organization=(value); end

  sig { returns(::Ektar::User) }
  def user; end

  sig { params(value: ::Ektar::User).void }
  def user=(value); end
end

module Ektar::Membership::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[Ektar::Membership]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[Ektar::Membership]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[Ektar::Membership]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(Ektar::Membership)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(Ektar::Membership) }
  def find_by_id!(id); end
end

class Ektar::Membership < Ektar::ApplicationRecord
  include Ektar::Membership::EnumInstanceMethods
  include Ektar::Membership::GeneratedAttributeMethods
  include Ektar::Membership::GeneratedAssociationMethods
  extend Ektar::Membership::CustomFinderMethods
  extend T::Sig
  extend T::Generic

  sig { returns(T::Hash[T.any(String, Symbol), String]) }
  def self.roles; end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.admin(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.member(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.not_admin(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.not_member(*args); end

  sig { returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.unscoped(&block); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.select(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.reselect(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.order(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.reorder(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.group(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.limit(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.offset(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.joins(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.left_joins(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.where(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.rewhere(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.preload(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.extract_associated(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.eager_load(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.includes(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.from(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.lock(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.readonly(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.or(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.having(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.create_with(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.distinct(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.references(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.none(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.unscope(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.merge(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.except(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Ektar::Membership::ActiveRecord_Relation) }
  def self.extending(*args, &block); end

  sig { params(args: T.untyped).returns(Ektar::Membership) }
  def self.find(*args); end

  sig { params(args: T.untyped).returns(T.nilable(Ektar::Membership)) }
  def self.find_by(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership) }
  def self.find_by!(*args); end

  sig { returns(T.nilable(Ektar::Membership)) }
  def self.first; end

  sig { returns(Ektar::Membership) }
  def self.first!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def self.second; end

  sig { returns(Ektar::Membership) }
  def self.second!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def self.third; end

  sig { returns(Ektar::Membership) }
  def self.third!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def self.third_to_last; end

  sig { returns(Ektar::Membership) }
  def self.third_to_last!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def self.second_to_last; end

  sig { returns(Ektar::Membership) }
  def self.second_to_last!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def self.last; end

  sig { returns(Ektar::Membership) }
  def self.last!; end

  sig { params(conditions: T.untyped).returns(T::Boolean) }
  def self.exists?(conditions = nil); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def self.any?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def self.many?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def self.none?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def self.one?(*args); end

  sig { params(attributes: T.untyped, block: T.untyped).returns(Ektar::Membership) }
  def self.create(attributes = nil, &block); end

  sig { params(attributes: T.untyped, block: T.untyped).returns(Ektar::Membership) }
  def self.create!(attributes = nil, &block); end

  sig { params(attributes: T.untyped, block: T.untyped).returns(Ektar::Membership) }
  def self.new(attributes = nil, &block); end
end

class Ektar::Membership::ActiveRecord_Relation < ActiveRecord::Relation
  include Ektar::Membership::ActiveRelation_WhereNot
  include Ektar::Membership::CustomFinderMethods
  include Enumerable
  extend T::Sig
  extend T::Generic
  Elem = type_member(fixed: Ektar::Membership)

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def admin(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def member(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def not_admin(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def not_member(*args); end

  sig { returns(Ektar::Membership::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Ektar::Membership::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Ektar::Membership::ActiveRecord_Relation) }
  def extending(*args, &block); end
end

class Ektar::Membership::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include Ektar::Membership::ActiveRelation_WhereNot
  include Ektar::Membership::CustomFinderMethods
  include Enumerable
  extend T::Sig
  extend T::Generic
  Elem = type_member(fixed: Ektar::Membership)

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def admin(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def member(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def not_admin(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def not_member(*args); end

  sig { returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig { params(args: T.untyped).returns(Ektar::Membership) }
  def find(*args); end

  sig { params(args: T.untyped).returns(T.nilable(Ektar::Membership)) }
  def find_by(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership) }
  def find_by!(*args); end

  sig { returns(T.nilable(Ektar::Membership)) }
  def first; end

  sig { returns(Ektar::Membership) }
  def first!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def second; end

  sig { returns(Ektar::Membership) }
  def second!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def third; end

  sig { returns(Ektar::Membership) }
  def third!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def third_to_last; end

  sig { returns(Ektar::Membership) }
  def third_to_last!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def second_to_last; end

  sig { returns(Ektar::Membership) }
  def second_to_last!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def last; end

  sig { returns(Ektar::Membership) }
  def last!; end

  sig { params(conditions: T.untyped).returns(T::Boolean) }
  def exists?(conditions = nil); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def any?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def many?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def none?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def one?(*args); end

  sig { override.params(block: T.proc.params(e: Ektar::Membership).void).returns(T::Array[Ektar::Membership]) }
  def each(&block); end

  sig { params(level: T.nilable(Integer)).returns(T::Array[Ektar::Membership]) }
  def flatten(level); end

  sig { returns(T::Array[Ektar::Membership]) }
  def to_a; end

  sig do
    type_parameters(:U).params(
        blk: T.proc.params(arg0: Elem).returns(T.type_parameter(:U)),
    )
    .returns(T::Array[T.type_parameter(:U)])
  end
  def map(&blk); end
end

class Ektar::Membership::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Ektar::Membership::CustomFinderMethods
  include Enumerable
  extend T::Sig
  extend T::Generic
  Elem = type_member(fixed: Ektar::Membership)

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def admin(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def member(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def not_admin(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def not_member(*args); end

  sig { returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Ektar::Membership::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig { params(args: T.untyped).returns(Ektar::Membership) }
  def find(*args); end

  sig { params(args: T.untyped).returns(T.nilable(Ektar::Membership)) }
  def find_by(*args); end

  sig { params(args: T.untyped).returns(Ektar::Membership) }
  def find_by!(*args); end

  sig { returns(T.nilable(Ektar::Membership)) }
  def first; end

  sig { returns(Ektar::Membership) }
  def first!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def second; end

  sig { returns(Ektar::Membership) }
  def second!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def third; end

  sig { returns(Ektar::Membership) }
  def third!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def third_to_last; end

  sig { returns(Ektar::Membership) }
  def third_to_last!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def second_to_last; end

  sig { returns(Ektar::Membership) }
  def second_to_last!; end

  sig { returns(T.nilable(Ektar::Membership)) }
  def last; end

  sig { returns(Ektar::Membership) }
  def last!; end

  sig { params(conditions: T.untyped).returns(T::Boolean) }
  def exists?(conditions = nil); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def any?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def many?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def none?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def one?(*args); end

  sig { override.params(block: T.proc.params(e: Ektar::Membership).void).returns(T::Array[Ektar::Membership]) }
  def each(&block); end

  sig { params(level: T.nilable(Integer)).returns(T::Array[Ektar::Membership]) }
  def flatten(level); end

  sig { returns(T::Array[Ektar::Membership]) }
  def to_a; end

  sig do
    type_parameters(:U).params(
        blk: T.proc.params(arg0: Elem).returns(T.type_parameter(:U)),
    )
    .returns(T::Array[T.type_parameter(:U)])
  end
  def map(&blk); end

  sig { params(records: T.any(Ektar::Membership, T::Array[Ektar::Membership])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(Ektar::Membership, T::Array[Ektar::Membership])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(Ektar::Membership, T::Array[Ektar::Membership])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(Ektar::Membership, T::Array[Ektar::Membership])).returns(T.self_type) }
  def concat(*records); end
end