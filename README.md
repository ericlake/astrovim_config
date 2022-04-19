# AstroVim Config

## Instructions

This follows the instructions found at https://astronvim.github.io/configuration/manage_user_config. When setting up a new system do the following.

### Install
It is best to have nvim 0.7.0 for this. Use the install method of your choice.
```
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim +PackerSync
```
At this point verify that things are working with the base install.

### User config 

```
git clone git@github.com:ericlake/astrovim_config.git ~/.config/nvim/lua/user
nvim  --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```
Test the settings now that the user config is in place.

### Optional unattended install
Instead of running nvim +PackerSync to initialize AstroNvim you can run the following command to do a fully headless initialization:

```
nvim  --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

Full Steps:
```
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git clone git@github.com:ericlake/astrovim_config.git ~/.config/nvim/lua/user
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

