fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

author 'Daeksoul'
description 'Standalone RedM Anti-Motion Sickness Overlay using NUI'
version '1.0.0'

-- client and server scripts
client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}

-- NUI
ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/img/AMSOverlay.png'
}
