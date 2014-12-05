class GcmRegistrationsController < ApplicationController
  before_action :set_gcm_registration, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @gcm_registrations = GcmRegistration.all
    respond_with(@gcm_registrations)
  end

  def show
    respond_with(@gcm_registration)
  end

  def new
    @gcm_registration = GcmRegistration.new
    respond_with(@gcm_registration)
  end

  def edit
  end

  def create
    @gcm_registration = GcmRegistration.new(gcm_registration_params)
    @gcm_registration.save
    respond_with(@gcm_registration)
  end

  def update
    @gcm_registration.update(gcm_registration_params)
    respond_with(@gcm_registration)
  end

  def destroy
    @gcm_registration.destroy
    respond_with(@gcm_registration)
  end

  private
    def set_gcm_registration
      @gcm_registration = GcmRegistration.find(params[:id])
    end

    def gcm_registration_params
      params.require(:gcm_registration).permit(:user_id, :gcm_registration_id)
    end
end
