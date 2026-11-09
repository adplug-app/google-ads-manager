# AdPlug's Google Ads tools

Names as AdPlug lists them. Your app may show them with a prefix (for example the plugin or connector name), so match on the name and what the tool does.

## Reading

- `adplug_get_status`: what's connected, the plan, and `write_access`. Once per session.
- `google_ads_list_accounts`: every account with name, currency and manager (MCC) tree. The manager account is worked out for you.
- `google_ads_account_performance`: several accounts in one call; `compare=true` adds the previous period.
- `google_ads_campaign_performance`: `level` = campaign (impression share, lost to budget, lost to rank, bid strategy, targets), ad, keyword (Quality Score, first page and top of page bids), product, product_group, bidding_strategy. `campaign_id` narrows it. Page through until `next_page_token` is empty.
- `google_ads_daily_trends`: day by day, for the account or one campaign.
- `google_ads_conversion_performance`: conversions and value per conversion action.
- `google_ads_search_terms`: the search terms report, sorted by cost, with the match type that triggered each term.
- `google_ads_shared_set_criteria`: what's inside shared negative keyword lists.
- `google_ads_keyword_ideas`: Keyword Planner, from seed keywords or a website. Always pass the service area as `geo_targets` and the `language`; without them it answers for the United States in English.
- `google_ads_recommendations`: Google's own suggestions, with Google's impact estimate. Present them as Google's, not yours.
- `google_ads_query`: any GAQL query (conversion actions, policy status and disapprovals, landing pages, change history, network and location settings, assets). Call `google_ads_gaql_doc` for syntax and `google_ads_reporting_view_doc` for a view's fields before writing one.

## Changing

- `google_ads_preview_mutation`, then `google_ads_execute_mutation` with the `preview_id` it returns. A preview changes nothing and expires after 15 minutes. `operation="help"` lists every change AdPlug can make; `params={"operation": NAME}` gives one operation's fields.
- `google_ads_preview_add_negatives`, then `google_ads_execute_add_negatives`: negative keywords on a campaign, an ad group or a shared list.
- Money is plain currency in the account's currency.

## Not available through Google's API

Auction Insights, and creating or changing Video campaigns.
