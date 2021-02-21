class SearchPage
  include PageObject

  page_url(BASE_URL)
  # text_field(:searchBox, id: 'sb_form_q')
  # text_field(:searchButton, id: 'sb_form_go')
  text_field(:searchBox, name: 'q')
  button(:searchButton, class: 'gNO89b')

  def enterSearchCriteria(criteria)
    self.searchBox=criteria
  end

  def searchAction()
    self.searchButton
  end

  def verifyResult(result)
    self.text.include?(result)
  end

end