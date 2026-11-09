# Google Ads Manager by AdPlug

Instructions that turn an OpenAI dot, ChatGPT, Codex or Claude into a Google Ads manager. It audits your account, then, where your app can run schedules, checks it every day, sends you a plan every Monday and a client-ready report every month. It changes only what you approve.

It has two parts. **AdPlug** safely connects your Google Ads account to the AI app. **The manager** is a set of instructions (skills) the AI follows. You add the manager as a file in ChatGPT and dots, as a plugin in Codex, and as skills in Claude. In ChatGPT, the "plugin" you create is only the AdPlug connection.

It's built for people who know a bit of PPC and run Google Ads for their own business or a few clients, especially lead generation and local service businesses: plumbers, roofers, HVAC, clinics, law firms. It guides you and explains the why behind each change. You say yes or no to every change.

## What it does

- **First run:** reads your website and account, checks what changed recently and who changed it, checks your conversion tracking, shows you what's working and what isn't, asks for your budget, goals and service area, and writes a brief for each client.
- **Every morning except Monday and Thursday:** a small check that everything is fine. Ads running, leads coming in, tracking recording, nothing disapproved, pages loading, no change nobody logged. One line when all is fine.
- **Every Thursday:** a hunt for what's quietly holding the goal back and what would bring more leads: a deep check of one area at a time, budget-capped winners, search terms worth adding as keywords, services and areas nobody covers, the season ahead. Each sized, with its cost.
- **Every Monday:** where you stand against the goal, then the changes it would make next, each with the why, the cost and how to undo it, then the evidence: last week against the weeks before, search terms wasting money, missed calls, and whether past changes worked.
- **Every month:** a short PDF report per client, ready to send.
- **Change log:** every change it made, why, and what happened after.

## What's inside

| Path | What it is |
|---|---|
| `skills/google-ads-manager/` | The manager: first run, goals, approvals, change log, best practice for lead generation, diagnosing drops |
| `skills/google-ads-daily-check/` | The daily check |
| `skills/google-ads-weekly-plan/` | The Monday plan |
| `skills/google-ads-opportunity-hunt/` | The Thursday hunt for problems and opportunities |
| `skills/google-ads-monthly-report/` | The monthly client report |
| `DOT.md` | Standing instructions for an OpenAI dot: start now, keep the brief, schedule the routines |
| `google-ads-manager-for-openai-dots.md` | `DOT.md` and the five skills in one file, to attach to a dot or a ChatGPT chat |
| `mcp.json` | The address of AdPlug's hosted Google Ads MCP server, `https://api.adplug.app/mcp/google-ads` |
| `plugin.json`, `.agents/plugins/marketplace.json` | The plugin manifest and marketplace entry for Codex |

Apart from `build-one-file.sh`, which rebuilds the one-file version, there's no code. It's instructions, plus the address of one remote server.

## What you need

- An AdPlug account with Google Ads connected at [adplug.app/dashboard/connections](https://adplug.app/dashboard/connections). On the free plan your AI can read the account and preview changes. Applying them needs a paid plan ([adplug.app/pricing](https://adplug.app/pricing)).
- An AI app that can use a custom MCP server: ChatGPT on a paid plan, an OpenAI dot, Codex or Claude.

## Set it up in an OpenAI dot

A dot is a ChatGPT agent with its own cloud computer. It keeps notes and files there and runs saved schedules without you opening a chat. Dots are rolling out to ChatGPT Pro in eligible markets, Business Premium and Enterprise.

1. **Add AdPlug to ChatGPT.** Open [chatgpt.com/plugins](https://chatgpt.com/plugins), click Add, then Add custom MCP server. Paste `https://api.adplug.app/mcp/google-ads` as the server URL, keep OAuth, click Create as a plugin, then Connect, and sign in to AdPlug.
2. **Make ChatGPT ask before any change.** In Settings, then Plugins, then the AdPlug plugin, under Permissions choose "Allow read actions". Reports and previews then run without asking, and every change waits for you.
3. **Open your dot** at [chatgpt.com/dots](https://chatgpt.com/dots). In its profile, under Customize, then Plugins, check AdPlug is on.
4. **Hand it the manager.** Download [`google-ads-manager-for-openai-dots.md`](google-ads-manager-for-openai-dots.md), attach it in the dot's chat and send:

   > Read this file, save it as your standing instructions, and start now. My clients: <name, website>; <name, website>. I'm on <time zone>. Send updates here. Recent changes: <what and when, or none>. Change nothing without my yes.

The dot reads what changed recently, checks tracking, shows you what's working, asks about budgets and goals, schedules the daily check, the Monday plan and the monthly report, confirms them with you, then proposes the first fixes.

## Set it up in a ChatGPT chat

Do steps 1 and 2 above, then attach the same file in a normal chat and send the same message. Keep using that one conversation: a new chat won't have the file. You can ask it to schedule the routines (or create them under Scheduled), but OpenAI doesn't say whether a scheduled ChatGPT task can reach a custom server like AdPlug, so check the first run's result. If it can't, run the checks in the chat yourself.

## Install in Codex

```bash
codex plugin marketplace add adplug-app/google-ads-manager
codex plugin add google-ads-manager@adplug
```

Or, after the first line, open `/plugins` in Codex, pick the adplug marketplace and install Google Ads Manager. Sign in to AdPlug when asked, and start a new session with "start".

## Use it in Claude

Download this repo (Code, then Download ZIP) and unzip it. Zip each folder in `skills/` on its own and upload it under Settings, then Customize, then Skills, then Add ([claude.ai/new#settings/customize-skills](https://claude.ai/new#settings/customize-skills)). Add `https://api.adplug.app/mcp/google-ads` as a custom connector, then say "start". Scheduled tasks in Cowork can run the routines.

## How changes are kept safe

- The manager is told never to change anything without your yes to that exact change, after showing you the preview. Scheduled runs only read and propose.
- AdPlug's server refuses a change that wasn't previewed first: the execute tool needs the preview's ID, within 15 minutes.
- New campaigns and most new ads start paused. New ad groups, keywords and assets don't, so anything added to a live campaign goes live straight away. The manager says so before you approve.
- "Allow read actions" in ChatGPT makes ChatGPT itself ask before any change, as a second lock.
- On the free plan, changes can't be applied at all.
- Every call is logged on the [usage page](https://adplug.app/dashboard/usage) of your AdPlug dashboard.

## Your data

Every tool call goes to `https://api.adplug.app/mcp/google-ads`. Reports are fetched live from Google Ads and not kept. AdPlug logs each call's tool, ad account and time for your usage page, never its arguments or results. It keeps a change preview so it can be applied within 15 minutes, then deletes it within two days. Google sign-in tokens are stored encrypted.

- Privacy policy: [adplug.app/privacy](https://adplug.app/privacy)
- Terms: [adplug.app/terms](https://adplug.app/terms)

## Support

Email [support@adplug.app](mailto:support@adplug.app) and Daniel Popa, AdPlug's founder, will reply, usually the same business day.

- The Ads Generator skill, which writes new ads per ad group (sign in to AdPlug to open it): [adplug.app/dashboard/skills/ads-generator](https://adplug.app/dashboard/skills/ads-generator)
- Every ad platform in one plugin for Hermes Agent: [adplug-app/adplug-hermes-plugin](https://github.com/adplug-app/adplug-hermes-plugin)

## Licence

MIT. See [LICENSE](LICENSE). Published by MEANDATA IT SRL, trading as AdPlug.
