class ImagesController < ApplicationController
  load_and_authorize_resource
  skip_load_resource :only => :create
  delegate :can?, :cannot?, :to => :ability
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  def edit

  end

  def update

  end


  def create
    Image.all.update_all(applied: false)
    @image = Image.create(content_params)
    respond_to do |format|
        if @image.save
          format.html { redirect_to current_user, notice: 'Контент сохранен' }
        else
          format.json { render json: { error: @image.errors.full_messages.join(',')}, :status => 400 }
        end
      end
  end

  def show
  end

  def destroy
    @image.file_content = nil
    respond_to do |format|
      if @image.destroy
        format.html { redirect_to current_user, notice: 'Картинка удалена' }
      else
        format.json { render json: { error: @image.errors.full_messages.join(',')}, :status => 400 }
      end
    end
  end

  private

  def set_content
    @image = Image.find(params[:id])
  end

  def content_params
    params.require(:image).permit(:image, :character_id, :character_template_id)
  end

end