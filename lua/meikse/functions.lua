function InsertText(text)
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local content=  line:sub(0, pos) .. tostring(text) .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(content)
end

function InsertTime()
  local time = os.date("%H:%M")
  InsertText(time)
end

function InsertDate()
  local date = os.date("%d.%m.%y")
  InsertText(date)
end
