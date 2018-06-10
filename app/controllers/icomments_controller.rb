class IcommentsController < ApplicationController
  def index
    @icomments = Icomment.all

    render("icomment_templates/index.html.erb")
  end

  def show
    @icomment = Icomment.find(params.fetch("id_to_display"))

    render("icomment_templates/show.html.erb")
  end

  def new_form
    render("icomment_templates/new_form.html.erb")
  end

  def create_row
    @icomment = Icomment.new

    @icomment.user_id = params.fetch("user_id")
    @icomment.content = params.fetch("content")
    @icomment.icase_id = params.fetch("icase_id")

    if @icomment.valid?
      @icomment.save

      redirect_to("/cases/#{params["club_id"]}", :notice => "Icomment created successfully.")
    else
      render("icomment_templates/new_form.html.erb")
    end
  end

  def edit_form
    @icomment = Icomment.find(params.fetch("prefill_with_id"))

    render("icomment_templates/edit_form.html.erb")
  end

  def update_row
    @icomment = Icomment.find(params.fetch("id_to_modify"))

    @icomment.user_id = params.fetch("user_id")
    @icomment.content = params.fetch("content")
    @icomment.icase_id = params.fetch("icase_id")

    if @icomment.valid?
      @icomment.save

      redirect_to("/icomments/#{@icomment.id}", :notice => "Icomment updated successfully.")
    else
      render("icomment_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @icomment = Icomment.find(params.fetch("id_to_remove"))

    @icomment.destroy

    redirect_to("/icomments", :notice => "Icomment deleted successfully.")
  end
end
