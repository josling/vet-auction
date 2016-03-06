class Item < ActiveRecord::Base


 # has_attached_file :image, styles: {
  #  thumb: '100x100>',
  #  square: '200x200#',
   # medium: '300x300>'
  #}, :bucket => ENV['auctionimgs']


 has_attached_file :image,
                    :storage => :s3,
                    :styles => { :medium => "300x300>", :large => "600x600", :thumb => "100x100>" }


  # Validate the attached image is image/jpg, image/png, etc
  #validates_attachment_content_type :image,  :content_type => /\Aimage/
  validates_attachment_content_type :image,  :content_type => ['image/jpeg', 'image/png']

 # validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]



end
