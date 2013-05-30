require 'test_helper'

class NotePhrasesControllerTest < ActionController::TestCase
  setup do
    @note_phrase = note_phrases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:note_phrases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create note_phrase" do
    assert_difference('NotePhrase.count') do
      post :create, note_phrase: { NoteId: @note_phrase.NoteId, PhraseId: @note_phrase.PhraseId, Position: @note_phrase.Position }
    end

    assert_redirected_to note_phrase_path(assigns(:note_phrase))
  end

  test "should show note_phrase" do
    get :show, id: @note_phrase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @note_phrase
    assert_response :success
  end

  test "should update note_phrase" do
    put :update, id: @note_phrase, note_phrase: { NoteId: @note_phrase.NoteId, PhraseId: @note_phrase.PhraseId, Position: @note_phrase.Position }
    assert_redirected_to note_phrase_path(assigns(:note_phrase))
  end

  test "should destroy note_phrase" do
    assert_difference('NotePhrase.count', -1) do
      delete :destroy, id: @note_phrase
    end

    assert_redirected_to note_phrases_path
  end
end
