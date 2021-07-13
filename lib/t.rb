# frozen_string_literal: true

module T
  def self.let(value, type, checked: true)
    value
  end

  def self.must(arg)
    arg
  end

  def self.nilable(type)
  end

  def self.unsafe(value)
    value
  end
end
