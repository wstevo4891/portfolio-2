require 'redcarpet'
require 'coderay'

# Helper for rendering post_section.body markdown
module MarkdownHelper
  def render_markdown(text)
    renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML, fenced_code_blocks: true)

    doc = Nokogiri::HTML::DocumentFragment.parse(renderer.render(text))

    doc.css('code[@class]').each do |code|
      div = CodeRay.scan(code.text.rstrip, code[:class].to_sym).div
      code = code.replace(div)
      code.first.parent.swap(code.first)
    end

    doc.to_s.html_safe
  end

  private

  def new_renderer
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, fenced_code_blocks: true)
  end

  def parse_document(renderer)
    Nokogiri::HTML::DocumentFragment.parse(renderer.render(text))
  end
end
