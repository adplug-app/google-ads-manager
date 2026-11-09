---
name: google-ads-daily-check
description: "The small daily check that everything in Google Ads is fine, run each morning except Monday as part of AdPlug's Google Ads Manager. Ads running, yesterday's spend and leads against a normal day, tracking still recording, nothing disapproved, pages behind the ads loading, and any change nobody logged, with who made it. One line when all is fine; only what needs you when it isn't, with the fix it would propose. Read-only: it never changes the account. Use for 'daily check', 'morning check', 'is everything fine', 'anything broken', 'how did yesterday go'."
license: MIT
metadata:
  author: AdPlug
  version: "1.0.0"
---

# Google Ads daily check

Read-only. Follow the `google-ads-manager` skill for the rules (reporting, approvals, the brief) and read each client's brief and change log first. With several clients, send one message grouped by client, not one per client.

Run it every morning except Monday, when the weekly plan covers the same ground. Keep it small: a few reports, not an audit. Ideas and opportunities wait for the weekly plan: a change a day is how small accounts get churned.

## What to check

Use yesterday as the latest full day, and compare with the same weekday in recent weeks. Look at today so far only for things that can't wait (ads not running, tracking silent, pages down).

1. **Ads are running:** every campaign the brief expects live is serving. If one isn't, Google says why in `campaign.primary_status` and `campaign.primary_status_reasons` (budget, billing, disapprovals).
2. **Yesterday's spend and leads against a normal day,** by campaign: spikes and drops, not spend alone. Leads means the conversion actions the brief counts (calls, forms).
3. **Tracking still recording:** a conversion action that normally records and recorded nothing, while clicks carried on.
4. **Nothing disapproved:** ads, keywords and assets disapproved or limited, including "destination not working" (the policy summary fields on `ad_group_ad` and assets).
5. **Pages behind the ads load:** take the final URLs that got clicks yesterday and open them with your browser or web fetch. A 404, a redirect to the home page, a broken form or a missing phone number is worth a message.
6. **Changes nobody logged:** anything in Google's change history since the last check that isn't in the change log (`change_event`, with a date filter inside the last 30 days and a LIMIT), with who or what made it (`change_event.user_email`, `change_event.client_type`). Settings like search partners, Display expansion, location options, conversion goals and auto-applied recommendations show up here.

## What not to alert on

- Today's totals: the day is partial.
- Tiny numbers: one lead more or less is noise on a small account.
- Recent days that look short of conversions: they're still coming in.
- Something the brief explains (a holiday, a promotion that ended, a site change).
- An issue already reported: one line ("still open since <date>") unless it got worse.

## The message

- **All fine:** one line, for example "All fine yesterday: <spend>, <leads> leads, ads running, tracking recording, nothing needs you." A quiet day still gets a message, so silence means something broke.
- **Something needs the user:** for each item, the campaign, what's wrong, since when, how much it costs or risks, and the fix you'd propose. The user approves fixes in chat. Never change anything in a scheduled run.
- End with a short "couldn't check" list if anything failed.

Then update the brief's "Where we are" line and its open issues.
