class CreateJoinTableEventSkill < ActiveRecord::Migration
  def change
    create_join_table :events, :skills do |t|
      t.index [:event_id, :skill_id]
      # t.index [:skill_id, :event_id]
    end
  end
end
