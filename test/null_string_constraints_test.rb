require_relative 'test_helper'

describe 'null_string parameter constraints' do
  subject { ActionController::Parameters.null_string }

  permits '', :as => nil
  permits 'undefined', :as => nil
  permits 'UNDEFINED', :as => nil
  permits nil

  rejects 'foo'
end
