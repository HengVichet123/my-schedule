#!/bin/bash
cd "$(dirname "$0")"

# Copy latest school data
cp ../shift-timetable/school_shifts.json ./school_shifts.json

# Push to GitHub
git add school_shifts.json
git commit -m "Sync school data" --allow-empty
git push

echo "Done! Open the app on your phone and tap Sync."
