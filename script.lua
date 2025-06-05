print('start')
get('search').on_click(function()
    print('click')
    local res = fetch({
        url = "https://api.fsh.plus/wikipedia?page=" .. get('query').get_contents(),
        method = "GET",
        headers = { ["Content-Type"] = "application/json" },
        body = ''
    })
    print('recived')
    print(res)
    get('title').set_contents(res.title)
    get('text').set_contents(res.data)
    print('changed')
end)
