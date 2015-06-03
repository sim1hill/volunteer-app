class CreateJoinTableTopicUser < ActiveRecord::Migration
  def change
    create_join_table :topics, :users do |t|
      t.index [:topic_id, :user_id]
      # t.index [:user_id, :topic_id]
    end
  end
end
