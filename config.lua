Config = {}

Config.Locale = 'en';

-- Position configuration: 'right' or 'left'
Config.Position = 'right'

Config.Themes = {
    day = {
        -- Base theme colors
        background = '#f5f4f1',    
        layer = '#ebe9e4',         
        border = '#c7c5bd',        
        text = '#2d2d2d',          
        textSecondary = '#4a4a4a', 
        textTertiary = '#8a8a8a',  

        -- Button and interactive element colors
        buttonHover = '#ddd9d0',
        buttonHoverText = '#404040',
        closeButtonText = '#6b6b6b',
        closeButtonHoverBg = '#ddd9d0',   
        closeButtonHoverText = '#404040', 

        -- Input colors
        inputBg = '#f0ede6',          
        inputBorder = '#c7c5bd',      
        inputFocusBorder = '#5b82c4', 
        inputFocusShadow = 'rgba(91, 130, 196, 0.12)',

        -- Progress bar colors
        progressBg = '#e6e3dc', 
        progressShimmer = 'rgba(255, 255, 255, 0.25)',

        -- Clear button colors
        clearButtonBg = '#f4d5d5',
        clearButtonText = '#b83333',
        clearButtonBorder = '#e5b5b5',
        clearButtonHoverBg = '#e5b5b5',

        -- Scrollbar colors
        scrollbarTrack = '#e8e5de',
        scrollbarThumb = '#b8b5ac',
        scrollbarThumbHover = '#9c9990',

        -- Key indicator colors
        keyIndicatorBg = '#3d3d3d',
        keyIndicatorText = '#f5f4f1',

        -- Shadow colors
        shadowLight = 'rgba(0, 0, 0, 0.06)',
        shadowMedium = 'rgba(0, 0, 0, 0.08)',
        shadowHeavy = 'rgba(0, 0, 0, 0.10)',
        shadowFocus = 'rgba(0, 0, 0, 0.12)',

        -- Achievement overlay colors
        achievementOverlayPrimary = 'rgba(218, 165, 32, 0.12)',
        achievementOverlaySecondary = 'rgba(184, 134, 11, 0.12)',
        achievementPulseOverlay = 'rgba(255, 255, 255, 0.25)',

        -- Notification type colors
        info = {
            accent = '#5b82c4',
            bg = 'rgba(91, 130, 196, 0.10)',
            text = '#2c4a7a',
            border = '#5b82c4'
        },
        success = {
            accent = '#4a9d6f',
            bg = 'rgba(74, 157, 111, 0.10)',
            text = '#2d5a42',
            border = '#4a9d6f'
        },
        warning = {
            accent = '#d4a545',
            bg = 'rgba(212, 165, 69, 0.10)',
            text = '#8a6b2e',
            border = '#d4a545'
        },
        error = {
            accent = '#c85555',
            bg = 'rgba(200, 85, 85, 0.10)',
            text = '#8b2e2e',
            border = '#c85555'
        },
        achievement = {
            gradient = 'linear-gradient(135deg, #daa520 0%, #b8860b 100%)',
            border = '#a0751a'
        }
    },

    night = {
        -- Base theme colors
        background = 'rgba(30, 41, 59, 0.85)',
        layer = '#334155',
        border = '#475569',
        text = '#f1f5f9',
        textSecondary = '#cbd5e1',
        textTertiary = '#64748b',

        -- Button and interactive element colors
        buttonHover = '#475569',
        buttonHoverText = '#e2e8f0',
        closeButtonText = '#94a3b8',
        closeButtonHoverBg = '#475569',   
        closeButtonHoverText = '#e2e8f0', 

        -- Input colors
        inputBg = '#1e293b',          
        inputBorder = '#475569',      
        inputFocusBorder = '#60a5fa',
        inputFocusShadow = 'rgba(96, 165, 250, 0.15)',

        -- Progress bar colors
        progressBg = '#334155',
        progressShimmer = 'rgba(255, 255, 255, 0.2)',

        -- Clear button colors
        clearButtonBg = '#7f1d1d',
        clearButtonText = '#fca5a5',
        clearButtonBorder = '#991b1b',
        clearButtonHoverBg = '#991b1b',

        -- Scrollbar colors
        scrollbarTrack = '#1e293b',
        scrollbarThumb = '#475569',
        scrollbarThumbHover = '#64748b',

        -- Key indicator colors
        keyIndicatorBg = '#0f172a',
        keyIndicatorText = 'white',

        -- Shadow colors
        shadowLight = 'rgba(0, 0, 0, 0.2)',
        shadowMedium = 'rgba(0, 0, 0, 0.3)',
        shadowHeavy = 'rgba(0, 0, 0, 0.4)',
        shadowFocus = 'rgba(0, 0, 0, 0.25)',

        -- Achievement overlay colors
        achievementOverlayPrimary = 'rgba(251, 191, 36, 0.15)',
        achievementOverlaySecondary = 'rgba(245, 158, 11, 0.15)',
        achievementPulseOverlay = 'rgba(255, 255, 255, 0.2)',

        -- Notification type colors
        info = {
            accent = '#60a5fa',
            bg = 'rgba(96, 165, 250, 0.15)',
            text = '#93c5fd',
            border = '#60a5fa'
        },
        success = {
            accent = '#34d399',
            bg = 'rgba(52, 211, 153, 0.15)',
            text = '#6ee7b7',
            border = '#34d399'
        },
        warning = {
            accent = '#fbbf24',
            bg = 'rgba(251, 191, 36, 0.15)',
            text = '#fcd34d',
            border = '#fbbf24'
        },
        error = {
            accent = '#f87171',
            bg = 'rgba(248, 113, 113, 0.15)',
            text = '#fca5a5',
            border = '#f87171'
        },
        achievement = {
            gradient = 'linear-gradient(135deg, #fbbf24 0%, #f59e0b 100%)',
            border = '#d97706'
        }
    }
}

Config.NuiFocus = 'F10';
Config.History = 'H';

Config.Theme = 'night'

-- Day/Night cycle configuration
Config.DayNightThemeCycle = false
Config.DayStart = 6                
Config.NightStart = 20             

Config.ThemeUpdateInterval = 60000 -- Check every minute