class Board < ActiveRecord::Base
    has_many :relies
    mount_uploader :image, ImgpostUploader
    
end
