---
name: google-ads-weekly-plan
description: "The weekly Google Ads plan, run every Monday morning as part of AdPlug's Google Ads Manager. Last week against the week before and why it moved, leads split into calls and forms against the target, booked jobs, whether recent changes worked, search terms that spent without a lead, opportunities, and a short list of the changes it would make next, best first, each with why, cost and how to undo. Read-only on a schedule; in chat it previews only the changes you pick. Use for 'weekly plan', 'weekly review', 'what should I change', 'search terms', 'wasted spend', 'negatives'."
license: MIT
metadata:
  author: AdPlug
  version: "1.0.0"
---

# Google Ads weekly plan

Follow the `google-ads-manager` skill for the rules and read each client's brief, then the change log. This is where the managing happens: what you'd do next, and why.

**Lead the message with the plan** (section 5): the changes you'd make next and what you're holding. Then the evidence behind it, sections 1 to 4.

## 1. Last week against the week before

Default: the last full week against the week before; where one week is too little data, also against the recent weekly average. Say the dates.

Per campaign: spend, clicks, CTR, cost per click, leads (by type: calls, forms) and cost per lead, against the target in the brief. Pacing for the month: campaigns on course to overspend or underspend at the current rate (Google can spend up to twice a daily budget on one day and balances it over the month).

For the big movers, give the reason, not just the number: a change in the change log or Google's change history, new search terms, a disapproval, budget running out, a quiet tracking action, the season. A table without reasons isn't a review.

Ask the user how many leads turned into booked jobs last week, and record it in the brief. That's the real result.

**Calls,** when call reporting is on: the calls made straight from the ads (`call_view`: status, duration, start time). Missed and very short calls, by day and hour, and whether they bunch up outside the brief's hours. A missed call is a lead paid for and lost; the fix may be the ad schedule, not the ads.

## 2. Changes due a check

Every change-log line whose check date has passed: what you expected, what happened, and whether to keep it, adjust it or undo it.

## 3. Wasted spend

**Search terms** (the search terms report, sorted by cost, over a window long enough for this account's volume; say which).

First pass, common junk for a local service business, always checked against the brief so you never cut what they sell:
- jobs and careers: job, jobs, career, salary, hiring, apprentice, license, school, training
- DIY and research: how to, diy, youtube, video, reddit, parts, tools, cost of parts
- shops and brands they don't sell: supply stores, big-box stores, product model numbers
- wrong service or wrong place: services they don't do, cities outside the service area
- complaints (scam, lawsuit, review): look at these, don't negate them automatically

Second pass, the rest against the brief: right service, right customer, right urgency. Classify on intent, not on a single word.

Then look for patterns: break the search terms that spent without a lead into one-, two- and three-word chunks and add up their cost and leads. The worst chunks become phrase negatives that catch terms you haven't seen yet. The chunks that bring leads are themes for keywords and ad groups.

**Negatives blocking good keywords:** compare existing negatives (campaign, ad group, shared lists) with the keywords. Flag any negative that blocks a keyword the business pays for, worst first where that keyword used to bring leads.

**Choosing the fix:**
- Negatives before pauses: precise, reversible, and the campaign keeps learning.
- Junk that shows up everywhere goes on a shared negative list attached to every campaign; waste in one campaign goes on that campaign.
- Phrase match by default for a pattern; exact when only that exact wording is the problem.
- Never negate the brand, never negate a term that has brought leads unless it's clearly the wrong service or customer (say why), and never add a negative that blocks one of the business's own keywords.

## 4. Opportunities

- Search terms that bring leads but aren't keywords yet: propose them as phrase or exact keywords in the right ad group.
- Campaigns under the target cost per lead but losing impression share to budget: the clearest case for more budget. Show the daily and monthly cost, and what more leads it may bring at the current rate.
- Losing impression share to rank: Quality Score parts (expected CTR, ad relevance, landing page experience) on the keywords that spend most, and what would fix each.
- Ads: which ads and assets are underperforming with enough impressions to judge, and what to test instead (AdPlug's Ads Generator skill writes new ads per ad group).
- Ad schedule and location: hours and areas where clicks spend without leads, against the brief's hours and service area.

## 5. The plan

End with a short list of the changes you'd make next, best for the goal first, each with:
- what changes and where,
- why, with the numbers,
- the principle behind it in one line,
- what you expect and when you'll check,
- the cost or saving per day and per month,
- how to undo it.

Hold anything that would stack too many changes on one campaign this week, and say what you're holding and why.

In a scheduled run, stop here: the user picks in chat. In a live chat, ask which ones they want, then preview exactly those, one change set at a time, and follow the yes, execute, read back and change log steps in the `google-ads-manager` skill.
