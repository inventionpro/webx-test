local aa = 0;

get('btn').onclick(function()
    aa = aa+1;
    fetch({
        url = "https://example.com",
        method = "GET",
        headers = { ["Content-Type"] = "application/json" },
        body = ''
    })
    get('amount').set_contents('clicked '..aa)
end)
