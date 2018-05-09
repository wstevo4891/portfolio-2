require 'redcarpet'
require 'coderay'

# Helper for rendering post_section.body markdown
module MarkdownHelper
  def render_markdown(text)
    renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML, fenced_code_blocks: true)

    doc = Nokogiri::HTML::DocumentFragment.parse(renderer.render(text))

    doc.css('code[@class]').each do |code|
      # div = CodeRay.scan(code.text.rstrip, code[:class].to_sym).div
      div = coderay(code.text)
      code = code.replace(div)
      code.first.parent.swap(code.first)
    end

    doc.to_s.html_safe
  end

  private

  def destroy
    @genre.destroy
    respond_to do |format|
      format.html { render :index, notice: 'Genre was deleted' }
      format.json { head :no_content }
      format.js
    end
  end

  def coderay(text)
    text.gsub(/\<code( lang="(.+?)")?\>(.+?)\<\/code\>/m) do
      CodeRay.scan($3, $2).div(css: :class)
    end
  end

  def new_renderer
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, fenced_code_blocks: true)
  end

  def parse_document(renderer)
    Nokogiri::HTML::DocumentFragment.parse(renderer.render(text))
  end
end
