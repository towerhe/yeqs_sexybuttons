module SexybuttonHelper

  def include_sexybuttons
    tag(:link, :type => 'text/css', :media => 'screen', :rel => 'stylesheet', :href => '/components/SexyButtons/sexybuttons.css')
  end

  def sexybutton(text, url = nil)
    tag_name = 'button'

    btn = SexyButton.new
    yield btn if block_given?

    html_class = "sexybutton sexysimple sexy#{btn.color}" 
    if btn.style
      html_class << " #{btn.style}"
    end
    html_options = btn.html_options.merge! :class => html_class 
    html_options.merge! :type => btn.type if btn.type
    html_options.merge! :id => btn.id if btn.id
    if url
      html_options.merge! :href => url 
      tag_name = 'a'
    end

    content = btn.image ? content_tag(:span, text, :class => btn.image) : text
    content_tag(tag_name, content, html_options)
  end

  private
  class SexyButton

    attr_accessor :tag_name, :id, :type, :style, :color, :image, :html_options

    def initialize
      self.tag_name = 'button'
      self.color = 'black'
      self.html_options = {}
    end
  end
end
