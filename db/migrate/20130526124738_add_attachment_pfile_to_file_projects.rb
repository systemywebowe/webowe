class AddAttachmentPfileToFileProjects < ActiveRecord::Migration
  def self.up
    change_table :file_projects do |t|
      t.attachment :pfile
    end
  end

  def self.down
    drop_attached_file :file_projects, :pfile
  end
end
