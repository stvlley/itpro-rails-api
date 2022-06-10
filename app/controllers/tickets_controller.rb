class TicketsController < ApplicationController

    def index
        tickets = Ticket.all
        render json: tickets
    end

    def show
        ticket = Ticket.find(params[:id])
        render json: ticket, status: :found
    end

    def create
        ticekt = Ticket.create!(ticket_params)
        render json: ticekt, status: :created  
    end

    private

    def ticket_params
        params.permit(:description, :user_id)
    end

end
