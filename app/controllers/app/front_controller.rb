module App
  # FrontsController
  class FrontController < AppController
    layout 'layouts/templates/application'
    skip_before_filter :verify_authenticity_token
    before_action :message

    def index
    	@message = KepplerContactUs::Message.new
    	@works = Work.all
    end

    private 
    
    def message
    	@message = KepplerContactUs::Message.new
    end

  end
end
