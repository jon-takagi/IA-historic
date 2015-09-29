class Task < ActiveRecord::Base
  enum status: {not_started: 1, in_progress: 2, need_help: 3, finished: 4}
  belongs_to :project
  belongs_to :user
  def self.status_attributes_for_select
      statuses.map do |status, _|
        [I18n.t("activerecord.attributes.#{model_name.i18n_key}.statuses.#{status}"), status]
      end
    end
end
