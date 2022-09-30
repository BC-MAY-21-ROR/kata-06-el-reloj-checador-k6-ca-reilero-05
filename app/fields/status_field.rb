# frozen_string_literal: true

require 'administrate/field/base'

class StatusField < Administrate::Field::Base
  def to_s
    data ? 'Active' : 'Inactive'
  end
end
