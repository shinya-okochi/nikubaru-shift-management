require "google/apis/calendar_v3"
require "googleauth"
require "googleauth/stores/file_token_store"
require "date"
require "fileutils"

class CalendarController < ApplicationController

  REDIRECT_URI = "https://63a7b1bc88ce48bdb2f6de554f54d0e3.vfs.cloud9.ap-northeast-1.amazonaws.com/oauth2callback".freeze
  APPLICATION_NAME = "ニクバルダカラ 社内ポータルサイト".freeze
  CLIENT_SECRET_PATH = "client_secret.json".freeze
  # The file token.yaml stores the user's access and refresh tokens, and is
  # created automatically when the authorization flow completes for the first
  # time.
  TOKEN_PATH = "credentials.yaml".freeze
  SCOPE = Google::Apis::CalendarV3::AUTH_CALENDAR
  MY_CALENDAR_ID = 'ma51up48bv1hp2u0jqr915hj3s@group.calendar.google.com'

  def index
  end

  def authorize
    client_id = Google::Auth::ClientId.from_file CLIENT_SECRET_PATH
    logger.debug(client_id.id)
    token_store = Google::Auth::Stores::FileTokenStore.new file: TOKEN_PATH
    authorizer = Google::Auth::UserAuthorizer.new client_id, SCOPE, token_store
    user_id = "shny.kch@gmail.com"
    credentials = authorizer.get_credentials user_id
    if credentials.nil?
      code = session[:code]
      url = authorizer.get_authorization_url(base_url: REDIRECT_URI)
      logger.debug(url)
      credentials = authorizer.get_and_store_credentials_from_code(
        user_id: user_id, code: code, base_url: REDIRECT_URI
      )
    end
    credentials
  end

  def callback
    session[:code] = params[:code]
    logger.debug(session[:code])
    calendar = Google::Apis::CalendarV3::CalendarService.new
    calendar.client_options.application_name = APPLICATION_NAME
    calendar.authorization = authorize
    @events = fetchEvents(calendar)
    # render :json => events
    redirect_to controller: :users, action: :show, id: :"1"   
  end

  def fetchEvents(service)
    # Fetch the next 10 events for the user
    calendar_id = MY_CALENDAR_ID
    response = service.list_events(calendar_id,
                                   max_results:   10,
                                   single_events: true,
                                   order_by:      "startTime",
                                   time_min:      DateTime.now.rfc3339)
    puts "Upcoming events:"
    puts "No upcoming events found" if response.items.empty?
    return response.items
    # response.items.each do |event|
    #   start = event.start.date || event.start.date_time
    #   puts "- #{event.summary} (#{start})"
    # end
  end
end