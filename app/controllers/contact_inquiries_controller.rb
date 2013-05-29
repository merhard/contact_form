class ContactInquiriesController < ApplicationController
  # GET /contact_inquiries
  # GET /contact_inquiries.json
  def index
    @contact_inquiries = ContactInquiry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact_inquiries }
    end
  end

  # GET /contact_inquiries/1
  # GET /contact_inquiries/1.json
  def show
    @contact_inquiry = ContactInquiry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact_inquiry }
    end
  end

  # GET /contact_inquiries/new
  # GET /contact_inquiries/new.json
  def new
    @contact_inquiry = ContactInquiry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact_inquiry }
    end
  end

  # GET /contact_inquiries/1/edit
  def edit
    @contact_inquiry = ContactInquiry.find(params[:id])
  end

  # POST /contact_inquiries
  # POST /contact_inquiries.json
  def create
    @contact_inquiry = ContactInquiry.new(params[:contact_inquiry])

    respond_to do |format|
      if @contact_inquiry.save
        format.html { redirect_to @contact_inquiry, notice: 'Contact inquiry was successfully created.' }
        format.json { render json: @contact_inquiry, status: :created, location: @contact_inquiry }
      else
        format.html { render action: "new" }
        format.json { render json: @contact_inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contact_inquiries/1
  # PUT /contact_inquiries/1.json
  def update
    @contact_inquiry = ContactInquiry.find(params[:id])

    respond_to do |format|
      if @contact_inquiry.update_attributes(params[:contact_inquiry])
        format.html { redirect_to @contact_inquiry, notice: 'Contact inquiry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact_inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_inquiries/1
  # DELETE /contact_inquiries/1.json
  def destroy
    @contact_inquiry = ContactInquiry.find(params[:id])
    @contact_inquiry.destroy

    respond_to do |format|
      format.html { redirect_to contact_inquiries_url }
      format.json { head :no_content }
    end
  end
end
