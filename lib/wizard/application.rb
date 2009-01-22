module Wizard #:nodoc
  module ApplicationController
    def wizard(current_step, previous_step, next_step)
      session[:current_wizard_step] = current_step
      session[:previous_wizard_step] = previous_step
      session[:next_wizard_step] = next_step
    end
  end
end