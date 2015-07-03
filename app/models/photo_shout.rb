class PhotoShout < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  validates :image, presence: true
end
