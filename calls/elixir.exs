import HTTPotion.base

authdata = [basic_auth: {'u5a0588130b2bfe9dec437a4df1056d15',
                         'F98A6EB5C29D2D0098A926B97A87CAFB'}]

request = %{
            "from"    => "+46766861234", 
            "to"      => "+46723175800", 
            "message" => "{\"connect\":\"+4634090510\"}"
           }

request_data = URI.encode_query(request)

HTTPotion.start
HTTPotion.post("https://api.46elks.com/a1/Call",[body: request_data , ibrowse: authdata])