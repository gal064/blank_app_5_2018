class IcasesController < ApplicationController
  def index
    @icases = Icase.all
    @club_id = params["club_id"]

    render("icase_templates/index.html.erb")
  end

  def show
    @icase = Icase.find(params.fetch("id_to_display"))

    render("icase_templates/show.html.erb")
  end

  def new_form
    render("icase_templates/new_form.html.erb")
  end

  def create_row
    @icase = Icase.new

    @icase.user_id = params.fetch("user_id")
    @icase.question = params.fetch("question")
    @icase.company_id = params.fetch("company_id")
    @icase.role = params.fetch("role")
    @icase.club_id = params.fetch("club_id")
    @icase.approach = params.fetch("approach")
    @icase.element = params.fetch("element")

    if @icase.valid?
      @icase.save

      redirect_to("/icases", :notice => "Icase created successfully.")
    else
      render("icase_templates/new_form.html.erb")
    end
  end

  def edit_form
    @icase = Icase.find(params.fetch("prefill_with_id"))

    render("icase_templates/edit_form.html.erb")
  end

  def update_row
    @icase = Icase.find(params.fetch("id_to_modify"))

    @icase.user_id = params.fetch("user_id")
    @icase.question = params.fetch("question")
    @icase.company_id = params.fetch("company_id")
    @icase.role = params.fetch("role")
    @icase.club_id = params.fetch("club_id")
    @icase.approach = params.fetch("approach")
    @icase.element = params.fetch("element")

    if @icase.valid?
      @icase.save

      redirect_to("/icases/#{@icase.id}", :notice => "Icase updated successfully.")
    else
      render("icase_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @icase = Icase.find(params.fetch("id_to_remove"))

    @icase.destroy

    redirect_to("/icases", :notice => "Icase deleted successfully.")
  end
end
