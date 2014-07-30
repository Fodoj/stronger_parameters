require 'stronger_parameters/constraints'

module StrongerParameters
  class NullStringConstraint < Constraint
    NULL_VALUES = ['', 'undefined'].freeze

    def value(v)
      if v.nil?
        return nil
      elsif v.is_a?(String) && NULL_VALUES.include?(v.downcase)
        return nil
      end

      raise StrongerParameters::InvalidParameter.new(v, "it is invalid")
    end
  end
end
