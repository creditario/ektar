# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/bcrypt/all/bcrypt.rbi
#
# bcrypt-3.1.13
class BCrypt::Engine
  def self.__bc_crypt(arg0, arg1); end
  def self.__bc_salt(arg0, arg1, arg2); end
  def self.autodetect_cost(salt); end
  def self.calibrate(upper_time_limit_in_ms); end
  def self.cost; end
  def self.cost=(cost); end
  def self.generate_salt(cost = nil); end
  def self.hash_secret(secret, salt, _ = nil); end
  def self.valid_salt?(salt); end
  def self.valid_secret?(secret); end
end
module BCrypt
end
class BCrypt::Error < StandardError
end
module BCrypt::Errors
end
class BCrypt::Errors::InvalidSalt < BCrypt::Error
end
class BCrypt::Errors::InvalidHash < BCrypt::Error
end
class BCrypt::Errors::InvalidCost < BCrypt::Error
end
class BCrypt::Errors::InvalidSecret < BCrypt::Error
end
class BCrypt::Password < String
  def ==(secret); end
  def checksum; end
  def cost; end
  def initialize(raw_hash); end
  def is_password?(secret); end
  def salt; end
  def self.create(secret, options = nil); end
  def self.valid_hash?(h); end
  def split_hash(h); end
  def valid_hash?(h); end
  def version; end
end
module Ektar
end
module Ektar::User::GeneratedAttributeMethods
end
class Ektar::User < Ektar::ApplicationRecord
  def after_add_for_memberships; end
  def after_add_for_memberships=(val); end
  def after_add_for_memberships?; end
  def after_add_for_organizations; end
  def after_add_for_organizations=(val); end
  def after_add_for_organizations?; end
  def after_add_for_used_passwords; end
  def after_add_for_used_passwords=(val); end
  def after_add_for_used_passwords?; end
  def after_remove_for_memberships; end
  def after_remove_for_memberships=(val); end
  def after_remove_for_memberships?; end
  def after_remove_for_organizations; end
  def after_remove_for_organizations=(val); end
  def after_remove_for_organizations?; end
  def after_remove_for_used_passwords; end
  def after_remove_for_used_passwords=(val); end
  def after_remove_for_used_passwords?; end
  def autosave_associated_records_for_memberships(*args); end
  def autosave_associated_records_for_organizations(*args); end
  def autosave_associated_records_for_used_passwords(*args); end
  def before_add_for_memberships; end
  def before_add_for_memberships=(val); end
  def before_add_for_memberships?; end
  def before_add_for_organizations; end
  def before_add_for_organizations=(val); end
  def before_add_for_organizations?; end
  def before_add_for_used_passwords; end
  def before_add_for_used_passwords=(val); end
  def before_add_for_used_passwords?; end
  def before_remove_for_memberships; end
  def before_remove_for_memberships=(val); end
  def before_remove_for_memberships?; end
  def before_remove_for_organizations; end
  def before_remove_for_organizations=(val); end
  def before_remove_for_organizations?; end
  def before_remove_for_used_passwords; end
  def before_remove_for_used_passwords=(val); end
  def before_remove_for_used_passwords?; end
  def password_confirmation; end
  def self.__callbacks; end
  def self._reflections; end
  def self._validators; end
  def self.after_add_for_memberships; end
  def self.after_add_for_memberships=(val); end
  def self.after_add_for_memberships?; end
  def self.after_add_for_organizations; end
  def self.after_add_for_organizations=(val); end
  def self.after_add_for_organizations?; end
  def self.after_add_for_used_passwords; end
  def self.after_add_for_used_passwords=(val); end
  def self.after_add_for_used_passwords?; end
  def self.after_remove_for_memberships; end
  def self.after_remove_for_memberships=(val); end
  def self.after_remove_for_memberships?; end
  def self.after_remove_for_organizations; end
  def self.after_remove_for_organizations=(val); end
  def self.after_remove_for_organizations?; end
  def self.after_remove_for_used_passwords; end
  def self.after_remove_for_used_passwords=(val); end
  def self.after_remove_for_used_passwords?; end
  def self.attribute_type_decorations; end
  def self.before_add_for_memberships; end
  def self.before_add_for_memberships=(val); end
  def self.before_add_for_memberships?; end
  def self.before_add_for_organizations; end
  def self.before_add_for_organizations=(val); end
  def self.before_add_for_organizations?; end
  def self.before_add_for_used_passwords; end
  def self.before_add_for_used_passwords=(val); end
  def self.before_add_for_used_passwords?; end
  def self.before_remove_for_memberships; end
  def self.before_remove_for_memberships=(val); end
  def self.before_remove_for_memberships?; end
  def self.before_remove_for_organizations; end
  def self.before_remove_for_organizations=(val); end
  def self.before_remove_for_organizations?; end
  def self.before_remove_for_used_passwords; end
  def self.before_remove_for_used_passwords=(val); end
  def self.before_remove_for_used_passwords?; end
  def self.defined_enums; end
  def self.nested_attributes_options; end
  def validate_associated_records_for_memberships(*args); end
  def validate_associated_records_for_organizations(*args); end
  def validate_associated_records_for_used_passwords(*args); end
  extend T::Sig
  include ActiveModel::Validations
  include Anonymous_ActiveModel_SecurePassword_InstanceMethodsOnActivation_25
  include Ektar::User::GeneratedAssociationMethods
  include Ektar::User::GeneratedAttributeMethods
end
module Ektar::User::GeneratedAssociationMethods
  def membership_ids; end
  def membership_ids=(ids); end
  def memberships; end
  def memberships=(value); end
  def memberships_attributes=(attributes); end
  def organization_ids; end
  def organization_ids=(ids); end
  def organizations; end
  def organizations=(value); end
  def used_password_ids; end
  def used_password_ids=(ids); end
  def used_passwords; end
  def used_passwords=(value); end
end
class Ektar::User::ActiveRecord_Relation < ActiveRecord::Relation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include Ektar::User::GeneratedRelationMethods
end
module Ektar::User::GeneratedRelationMethods
end
class Ektar::User::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include Ektar::User::GeneratedRelationMethods
end
class Ektar::User::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  extend ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods
  include ActiveRecord::Delegation::ClassSpecificRelation
  include Ektar::User::GeneratedRelationMethods
end
module Anonymous_ActiveModel_SecurePassword_InstanceMethodsOnActivation_25
  def authenticate(unencrypted_password); end
  def authenticate_password(unencrypted_password); end
  def password; end
  def password=(unencrypted_password); end
  def password_confirmation=(unencrypted_password); end
end
class ActiveRecord::Scoping::ScopeRegistry
  def self.set_value_for(*args, &block); end
end
