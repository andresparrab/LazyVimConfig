return {
  "render-markdown.nvim",
  opts = {
    checkbox = {
      -- Turn on / off checkbox state rendering
      enabled = true,
      -- Additional modes to render checkboxes
      render_modes = false,
      -- Determines how icons fill the available space:
      --  inline:  underlying text is concealed resulting in a left aligned icon
      --  overlay: result is left padded with spaces to hide any additional text
      position = "inline",
      unchecked = {
        -- Replaces '[ ]' of 'task_list_marker_unchecked'
        icon = "󰄱 ",
        -- Highlight for the unchecked icon
        highlight = "RenderMarkdownUnchecked",
        -- Highlight for item associated with unchecked checkbox
        scope_highlight = nil,
      },
      checked = {
        -- Replaces '[x]' of 'task_list_marker_checked'
        icon = "󰱒 ",
        -- Highlight for the checked icon
        highlight = "RenderMarkdownChecked",
        -- Highlight for item associated with checked checkbox
        scope_highlight = nil,
      },
      -- Define custom checkbox states, more involved as they are not part of the markdown grammar
      -- As a result this requires neovim >= 0.10.0 since it relies on 'inline' extmarks
      -- Can specify as many additional states as you like following the 'todo' pattern below
      --   The key in this case 'todo' is for healthcheck and to allow users to change its values
      --   'raw':             Matched against the raw text of a 'shortcut_link'
      --   'rendered':        Replaces the 'raw' value when rendering
      --   'highlight':       Highlight for the 'rendered' icon
      --   'scope_highlight': Highlight for item associated with custom checkbox
      custom = {
        todo = { raw = "[-]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo", scope_highlight = nil },
        todo1 = { raw = "[~]", rendered = "󰰱 ", highlight = "RenderMarkdownTodo", scope_highlight = nil },
        todo2 = { raw = "[!]", rendered = " ", highlight = "RenderMarkdownTodo", scope_highlight = nil },
        todo3 = { raw = "[>]", rendered = "", highlight = "RenderMarkdownTodo", scope_highlight = nil },
      },
    },
  },
}
