---
name: google-ads-monthly-report
description: "A client-ready monthly Google Ads report, run on the first working day of the month as part of AdPlug's Google Ads Manager. A short PDF in plain English: leads from calls and forms, cost per lead against the target and the month before, booked jobs, what worked and why, what changed and whether it worked, and next month's plan. Read-only. Use for 'monthly report', 'client report', 'report for my client', 'how did last month go'."
license: MIT
metadata:
  author: AdPlug
  version: "1.0.0"
---

# Google Ads monthly report

Read-only. Follow the `google-ads-manager` skill and read the client's brief and change log first. One PDF per client.

Ask who reads it if the brief doesn't say (the business owner, a marketing lead), and write for them: plain English, no IDs, no jargon, no raw tool output. A client-ready PDF, or slides if they prefer, never a spreadsheet.

## What goes in

1. **The summary,** in a few sentences: leads and cost per lead last month, against the target and against the month before, and the one thing that mattered most.
2. **Results,** by campaign where it helps: spend, clicks, leads split into calls and forms, cost per lead. Booked jobs from the brief's weekly record, and what they're worth when the brief says so.
3. **What worked and what didn't, and why:** the search terms, services, areas and hours that brought leads, and the ones that spent without them.
4. **What we changed** (from the change log) and what each change did.
5. **Next month:** the changes planned, and what's needed from the client: budget, offers, landing pages, call handling, approvals.

Keep currencies as they are, and say the dates covered. Recent days may still be missing late conversions: say so when it changes the picture.

Then update the brief's "Where we are" line.
