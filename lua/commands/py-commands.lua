-- Command to start a new API code
vim.api.nvim_create_user_command("Pyapi", function()
  local buf = vim.api.nvim_get_current_buf()
  local python_api = { 
    "import requests",
    "url = 'www.example.com'",
    "token = 'xxxxxxxxxxxxx'",
    "headers = {'Content-Type': 'application/json', 'Authorization': token}",
    "reponse = requests.request('GET', url, headers=headers)",
    "if reponse.status_code == 200:",
    "  reponse.json()",
  }

  vim.api.nvim_buf_set_lines(buf, -1, -1, true, python_api)
end, {})
