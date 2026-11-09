# The routines

A schedule turns "I'll keep an eye on it" into something that happens. These routines make the manager proactive: the user hears from it every morning, every Monday and every month, and after each change, without having to ask.

**The rule for every scheduled run:** read, analyse, report and propose. Never preview or execute a change, never turn anything on, never send anything to anyone else. The user approves proposals in a normal chat, one change at a time. A run may update the brief's "Where we are" line and open issues.

| Routine | When | Skill |
|---|---|---|
| Daily check | Every morning except Monday | `google-ads-daily-check` |
| Weekly plan | Every Monday morning | `google-ads-weekly-plan` |
| Monthly report | First working day of the month | `google-ads-monthly-report` |

The weekly plan also checks every logged change past its check date, so there's no separate schedule per change. Each run calls AdPlug and counts toward the plan's monthly requests, which is why the daily check stays small.

## The prompts

They change nothing in the account. With one client, "each client" is just that one. In a dot, start each saved schedule with "Read Google Ads Manager.md and each client's brief and change log on your computer first."

**Daily check:**
> Run the Google Ads daily check for each client, in one message grouped by client: ads running, yesterday's spend and leads against a normal day, tracking still recording, anything disapproved, pages behind the ads that don't load, and any change in Google's change history that isn't in our change log, with who made it. One line if all is fine; otherwise only what needs me, with the fix you'd propose. Ideas wait for Monday. Change nothing.

**Weekly plan:**
> Run the Google Ads weekly plan for each client. Lead with the changes you'd make next, best first, each with why, cost per day and month, and how to undo, plus what you're holding. Then the why: leads (calls, forms) and cost per lead against the target and recent weeks, missed or short calls from the ads, search terms that spent without a lead, pacing, and whether changes past their check date worked. Ask me how many leads became booked jobs. Change nothing; I'll pick in chat.

**Monthly report:**
> Write the Google Ads monthly report as one short PDF per client that I can send them: leads from calls and forms, cost per lead against the target and the month before, the booked jobs I gave you, what worked, what we changed and whether it worked, next month's plan, and what we need from the client. Plain English. Change nothing.

**When it happens:**
> Leads for <client> dropped since <day>. Find out why: tracking, budget, disapprovals, a change we made, the landing page, search terms or rising cost per click. Give me the likeliest cause with the numbers and the fix you'd propose. Change nothing until I say yes.

## Lock changes first

In ChatGPT, open Settings, then Plugins, then the AdPlug Google Ads plugin, then Permissions, and choose **Allow read actions**. ChatGPT then reads without asking and asks before any change. AdPlug marks its reports and previews as read actions and its execute tools as changes, so every real change stops for a yes. Don't choose "Allow all actions" or "Always allow".

## Where to run them

- **OpenAI dot:** follow `DOT.md`. A dot runs saved schedules on its own and keeps the brief and change log on its computer.
- **ChatGPT:** keep one ongoing conversation with the Google Ads Manager file attached, and ask it to schedule the routines (or create them under Scheduled). Results appear in Scheduled and in the conversation; turn on push or email notifications under Settings, then Notifications. When a task wants to take an action that needs approval, it pauses until the user reviews it. Paste the brief into the task, or keep the task in the same conversation as the brief: OpenAI's pages disagree on whether scheduled tasks can read files stored in a Project. If a scheduled run can't reach AdPlug, keep the schedule as a reminder and run the check in a normal chat.
- **Claude:** upload the skills under Settings, then Customize, then Skills, then Add (https://claude.ai/new#settings/customize-skills), and add AdPlug's Google Ads connector. Scheduled tasks in Cowork (Pro, Max, Team and Enterprise) run in Anthropic's cloud with the connectors set up in Cowork. Claude Code's cloud scheduled tasks run connector changes without asking, so use them only with prompts that change nothing.
