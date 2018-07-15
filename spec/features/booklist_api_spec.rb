feature 'Booklist API connection to database' do
  scenario 'Can access full JSON of books' do
    visit('/api/v1/books')
    books = "[{\"_id\":{\"$oid\":\"5b4b9793a43d0a39f7b23061\"},\"author\":\"Charles Dickens\",\"isbn\":\"932590351\",\"title\":\"A Tale of Two Cities\"},{\"_id\":{\"$oid\":\"5b4b97d8a43d0a39f7b23062\"},\"author\":\"F.Scott Fritzgerald\",\"isbn\":\"12553992\",\"title\":\"The Beautiful and The Damned\"},{\"_id\":{\"$oid\":\"5b4b980ca43d0a39f7b23063\"},\"author\":\"Graham Green\",\"isbn\":\"04490269430\",\"title\":\"The End of the Affair\"}]"
    expect(page).to have_content books
  end
end
