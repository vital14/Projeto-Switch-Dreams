class BookTagsController < ApplicationController
  before_action :set_tag, only: %i[ show edit update destroy ]

  # GET /book_tags or /book_tags.json
  def index

    @book_tag = BookTag.all

  end

  # GET /book_tags/1 or /book_tags/1.json
  def show
  end

  # GET /books_tags/new
  def new
    @book_tag = BookTag.new
  end

  # GET /book_tags/1/edit
  def edit
  end

  # POST /book_tags or /book_tags.json
  def create
    @book_tag = BookTag.new(tag_params)

    respond_to do |format|
      if @book_tag.save
        format.html { redirect_to @book_tag, notice: "BookTags was successfully created." }
        format.json { render :show, status: :created, location: @book_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book_tag.update(tag_params)
        format.html { redirect_to @book_tag, notice: "BookTags was successfully updated." }
        format.json { render :show, status: :ok, location: @book_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book_tag.destroy
    respond_to do |format|
      format.html { redirect_to books_tags_url, notice: "BookTag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_tag
    @book_tag = BookTag.find(params[:id])
  end

  def tag_params
    params.require(:book_tag).permit(:book_id, :tag_id)
  end
end
