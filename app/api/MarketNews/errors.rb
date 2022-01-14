module MarketNews
  class Errors
    def self.map(code)
        case code
        when 401
            return 'Unauthorized request. Please try again'
        when 402
            return 'Payment Required'
        when 404
            return 'Invalid Request'
        else
            return 'Service Unavailable'
        end
    end
  end
end