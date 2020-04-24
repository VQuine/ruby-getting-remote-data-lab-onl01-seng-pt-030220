class GetRequester
    attr_accessor :initialized_url_string
    
    def initialize(url_string)
        @initialized_url_string = url_string
        
    end

    def get_response_body(initialized_url_string)
        # send_get_request(initialized_url_string)
        # return body of response
        GetRequester.new(initialized_url_string)
        # get_requester.get_response_body
    end

    def parse_json()
        # get_response_body_to_send_request
        # return array or hash ==
        #   converted data from last line's response
    end

end