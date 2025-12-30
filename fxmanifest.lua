fx_version 'cerulean'
game 'gta5'

description 'Notification System'
version '1.1.0'

ui_page 'html/index.html'

client_scripts {
    'client/main.lua'
}

shared_scripts {
    'config.lua',
    'util/*'
}

files {
    'html/index.html',
    'html/css/index.css',
    'html/js/index.js',
    'html/js/locale.js',
    'locales/*'
}

escrow_ignore {
    'html/**',
    'locales/**',
    'config.lua',
    'README.md',
    'fxmanifest.lua'
}

lua54 'yes'

dependency '/assetpacks'