module Wysiwyg
  class MainController < Volt::ModelController

    def initialize(attributes)
      Document.ready? do
        if @quill.nil?
          puts 'think @quill is nill'
          `var quill = new Quill('.quill-editor');`
          @quill = `quill`
        end
        `#{@quill}.addModule('toolbar', { container: '.quill-toolbar' });`
        Element.find('.quill-editor > div').html(attributes.locals[:text])
      end
    end

  end
end
