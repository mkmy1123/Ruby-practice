# frozen_string_literal: true

# deep_freeze method
module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      array_or_hash.each(&:freeze)
      array_or_hash.freeze
    when Hash
      array_or_hash.each { |key, value| key.freeze && value.freeze }
      array_or_hash.freeze
    end
  end
end
