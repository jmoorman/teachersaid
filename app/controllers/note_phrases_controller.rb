class NotePhrasesController < ApplicationController
  # GET /note_phrases
  # GET /note_phrases.json
  def index
    @note_phrases = NotePhrase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @note_phrases }
    end
  end

  # GET /note_phrases/1
  # GET /note_phrases/1.json
  def show
    @note_phrase = NotePhrase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @note_phrase }
    end
  end

  # GET /note_phrases/new
  # GET /note_phrases/new.json
  def new
    @note_phrase = NotePhrase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @note_phrase }
    end
  end

  # GET /note_phrases/1/edit
  def edit
    @note_phrase = NotePhrase.find(params[:id])
  end

  # POST /note_phrases
  # POST /note_phrases.json
  def create
    @note_phrase = NotePhrase.new(params[:note_phrase])

    respond_to do |format|
      if @note_phrase.save
        format.html { redirect_to @note_phrase, notice: 'Note phrase was successfully created.' }
        format.json { render json: @note_phrase, status: :created, location: @note_phrase }
      else
        format.html { render action: "new" }
        format.json { render json: @note_phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /note_phrases/1
  # PUT /note_phrases/1.json
  def update
    @note_phrase = NotePhrase.find(params[:id])

    respond_to do |format|
      if @note_phrase.update_attributes(params[:note_phrase])
        format.html { redirect_to @note_phrase, notice: 'Note phrase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @note_phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /note_phrases/1
  # DELETE /note_phrases/1.json
  def destroy
    @note_phrase = NotePhrase.find(params[:id])
    @note_phrase.destroy

    respond_to do |format|
      format.html { redirect_to note_phrases_url }
      format.json { head :no_content }
    end
  end
end
