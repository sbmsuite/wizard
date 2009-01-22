require 'wizard/application'
require 'wizard/application_helper'

ActionController::Base.send(:include, Wizard::ApplicationController)
ActionView::Base.send(:include, Wizard::ApplicationHelper)
