class VoteLinks < ActiveRecord::Migration
  def change
    create_table :votes do |v|
      v.integer	:user_id
      v.integer	:link_id
      v.boolean	:up

      v.timestamp
    end
  end
end
