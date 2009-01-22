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
    
    def link_to_next_step(wizard_name, next_step_name=:next)
      link_to next_step_name.to_s.humanize, :controller => wizard_name.to_s.camelize.downcase, :action => session[:next_wizard_step].to_s
    end
    
    def link_to_previous_step(wizard_name, previous_step_name=:previous)
      link_to previous_step_name.to_s.humanize, :controller => wizard_name.to_s.camelize.downcase, :action => session[:previous_wizard_step].to_s
    end
    
  end
end