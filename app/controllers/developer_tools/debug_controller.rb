module DeveloperTools
  class DebugController < ApplicationController
    include MarkdownHelper

    def show
      @ruby = <<-RUBY
        puts "Hello world!"
      RUBY

      @foo = "```ruby
             def destroy
               @genre.destroy
               respond_to do |format|
                 format.html { render :index, notice: 'Genre was deleted' }
                 format.json { head :no_content }
                 format.js
               end
             end
             ```"
    end
  end
end
