class AddVisitingIdCol < ActiveRecord::Migration
  def change
    add_column :visits, :visiting_user, :integer
  end
end
