class Pin < ApplicationRecord
	belongs_to :user
	has_attached_file :image, styles: { medium: "300 x 300", thumb: "100 x 100"}
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

	validates :description, presence: true
	validates :image, presence: true
end
