module MarketNews
    SYMBOLS = 'TSLA,AMZN,MSFT'
    class Client
        def self.news_update
            response = Request.call(http_method: 'get', endpoint:"/v1/news/all?symbols=#{SYMBOLS}&filter_entities=true&language=en")
            if !response[:code] == 200
                p "Unable to fetch Market News from API"
            else  
                response[:data]["data"].map do |news|
                    p "#{news['title']}"
                    p "#{news['description']}"
                end
            end 
        end
    end
end
        