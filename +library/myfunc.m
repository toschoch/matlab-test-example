function response = myfunc()
    %MYFUNCTEST Summary of this function goes here
    %   Detailed explanation goes here
    file = py.open('myimage.jpg', 'rb');
    bytes = file.read();
    file.close();
    response = py.requests.put('https://postman-echo.com/put',bytes);
end

