class Image < ApplicationRecord
    mount_uploader :picture, PictureUploader
    has_many :images
end
