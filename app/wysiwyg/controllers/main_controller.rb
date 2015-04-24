module Wysiwyg
  class MainController < Volt::ModelController

    def initialize(attributes)
      index_ready
      Element.find('.quill-editor > div').html(attributes.locals[:text])
    end
    
    def index_ready
      `var quill = new Quill('.quill-editor');`
      `quill.addModule('toolbar', { container: '.quill-toolbar' });`
    end
  end
end
