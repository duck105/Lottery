module Admin
  class LogsController < Admin::ApplicationController
    def rollback
      log = Log.find(params[:id])
      names = log.data.split(",")
      names.each do |n|
        item = Item.where("name = ?", n).first
        item.given if item.present?
      end
      log.destroy
      redirect_to admin_logs_path
    end
  end
end
