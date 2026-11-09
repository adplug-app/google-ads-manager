# What a good Google Ads account looks like

For local service and lead generation businesses. Use it to judge the account, to explain why a change matters, and as the audit checklist for a new account. Field names for GAQL queries come from AdPlug's reporting view doc tool.

## Its job

Google Search catches people already looking for what the business does: "emergency plumber", "water heater repair near me". It's usually the best lead source for a local service business because the need is urgent and the intent is plain. Brand searches (people typing the business's name) convert cheapest, so judge them apart from everything else. Performance Max and Demand Gen reach further (YouTube, Display, Maps, Gmail) and need a strong conversion signal to spend well, so they come after Search works and tracking is solid.

## Tracking

- **Calls are counted.** Call assets on every campaign with call reporting on, calls from the ads as a conversion with a minimum call length so hang-ups don't count, and calls from the website tracked (Google's forwarding number on the site, or a call tracking tool). Check with the conversion performance report and a GAQL query on `conversion_action` (status, category, primary or secondary, counting, click window).
- **Forms are counted once,** on the thank-you step, not on the page view.
- **Bidding uses the real leads.** Each campaign optimises toward the brief's leads (the campaign conversion goal); page views and micro-actions are secondary.
- **Count one per lead.** Lead actions count "one", not "every", so a person who calls twice is one lead.
- **Auto-tagging on** (`customer.auto_tagging_enabled`).
- **Still recording:** segment conversions by action and by day to see one go quiet.
- **Conversions against All conversions:** a wide gap means bidding ignores most of what's recorded.
- **Booked jobs:** when the business can tell which leads became jobs, those can be sent back to Google later (offline conversions), so bidding learns what a good lead is. Suggest it once the basics work, not before.

## Structure

- As few campaigns as the business allows, so each one gets enough leads to learn from. Split only where budget, target, service, area or landing page differ.
- Brand, competitor and non-brand in separate campaigns, never sharing a budget (brand soaks up the shared pool).
- An emergency campaign or ad group, with urgent copy and the hours to match, apart from planned work (installations, replacements) where people compare quotes.
- Ad groups by service ("drain cleaning", "water heater repair", "sewer line"), each with its own ads and landing page.
- The same search term served by two campaigns: negate it in the weaker one.

## Settings that leak money quietly

Each is fine when chosen and expensive when nobody noticed. Check them in every audit and in the daily check's change history.

- **Location:** "presence" (people in or regularly in the area), not "presence or interest", which pays for people elsewhere who are interested in the area. Target the service area (cities, ZIP codes or a radius) and exclude places the business doesn't serve. An enabled campaign with no location serves worldwide.
- **Search partners and Display expansion** on Search campaigns: usually off for a local budget unless they bring leads at the target (segment by `segments.ad_network_type`).
- **Ad schedule** against the hours someone answers the phone. Calls into voicemail are lost leads.
- **Auto-applied recommendations** switched on without the user knowing (`recommendation_subscription`, and `change_event` for what they changed).
- **AI Max on Search, final URL expansion and automatically created assets** (`campaign.ai_max_setting.enable_ai_max`, `campaign.asset_automation_settings`): they match searches beyond the keywords, rewrite headlines and send traffic to other pages. AdPlug reads these; the user changes them in Google Ads.

## Keywords and search terms

- Phrase and exact match by default. Broad match is the last stage: only once phrase and exact have run out of volume, with Smart Bidding, solid tracking and working negatives, and tested before rolling out. A small local account rarely needs it.
- Keywords by service and urgency: the service ("drain cleaning"), the problem ("clogged drain", "no hot water"), urgency ("emergency", "24 hour"), and place ("near me", city names).
- Search terms reviewed every week, negatives kept in shared lists by theme (jobs, DIY, parts, services not offered) and attached to every campaign.
- Quality Score's three parts (expected CTR, ad relevance, landing page experience) say what to fix. The score itself isn't the goal.
- Since September 2026 Google no longer takes language targeting on Search. Don't build new Dynamic Search Ads: Google is moving them into AI Max.

## Ads and assets

- Responsive search ads per ad group, written for that service and that search: the service and the area in the headlines, the offer and proof (licensed and insured, upfront pricing, response time, reviews) only where true. Keyword insertion in generic ad groups, the brand pinned to headline 1 only in brand ad groups, neither in competitor ad groups.
- Ad strength is a hint, not the goal.
- Call asset with the business hours, sitelinks per service, callouts, structured snippets (services), business name and logo, and a location asset if the Google Business Profile is linked.
- Stale copy: past years, ended offers, out-of-season words.
- Disapproved or limited ads and assets, including "destination not working".

## Landing pages

One page per service where possible, fast on mobile, the phone number at the top and tappable, the service area, proof (reviews, licence, guarantees), and a short form. Check the pages that get the spend (`landing_page_view`) by opening them.

## Bidding and budget

- Little conversion data or calls not tracked yet: maximise clicks with a cost-per-click cap, or maximise conversions once leads are tracked.
- Steady lead volume: a target cost per lead set from what the campaign actually achieves, then tightened in steps. A target far stricter than reality throttles delivery.
- Don't change a target and a budget on the same day, and leave a campaign through its learning period before judging it. Google's simulations (`campaign_simulation`, `bidding_strategy_simulation`) estimate what a different target or budget would do.
- Impression share lost to budget on a campaign under the target cost per lead: the clearest growth lever. Lost to rank: relevance, landing page or bid.

## Audiences

On Search, audiences in observation only, to learn who converts. Targeting by mistake narrows reach.

## Performance Max, if it runs

- The search terms it buys, with cost and conversions (`campaign_search_term_view`; leave keyword segments out or the rows drop).
- Brand exclusions when a brand Search campaign exists.
- Its conversion goal must be the real lead, or it finds the cheapest thing to count.
- Asset groups complete: images, logos, headlines, descriptions, and a video if there is one.

## Audit order for a new account

1. Tracking. 2. Settings that leak money. 3. Structure. 4. Search terms and negatives. 5. Keywords and Quality Score. 6. Ads and assets. 7. Bidding and budget. 8. Landing pages. 9. Performance: spend on search terms and keywords with no leads, as an amount and a share of spend; how much depends on one campaign or a few keywords; device, hour and area splits where results differ a lot.

Give the findings as a short list, worst first for the goal, each with the fix and whether it's quick. Then work through them with the user, a few at a time, through the yes steps in the `google-ads-manager` skill.

## Not available through Google's API

Auction Insights (use impression share instead, and send the user to Google Ads for competitor names), and creating or changing Video campaigns (YouTube ads are built as Demand Gen).
