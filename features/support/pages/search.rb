class SearchPage
  include PageObject

  page_url(BASE_URL)
  # text_field(:searchBox, id: 'sb_form_q')
  # text_field(:searchButton, id: 'sb_form_go')
  text_field(:searchBox, name: 'q')
  button(:searchButton, class: 'gNO89b')
  links(:result_link, class: 'yuRUbf')

  def enter_Search_Criteria(criteria)
    self.searchBox=criteria
  end

  def search_Action()
    self.searchButton
  end

  def verify_Result(result)
    self.text.include?(result)
  end

  def get_all_link_names
    all_results = []
    result_link_elements.each do |each_result|
      log(each_result.text)
      all_results << each_result.text
    end
    all_results
  end

end