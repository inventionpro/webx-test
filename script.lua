local aa = 0;

get('btn').on_click(function()
    aa = aa+1;
    fetch({
        url = "https://api.fsh.plus",
        method = "GET",
        headers = { ["Content-Type"] = "application/json" },
        body = ''
    })
    get('amount').set_contents('clicked '..aa)
end)
