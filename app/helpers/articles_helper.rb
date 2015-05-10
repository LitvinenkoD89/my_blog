module ArticlesHelper
  def options_for_article_tags(article_form, language)
    result = ''.html_safe
    Tag.send(language).each do |tag|
      attributes = { value: tag.id }
      attributes.merge!({selected: 'selected'}) if article_form.is_tag_selected?(tag)
      result += content_tag :option, tag.to_s, attributes
    end
    # options = options_from_collection_for_select(Tag.send(language), 'id', 'to_s')
    # article_form.send("#{language}_articles_new")
    result
  end
end
