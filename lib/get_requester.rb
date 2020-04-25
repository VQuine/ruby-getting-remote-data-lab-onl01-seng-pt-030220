require 'open-uri' # <---built-in Ruby MODULE for additional METHODs - GETrequests
require 'json' #<---built-in Ruby MODULE for additional METHODS - handle JSON for conversion into Ruby data structures

class GetRequester
    attr_accessor :url, :uri, :response, :response_body
    
    def initialize(url)
        @url = url
        # @uri = URI.parse(url)
    end

    def get_response_body
        #all of this basically looks like patterns
        # of how to use, stuff that's already built in,
        # properly

        @uri = URI.parse(url)
        @response = Net::HTTP.get_response(uri)
        @response_body = response.body
    end

    def parse_json()
        JSON.parse(get_response_body)
    end
    
end #CLASSend



=begin NOTES
    url = "" #<----define and hold a URL address
    uri = URI.parse(url) #<---URIclass required up top . #parse method in that class (the url that was defined)
        # defined 'uri' now returns uniform resource IDENTIFIER that belonged to the 'url' address
    uri.open #<---reveals the uniform resource IDENTIFIER as an objecct

    uri.open.string #<----turns the UID object into a string from STRINGIO, BUILt-IN #STRING method
=end


    # def get_response_body()
    # def get_response_body(initialized_url_string)
    #     # send_get_request(initialized_url_string)
    #     # return body of response
    #     GetRequester.new(initialized_url_string)
    #     # get_requester.get_response_body
    # end

    # def parse_json()
    #     # get_response_body_to_send_request
    #     # return array or hash ==
    #     #   converted data from last line's response
    # end