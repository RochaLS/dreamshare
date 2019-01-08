class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  # Using clodninary plugin https://cloudinary.com/documentation/rails_carrierwave
end
