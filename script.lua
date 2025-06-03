local aa = 0
get('btn').onclick(function()
    aa = aa+1
    fetch({
        url = 'https://example.com',
        method = 'GET'
    })
    get('amount').set_contents('clicked '..aa)
end)
