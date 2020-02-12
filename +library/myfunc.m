function response = myfunc()
    %MYFUNCTEST Summary of this function goes here
    %   Detailed explanation goes here
    fid = fopen('input.json');
    raw = fread(fid,inf);
    str = char(raw');
    fclose(fid);
    config = jsondecode(str);
    disp(config)
    file = py.open('myimage.jpg', 'rb');
    bytes = file.read();
    file.close();
    response = py.requests.put('https://postman-echo.com/put',bytes);
end
