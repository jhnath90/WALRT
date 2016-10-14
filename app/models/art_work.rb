class ArtWork < ActiveRecord::Base
  has_attached_file :image, styles: { large: "1024x768!", medium: "800x600!", thumb: "100x100!" }, default_url: "/images/:style/missing.png"
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  has_many :votes, dependent: :destroy
end
