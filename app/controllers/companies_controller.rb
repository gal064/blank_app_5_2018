class CompaniesController < ApplicationController
  def index
    @companies = Company.all

    render("company_templates/index.html.erb")
  end

  def show
    @company = Company.find(params.fetch("id_to_display"))

    render("company_templates/show.html.erb")
  end

  def new_form
    render("company_templates/new_form.html.erb")
  end

  def create_row
    @company = Company.new

    @company.name = params.fetch("name")
    @company.user_id = params.fetch("user_id")
    @company.logo = params.fetch("logo")
    @company.club_id = params.fetch("club_id")

    if @company.valid?
      @company.save

      redirect_to("/companies", :notice => "Company created successfully.")
    else
      render("company_templates/new_form.html.erb")
    end
  end

  def edit_form
    @company = Company.find(params.fetch("prefill_with_id"))

    render("company_templates/edit_form.html.erb")
  end

  def update_row
    @company = Company.find(params.fetch("id_to_modify"))

    @company.name = params.fetch("name")
    @company.user_id = params.fetch("user_id")
    @company.logo = params.fetch("logo")
    @company.club_id = params.fetch("club_id")

    if @company.valid?
      @company.save

      redirect_to("/companies/#{@company.id}", :notice => "Company updated successfully.")
    else
      render("company_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @company = Company.find(params.fetch("id_to_remove"))

    @company.destroy

    redirect_to("/companies", :notice => "Company deleted successfully.")
  end
end
