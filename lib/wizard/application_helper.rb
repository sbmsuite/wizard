module Wizard #:nodoc
  module ApplicationHelper
    
    def current_wizard_step
      session[:current_wizard_step].to_s
    end
    
    def previous_wizard_step
      session[:previous_wizard_step].to_s
    end
    
    def next_wizard_step
      session[:next_wizard_step].to_s
    end
    
    def link_to_next_step(wizard_name, next_step_name=:next, options={}, html_options=nil)
      options.merge!(:controller => wizard_name.to_s.camelize.downcase, 
                     :action => session[:next_wizard_step].to_s)
      link_to(next_step_name.to_s.humanize, options, html_options)
    end
    
    def link_to_previous_step(wizard_name, previous_step_name=:previous, options={}, html_options=nil)
      options.merge!(:controller => wizard_name.to_s.camelize.downcase,
                     :action => session[:previous_wizard_step].to_s)
      link_to(previous_step_name.to_s.humanize, options, html_options)
    end
    
  end
end