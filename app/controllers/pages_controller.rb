class PagesController < ApplicationController
  def status
    @assigned_tasks = MemberTask.all
  end
end
