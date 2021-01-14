# frozen_string_literal: true

class AddStatusToEnrollments < ActiveRecord::Migration[6.1]
  def change
    add_column :enrollments, :status, :integer
  end
end
