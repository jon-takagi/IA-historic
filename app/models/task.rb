class Task < ActiveRecord::Base
  enum status: [:not_started, :in_progress, :need_help, :finished]
  belongs_to :project
  belongs_to :user
  def self.status_attributes_for_select
      statuses.map do |status, _|
        [I18n.t("activerecord.attributes.#{model_name.i18n_key}.statuses.#{status}"), status]
      end
    end
end
