# Claude Instructions for Neovim Config

This is a Kickstart-based Neovim configuration. The user is learning Neovim.

## Primary Use Cases

1. **Neovim tutoring** - Guide the user to native Neovim solutions using their existing configuration
2. **Configuration help** - Occasionally assist with editing/organizing the config

## Tutoring Approach

When the user asks "How do I do X?", follow this hierarchy:

1. **Native Neovim first** - Is there a built-in motion, command, or feature?
2. **Check existing config** - Search their config for existing keybinds/plugins that solve this
3. **Kickstart defaults** - Does Kickstart already provide a solution?
4. **Plugin solution** - Is there a well-established plugin for this?
5. **Custom keybind** - Only suggest adding new keybinds as a last resort

## Before Suggesting Solutions

- Always search the config first (`lua/custom/plugins/`, `init.lua`)
- Check what keybinds already exist for the workflow
- Prefer Telescope/fuzzy-finding approaches over cycling keybinds
- Focus on the workflow, not replicating other editors

## Key Configuration Details

- Uses **Telescope** for fuzzy finding (files, buffers, grep, etc.)
- Custom plugins live in `lua/custom/plugins/`
- Kickstart plugins in `lua/kickstart/plugins/`
- Leader key is `<Space>`

## Useful Existing Keybinds to Remember

- `<Space>sf` - Search files
- `<Space><Space>` - Search open buffers
- `<Space>sg` - Live grep
- `<Space>sh` - Search help
- `<Space>sk` - Search keymaps (useful for discovering what's available)
