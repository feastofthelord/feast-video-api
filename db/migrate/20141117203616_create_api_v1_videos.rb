class CreateApiV1Videos < ActiveRecord::Migration
  def change
    create_table :api_v1_videos do |t|
      t.string :title
      t.string :description
      t.string :series
      t.string :thumbnail
      t.string :speaker
      t.string :service

      t.timestamps
    end
  end
end
