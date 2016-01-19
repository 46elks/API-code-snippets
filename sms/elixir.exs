import HTTPotion.base

authdata = [basic_auth: {'u5a0588130b2bfe9dec437a4df1056d15',
                         'F98A6EB5C29D2D0098A926B97A87CAFB'}]

request = %{
            "from"    => "Me", 
            "to"      => "+46723175800", 
            "message" => "Hej nu testar jag igen! Med alla bokstäver!"
           }

request_data = URI.encode_query(request)

HTTPotion.start
HTTPotion.post("https://api.46elks.com/a1/SMS",[body: request_data , ibrowse: authdata])