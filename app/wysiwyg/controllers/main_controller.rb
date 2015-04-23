module Wysiwyg
  class MainController < Volt::ModelController
    attr_reader :quill, :text
    model :store

    def initialize(attributes)
      @text = attributes.locals[:text]
    end

    def index_ready
      %x{
        var quill = new Quill('.quill-editor', {
          modules: {
            'toolbar': {
              container: '.toolbar-container'
            },
            'link-tooltip': true,
            'image-tooltip': true
          },
          styles: false,
          theme: 'snow'
        });
        quill.insertText(0, #{text})
        #{@quill} = quill
      }
    end

    def save_quill
      html = `#{quill}.getHTML();`
      _quills << { content: html }
      `#{quill}.setHTML('');`
    end

  end
end
