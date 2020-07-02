# Appearance 
import gruvboxmaterial.draw
# Load existing settings made via :set
config.load_autoconfig()
# Gruvbox Material Theme
gruvboxmaterial.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})
# Font
c.fonts.default_family = "M+ 1mn"
c.fonts.default_size = "12pt"

# General
c.downloads.location.directory = "~/Downloads"
c.url.start_pages = ["https://github.com"] 
c.url.default_page = "about:blank"
c.url.searchengines = {"DEFAULT": "https://duckduckgo.com/search?q={}",
                        "aw": "https://wiki.archlinux.org/?search={}",
                        "bb": "https://search.bilibili.com/all?keyword={}",
                        "bn": "https://www.bing.com/search?q={}",
                        "cw": "https://zh.wikipedia.org/wiki/{}",
                        "da": "https://www.deviantart.com/search?q={}",
                        "dict": "http://dict.cn/{}",
                        "ew": "https://en.wikipedia.org/wiki/{}",
                        "gg": "https://google.com/search?q={}",
                        "git": "https://github.com/search?q={}",
                        "quo": "https://www.quora.com/search?q={}",
                        "rd": "https://reddit.com/search/?q={}",
                        "rdr": "https://reddit.com/r/{}",
                        "sos": "https://stackoverflow.com/search?q={}",
                        "yt": "https://www.youtube.com/results?search_query={}",
                        "zh": "https://www.zhihu.com/search?q={}",
                        }

# Key Binding
config.bind("am", "spawn -v mpv {url}")
config.bind("aM", "hint links spawn -v mpv {hint-url}")
config.bind("ay", "spawn -v youtube-dl {url}")
config.bind("aY", "hint links spawn -v youtube-dl {hint-url}")
config.bind("B", "set-cmd-text -s :bookmark-load")

