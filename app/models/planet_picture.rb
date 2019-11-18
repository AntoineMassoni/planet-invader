class PlanetPicture < ApplicationRecord
  belongs_to :planet
   mount_uploader :photo, PhotoUploader
end
