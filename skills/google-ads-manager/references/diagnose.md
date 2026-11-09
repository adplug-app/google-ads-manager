# Why something stopped or dropped

Read-only. Find the cause, show the evidence, and hand over the fix as a proposal. Read the brief first: a drop only matters against the goal.

## 1. Pin down what moved

- Which campaign, ad group or ad, and which metric: spend, impressions, clicks, leads, cost per lead.
- Compare the problem period with a normal one of the same length. Use the daily trends report to find the day it changed. Today is partial, and recent days undercount leads still coming in.
- One campaign or the whole account? Account-wide drops usually mean tracking, billing, a policy problem or the market. One campaign usually means a change, a budget, a bid or an ad.

## 2. Check the boring causes first

Most drops are one of these.

- **Someone changed something.** Google's change history (`change_event`, last 30 days only, with a LIMIT) and the brief's change log. A budget cut, a bid strategy switch, a new conversion goal, paused keywords or rewritten ads that line up with the day it moved.
- **Tracking went quiet.** A conversion action that normally records and recorded nothing. If clicks held steady and leads fell to nothing overnight, suspect the tag or the call setup before the campaign.
- **Billing or account status.** `campaign.primary_status` and `campaign.primary_status_reasons` say why a campaign is limited or not serving.
- **Disapprovals,** including "destination not working".
- **The landing page.** Open the final URLs. A 404, a broken form, a missing phone number or a slow page kills leads while clicks carry on.
- **The phone.** Calls going to voicemail or an old number. Ask the user.
- **Season and market.** Weather (freezes, heatwaves), holidays, a competitor's push. Say so and move on.

## 3. Walk the tree

**Not spending**
- Limited by budget (impression share lost to budget): raise the budget or free spend with negatives.
- Losing on rank (impression share lost to rank, low Quality Score, bids below first page): improve relevance and the landing page, or revisit the bid target.
- Bid target too tight: a target cost per lead far stricter than what the campaign achieves.
- Location or schedule too narrow for the budget.
- New or just changed: still learning. Say so, and say when it's fair to judge.

**Spending, but few clicks**
- Ads that don't mention what the search asks for, repetitive headlines, weak ad strength.
- Brand clicks falling: a competitor may be bidding on the brand. Check the brand campaign's impression share and top-of-page rate.

**Clicks, but no leads**
- Tracking first.
- Search terms drifted: broad match or close variants buying the wrong intent (the wasted spend steps in the `google-ads-weekly-plan` skill).
- The landing page doesn't match the ad, or the form or phone link is broken on mobile. Compare devices.
- Hours: clicks arriving when nobody answers.

**Leads, but not enough**
- Under the target cost per lead and capped by budget: the case for more budget, with the daily and monthly cost.
- Missing services or areas: themes the brief covers with no keywords.

## 4. Report

Lead with the most likely cause and the evidence, then the other candidates still in play, each with what you saw (numbers, dates), how sure you are and what would confirm it, and the fix as a proposal. End with what you couldn't check. If the campaign is still learning or changed in the last few days, say "leave it for now" and when to look again, and add that date to the change log.
