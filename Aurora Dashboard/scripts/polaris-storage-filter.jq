# Project Polaris visual-only Storage Mode transformation.
# It preserves entities and actions while applying the shared Aurora identity.

def hero_style:
  "ha-card { background: radial-gradient(circle at 78% 8%, rgba(255, 255, 255, 0.14), transparent 26%), radial-gradient(circle at 24% 18%, rgba(111, 232, 255, 0.15), transparent 38%), linear-gradient(135deg, rgba(35, 64, 113, 0.72), rgba(33, 42, 91, 0.64) 52%, rgba(75, 39, 112, 0.56)); border: 1px solid rgba(193, 226, 255, 0.30); border-radius: 26px; box-shadow: 0 28px 72px rgba(1, 6, 19, 0.42), 0 12px 38px rgba(91, 140, 255, 0.13), inset 0 1px 0 rgba(255, 255, 255, 0.19); backdrop-filter: blur(18px) saturate(132%); padding: 18px 22px; font-family: 'Nunito Sans', 'Avenir Next Rounded', 'Trebuchet MS', ui-rounded, system-ui, sans-serif; overflow: hidden; } ha-card img[alt='Aurora Smart Home'] { opacity: 0.96; filter: saturate(1.16) brightness(1.18) drop-shadow(0 0 12px rgba(91, 211, 255, 0.24)); } ha-card h1 { font-size: clamp(1.72rem, 2.4vw, 2.45rem); line-height: 1.12; margin: 6px 0 4px; background: linear-gradient(92deg, #72e8ff 0%, #a9b7ff 42%, #d28cff 72%, #f7fbff 100%); -webkit-background-clip: text; background-clip: text; -webkit-text-fill-color: transparent; color: #bdeeff; } ha-card::before { content: ''; position: absolute; inset: 0 12% auto; height: 1px; background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.48), transparent); pointer-events: none; }";

def transparent_card:
  "ha-card { background: transparent; border: 0; box-shadow: none; } ha-card img[alt='Aurora Smart Home'] { display: none !important; }";

def hero_detail_card:
  "ha-card { height: 100%; min-height: 154px; background: linear-gradient(145deg, rgba(9, 27, 58, 0.54), rgba(21, 37, 77, 0.38)); border: 1px solid rgba(177, 221, 255, 0.19); border-radius: 20px; box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.10); }";

def title_style:
  "h1, h2 { background: linear-gradient(92deg, #72e8ff 0%, #a9b7ff 42%, #d28cff 72%, #f7fbff 100%) !important; -webkit-background-clip: text !important; background-clip: text !important; -webkit-text-fill-color: transparent !important; color: #bdeeff !important; }";

def clock_style:
  "ha-markdown-element { min-height: 118px; display: flex; flex-direction: column; align-items: center; justify-content: center; } h1 { margin: 0 !important; font-family: 'Nunito Sans', 'Avenir Next Rounded', ui-rounded, system-ui, sans-serif; font-size: clamp(3rem, 5.4vw, 4.7rem) !important; font-weight: 800 !important; line-height: 0.95 !important; letter-spacing: 0.035em; font-variant-numeric: tabular-nums; background: linear-gradient(100deg, #64eaff 0%, #86c8ff 35%, #b992ff 68%, #e69cff 100%); -webkit-background-clip: text; background-clip: text; -webkit-text-fill-color: transparent; color: #8fe8ff; filter: drop-shadow(0 0 18px rgba(102, 215, 255, 0.20)); } p { margin: 14px 0 0 !important; color: rgba(238, 246, 255, 0.78); font-size: 0.92rem; font-weight: 650; letter-spacing: 0.035em; text-align: center; }";

def clock_content:
  "# {{ now().strftime('%H:%M') }}\n\n{{ ['maandag','dinsdag','woensdag','donderdag','vrijdag','zaterdag','zondag'][now().weekday()] | capitalize }} · {{ now().day }} {{ ['januari','februari','maart','april','mei','juni','juli','augustus','september','oktober','november','december'][now().month - 1] }} {{ now().year }}";

