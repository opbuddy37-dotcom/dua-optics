DUA OPTICS APP - SUPABASE CONNECTED VERSION

This version connects the app to the supplied Supabase project.

1. In Supabase Dashboard open SQL Editor.
2. Run SUPABASE_SETUP.sql to create browser read/write policies on customers, visits and audit_logs.
3. Host this folder on HTTPS (or use a local web server for testing). Do not open index.html directly with file:// if the browser blocks module/network requests.
4. Open the app. Existing Supabase records will load automatically; new/edited records are saved to Supabase and also cached on the device.

IMPORTANT: The publishable key is intended for client-side use. Never put a Supabase secret/service_role key in this app.

The app still includes JSON backup/restore as an additional backup method.
