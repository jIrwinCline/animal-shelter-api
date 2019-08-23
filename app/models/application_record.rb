class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = truerescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ message: exception.message }, :not_found)
  end
end
