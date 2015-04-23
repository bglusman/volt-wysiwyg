module Wysiwyg
  class MainController < Volt::ModelController
    def initialize
      Document.ready? do 
        `var quill = new Quill('#editor');`
        `quill.addModule('toolbar', { container: '#toolbar' });`
      end
    end
  end
end