def aurora_title:
  if (startswith("# ") or startswith("## ")) then
    split("\n") as $lines
    | ($lines[0] | sub("^#+\\s*"; "")) as $title
    | "<h1 style=\"margin:6px 0 4px;font-size:clamp(1.72rem,2.4vw,2.45rem);line-height:1.12;background:linear-gradient(92deg,#72e8ff 0%,#a9b7ff 42%,#d28cff 72%,#f7fbff 100%);-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;color:#bdeeff;\">\($title)</h1>\n" + ($lines[1:] | join("\n"))
  else . end;

.data.config.views |= map(
  .background = "url('/local/aurora/aurora-logo-v1.png') 12% 54% / 390px auto no-repeat fixed, url('/local/aurora/aurora-logo-v1.png') 12% 54% / 390px auto no-repeat fixed, linear-gradient(rgba(4, 12, 29, 0.38), rgba(4, 12, 29, 0.62)) fixed, url('/local/aurora/aurora-polaris-background.png') center top / cover fixed, #061126"

  # Home: combine the existing greeting, forecast and clock in one hero.
  | if (
      .path == "home"
      and .header.card.type? == "markdown"
      and .sections[0].cards[0].type? == "heading"
      and ((.sections[0].cards[0].heading? // "") | contains("Vandaag"))
    ) then
      .header.card as $greeting
      | .sections[0].cards as $today
      | .header.card = {
          "type": "custom:mod-card",
          "card_mod": {"style": hero_style},
          "card": {
            "type": "vertical-stack",
            "cards": [
              ($greeting
                | del(.grid_options)
                | .content |= gsub("<p align=\\\"center\\\"><img src=\\\"/local/aurora/aurora-logo-v1.png\\\" alt=\\\"Aurora Smart Home\\\" width=\\\"[0-9]+\\\"></p>\\n*"; "")
                | .card_mod = {"style": transparent_card}),
              {
                "type": "grid",
                "columns": 2,
                "square": false,
                "cards": [
                  ($today[1]
                    | del(.grid_options)
                    | .card_mod = {"style": hero_detail_card}),
                  ($today[2]
                    | del(.grid_options)
                    | .content = clock_content
                    | .card_mod = {"style": {".": hero_detail_card, "ha-markdown$": clock_style}})
                ]
              }
            ]
          }
        }
      | .sections |= .[1:]
    else . end

  # Keep the logo as a shared background watermark, not repeated content.
  | if (
      .path == "home"
      and .header.card.type? == "custom:mod-card"
    ) then
      .header.card.card.cards[0].content |= (
        sub("^<p[^\\n]*aurora-logo-v1\\.png[^\\n]*</p>\\n*"; "")
        | aurora_title
      )
      | .header.card.card.cards[0].card_mod = {"style": {".": transparent_card, "ha-markdown$": title_style}}
      | .header.card.card.cards[1].cards[1].content = clock_content
      | .header.card.card.cards[1].cards[1].card_mod = {"style": {".": hero_detail_card, "ha-markdown$": clock_style}}
    elif (
      .path != "home"
      and (.header.card.content? | type) == "string"
      and (.header.card.content | contains("aurora-logo-v1.png"))
    ) then
      .header.card.content |= (
        sub("^<p[^\\n]*aurora-logo-v1\\.png[^\\n]*</p>\\n*"; "")
        | aurora_title
      )
    elif (
      .path != "home"
      and (.header.card.content? | type) == "string"
    ) then
      .header.card.content |= aurora_title
    else . end

  # Keep the shared hero material and title treatment on every header.
  | if (.path != "home" and .header.card.type? == "markdown") then
      .header.card.card_mod.style = {".": hero_style, "ha-markdown$": title_style}
    elif ((.header.card.card_mod.style? | type) == "string") then
      .header.card.card_mod.style = hero_style
    else . end
)
