---
name: google-ads-opportunity-hunt
description: "The proactive weekly hunt, run every Thursday morning as part of AdPlug's Google Ads Manager: where the account stands against the goal, the daily check's items, a deep check of one area that could be quietly going wrong (rotating through tracking, settings, bidding and budget, keywords, ads and assets, landing pages, device, hour and area, and structure), and the opportunities that would move the goal most, each sized and ranked. Winners held back by budget, search terms that bring leads but aren't keywords, services, problems and areas nobody covers, the season ahead, hours and devices, ad tests, Google's own suggestions. Read-only: findings feed the Monday plan. Use for 'what could be wrong', 'what are we missing', 'how do we get more leads', 'where can we grow', 'hunt', 'opportunities'."
license: MIT
metadata:
  author: AdPlug
  version: "1.0.0"
---

# Google Ads opportunity hunt

Read-only. Follow the `google-ads-manager` skill for the rules and read each client's brief and change log first: an opportunity only counts if it serves the goal, reaches the right customers and fits the budget. Fix broken tracking and obvious waste before chasing growth.

The daily check catches what broke. This hunt looks for what's quietly holding the goal back and what would move it, so the user hears about it before they think to ask. On Thursday it replaces the daily check: run the daily check's items first (`google-ads-daily-check`) and open with anything they find.

Skip anything already in the brief's Opportunities list or declined under Decisions, unless the numbers have changed.

## 1. The gap to the goal

One line: this month so far against the brief's goal (leads, cost per lead against the target, booked jobs), and the biggest gap between where the account is and where the goal needs it. Keep that gap in mind for the rest of the hunt. If the biggest gap is outside Google Ads (missed calls, slow callbacks, the website), say so plainly rather than looking for a change to make in the account.

## 2. A deep check: what could be quietly wrong

Each week, take one area and go through it properly, using the checklist in `references/best-practice.md`. The order: tracking, settings that leak money, bidding and budget, keywords and Quality Score, ads and assets, landing pages, performance by device, hour and area, and structure last, because restructuring resets what Google has learned. Search terms are left out: the Monday plan reviews them every week. Start with any area the daily checks flagged, then the one checked longest ago. Record in the brief's Deep checks table which area you checked and when (the first run's audit fills it in to start), so the whole list comes round every couple of months.

Report what you found, worst first for the goal, with the evidence and the fix you'd propose. "Checked, nothing wrong" is a useful answer too.

## 3. What could be done: the opportunities

Look in roughly this order of value:

1. **Winners held back by budget.** Campaigns at or under the target cost per lead that lose impression share to budget. The cheapest growth there is. Show the extra daily and monthly cost and the leads it might bring, labelled as an estimate: extra spend usually converts at a higher cost than the average, so use Google's own estimate where there is one (a budget recommendation, or `campaign_simulation`).
2. **Search terms that bring leads but aren't keywords.** Terms that fit the business and converted at or under the target on enough data to judge (the bar in section 6 of the `google-ads-manager` skill), counted from after any recent burst of changes, with no keyword of their own: add them as phrase or exact in the ad group whose ads and landing page fit them. One cheap lead isn't a winner.
3. **Services, problems and areas nobody covers.** Take the brief's services and service area, and the problems customers describe in their own words ("no hot water", "burst pipe"), and check them against the live keywords. Research the gaps with Keyword Planner from seed keywords and the website's pages, always with the service area as `geo_targets`. Keyword Planner shows little or no volume for small areas, so check the gaps against the search terms report too. Keep terms from people looking to hire; drop DIY, jobs and research searches. Cluster them into ad groups with volume and bid ranges.
4. **The season ahead.** Keyword Planner with `monthly=true` on the core services, and the account's own leads by month last year, show what's coming (freezes, heatwaves, holidays). Say what to get ready before demand rises, not after.
5. **Campaign types that fit but don't exist.** A brand campaign if people search the name and competitors bid on it. An emergency campaign or ad group with urgent copy and the right hours. A call-focused setup if calls are most of the leads. Remarketing or Performance Max only once tracking is solid and Search works.
6. **Hours, devices and areas.** Times, devices and places bringing leads under the target with low impression share, and ones spending without leads.
7. **Ads, assets and pages.** Ad groups with real traffic whose ads trail on click-through or lead rate, with what to test instead (AdPlug's Ads Generator skill writes new ads per ad group). Missing assets: a call asset with the right hours, a location asset, sitelinks per service. Landing pages that slow or confuse people.
8. **Beyond the ads.** Ask whether the business runs Local Services Ads (AdPlug doesn't manage them, but they share the same customers), and, once tracking works, whether booked jobs could be sent back to Google as offline conversions so bidding learns what a good lead is.
9. **Google's own suggestions.** Google's recommendations that fit the brief, presented as Google's, with your view next to each. Many raise spend or loosen match types.

Competitor names on search aren't available through Google's API: use impression share lost to rank, and send the user to Auction Insights in Google Ads for the names.

## 4. Size and rank them

For each finding and opportunity:
- what it is, and the evidence (numbers, dates);
- how it serves the goal;
- its size: extra leads, search volume or money saved, labelled as an estimate;
- the cost per day and per month, and whether it fits the budget;
- the effort and the risk (new tracking, a learning period, a campaign that's still settling: check the change log and `campaign.bidding_strategy_system_status`, because Google's change history only reaches back 30 days).

Rank by expected effect on the goal for the money and the effort.

## 5. The message

Lead with anything from the daily check's items, then the gap to the goal in one line, then the deep check's findings, then the top opportunities, a few at most, each with the next step you'd propose. Put the rest in the brief's Opportunities list, where the Monday plan picks them up, so changes stay paced.

Anything urgent (tracking broken, money leaking fast) goes to the user now, with the fix. Everything else waits for Monday. Never change anything in a scheduled run.
