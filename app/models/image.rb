class Image < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
  has_attached_file :image_content,
                    styles: lambda { |a| a.instance.check_file_type}
  validates_attachment_content_type :image_content, :content_type => [/\Aimage\/.*\Z/]

  def check_file_type
    if is_image_type?
      {:small => "x128>", :medium => "x256>", :large => "x512>"}
    elsif is_video_type?
      {}
    else
      {}
    end
  end
  def is_image_type?
    image_content_content_type =~ %r(image)
  end

  def is_video_type?
    image_content_content_type =~ %r(video)
  end
end