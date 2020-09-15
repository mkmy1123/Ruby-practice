# frozen_string_literal: true

require_relative './deep_freezable'

# Bank class
class Bank
  extend DeepFreezable

  CURRENCIES = deep_freeze({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' })
end
