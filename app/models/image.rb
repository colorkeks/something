class Image < ActiveRecord::Base
  has_and_belongs_to_many :characters
  has_many :character_images
  has_many :characters, through: :character_images
  belongs_to :character_template
  has_attached_file :image,
                    styles: lambda { |a| a.instance.check_file_type}
  validates_attachment_content_type :image, :content_type => [/\Aimage\/.*\Z/]

  def check_file_type
    if is_image_type?
      {:small => "x100>", :medium => "x250>", :large => "x600>"}
    elsif is_video_type?
      {}
    else
      {}
    end
  end
  def is_image_type?
    file_content_content_type =~ %r(image)
  end

  def is_video_type?
    file_content_content_type =~ %r(video)
  end
end