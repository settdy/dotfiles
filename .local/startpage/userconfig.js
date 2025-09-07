const preferredLightTheme = latte;
const preferredDarkTheme = macchiato;
let palette = initThemeSystem(preferredLightTheme, preferredDarkTheme);

const default_configuration = {
  overrideStorage: true,
  temperature: {
    location: "Hong Kong",
    scale: "C",
  },
  clock: {
    format: "k:i p",
    icon_color: palette.maroon,
  },
  additionalClocks: [
    /**
    {
      label: "UA",
      timezone: "Europe/Kyiv",
      format: "h:i",
      icon_color: palette.peach,
    },
    */
  ],
  search: {
    engines: {
      p: ["https://www.perplexity.ai/search/?q=", "PerplexityAI"],
      d: ["https://duckduckgo.com/?q=", "DuckDuckGo"],
      g: ["https://google.com/search?q=", "Google"],
    },
    default: "d",
  },
  keybindings: {
    "s": "search-bar",
  },
  disabled: [],
  localIcons: true,
  localFonts: true,
  fastlink: "https://www.reddit.com/r/unixporn/",
  openLastVisitedTab: true,
  tabs: [
    {
      name: "myself",
      background_url: "src/img/banners/banner_09.gif",
      categories: [
        {
          name: "bookmarks",
          links: [
            {
              name: "whatsapp",
              url: "https://web.whatsapp.com/",
              icon: "brand-whatsapp",
              icon_color: palette.green,
            },
            {
              name: "instagram",
              url: "https://musicforprogramming.net",
              icon: "brand-instagram",
              icon_color: palette.peach,
            },
          ],
        },
        {
          name: "school",
          links: [
            {
              name: "docs",
              url: "https://docs.google.com/document/d/1xTnN2vcZidjf1ALoTIuONUVLiahw-D3bchyexLdF4s0/edit?tab=t.0",
              icon: "clipboard-text",
              icon_color: palette.blue,
            },
            {
              name: "gmail",
              url: "https://mail.google.com/mail/u/1/#inbox",
              icon: "brand-gmail",
              icon_color: palette.red,
            },
            {
              name: "class",
              url: "https://classroom.google.com/u/1/",
              icon: "chalkboard",
              icon_color: palette.yellow,
            },
            {
              name: "sheets",
              url: "https://docs.google.com/spreadsheets/d/1rRFscEJVqCDQ0OZNicEdyh1WjoY14VVv8jCxRxazAEk/edit?gid=1636476059#gid=1636476059e",
              icon: "brand-google-drive",
              icon_color: palette.green,
            },
          ],
        },
        {
          name: "resources",
          links: [
            {
              name: "timer",
              url: "https://fullscreencountdowntimer.com/",
              icon: "clock",
              icon_color: palette.text,
            },
            {
              name: "dselib",
              url: "https://www.dselib.com/",
              icon: "paperclip",
              icon_color: palette.overlay2,
            },
            {
              name: "duck.ai",
              url: "https://duck.ai",
              icon: "message-chatbot",
              icon_color: palette.peach,
            },
            {
              name: "уoutube",
              url: "https://www.youtube.com/feed/playlists",
              icon: "brand-youtube",
              icon_color: palette.red,
            },
            {
              name: "afterschool",
              url: "https://afterschool.com.hk/",
              icon: "school",
              icon_color: palette.teal
            },

          ],
        },
      ],
    },
    {
      name: "dev",
      background_url: "src/img/banners/banner_07.gif",
      categories: [
        {
          name: "development",
          links: [
            {
              name: "github",
              url: "https://github.com",
              icon: "brand-github",
              icon_color: palette.text,
            },
            {
              name: "neptune",
              url: "https://ui.neptune.ai",
              icon: "circle-triangle",
              icon_color: palette.peach,
            },
            {
              name: "stackoverflow",
              url: "https://stackoverflow.com",
              icon: "brand-stackoverflow",
              icon_color: palette.red,
            },
          ],
        },
        {
          name: "icons",
          links: [
            {
              name: "pixlr",
              url: "https://pixlr.com/express/",
              icon: "photo",
              icon_color: palette.blue,
            },
            {
              name: "tabler",
              url: "https://tabler.io/icons",
              icon: "pencil-code",
              icon_color: palette.green,
            },
            {
              name: "nerdfonts",
              url: "https://www.nerdfonts.com/cheat-sheet",
              icon: "sunglasses",
              icon_color: palette.peach,
            },
            {
              name: "fontawesome",
              url: "https://fontawesome.com/icons/",
              icon: "letter-case",
              icon_color: palette.mauve,
            },
          ],
        },
        {
          name: "resources",
          links: [
            {
              name: "dou",
              url: "https://dou.ua",
              icon: "brand-prisma",
              icon_color: palette.green,
            },
            {
              name: "hackernews",
              url: "https://news.ycombinator.com",
              icon: "brand-redhat",
              icon_color: palette.peach,
            },
            {
              name: "uber engineering",
              url: "https://www.uber.com/en-GB/blog/london/engineering",
              icon: "brand-uber",
              icon_color: palette.red,
            },
            {
              name: "netflix tech blog",
              url: "https://netflixtechblog.com",
              icon: "brand-netflix",
              icon_color: palette.blue,
            },
          ],
        },
      ],
    },
    {
      name: "chi ll",
      background_url: "src/img/banners/banner_08.gif",
      categories: [
        {
          name: "social media",
          links: [
            {
              name: "reddit",
              url: "https://www.reddit.com/r/unixporn",
              icon: "brand-reddit",
              icon_color: palette.red,
            },
            {
              name: "twitter",
              url: "https://www.x.com",
              icon: "brand-twitter",
              icon_color: palette.sapphire,
            },
            {
              name: "tumblr",
              url: "https://tumblr.com",
              icon: "brand-tumblr",
              icon_color: palette.mauve,
            },
            {
              name: "deviantart",
              url: "https://www.deviantart.com/",
              icon: "brand-deviantart",
              icon_color: palette.green
            }
          ],
        },
        {
          name: "fun",
          links: [
            {
              name: "imdb",
              url: "https://imdb.com",
              icon: "device-tv",
              icon_color: palette.yellow,
            },
            {
              name: "steam",
              url: "https://store.steampowered.com",
              icon: "brand-steam",
              icon_color: palette.text,
            },
            {
              name: "steamdb",
              url: "https://steamdb.info",
              icon: "database",
              icon_color: palette.red,
            },
            {
              name: "monkeytype",
              url: "https://monkeytype.com",
              icon: "keyboard",
              icon_color: palette.sky,
            },

          ],
        },
        {
          name: "pirate",
          links: [
            {
              name: "fmhy",
              url: "https://fmhy.pages.dev/",
              icon: "home",
              icon_color: palette.mauve,
            },
            {
              name: "cineby",
              url: "https://www.patreon.com",
              icon: "device-vision-pro",
              icon_color: palette.red,
            },
            {
              name: "r/piracy",
              url: "https://old.reddit.com/r/Piracy/wiki/megathread/movies_and_tv",
              icon: "anchor",
              icon_color: palette.peach,
            },
            {
              name: "virustotal",
              url: "https://www.virustotal.com/gui/home/upload",
              icon: "virus-search",
              icon_color: palette.blue,
            },
          ],
        },
      ],
    },
  ],
};

const CONFIG = new Config(default_configuration, palette);

const root = document.querySelector(":root");
root.style.setProperty("--bg", palette.mantle);
root.style.setProperty("--accent", palette.green);
