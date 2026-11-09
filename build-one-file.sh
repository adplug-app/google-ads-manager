#!/bin/sh
# Rebuilds google-ads-manager-for-openai-dots.md from DOT.md and the skills.
set -e
cd "$(dirname "$0")"
strip() { awk 'BEGIN{c=0} /^---$/ && c<2 {c++; next} c>=2' "$1"; }
OUT=google-ads-manager-for-openai-dots.md
{
  echo "# Google Ads Manager by AdPlug (one file)"
  echo
  echo "Everything in one file: the instructions for an OpenAI dot, the Google Ads Manager skill, its four routines and their references. Where a section mentions a skill or \`references/<file>.md\`, it's further down this file. Source: https://github.com/adplug-app/google-ads-manager"
  echo
  echo "---"
  echo
  cat DOT.md
  for s in google-ads-manager google-ads-daily-check google-ads-weekly-plan google-ads-opportunity-hunt google-ads-monthly-report; do
    echo; echo "---"; echo; echo "<!-- skill: $s -->"; echo
    strip "skills/$s/SKILL.md"
  done
  for f in brief-template best-practice diagnose tools routines; do
    echo; echo "---"; echo; echo "# references/$f.md"; echo
    sed '1{/^# /d;}' "skills/google-ads-manager/references/$f.md"
  done
} > "$OUT"
echo "built $OUT"
