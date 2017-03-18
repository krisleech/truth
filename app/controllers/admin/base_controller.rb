module Admin
  class BaseController < ApplicationController
    http_basic_authenticate_with name: "hack24", password: "able2swim7miles"
  end
end
