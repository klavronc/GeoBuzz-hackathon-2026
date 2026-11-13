# GeoBuzz Hackathon 2026 · participant menu

A one-page menu with credentials, MCP configs and starter prompts, encrypted with
[StatiCrypt](https://github.com/robinmoisson/staticrypt) and served by GitHub Pages.

```
src/index.html   the readable page with the keys (git-ignored, never pushed)
docs/index.html  the encrypted page GitHub Pages serves
docs/robots.txt  asks search engines to stay away
encrypt.sh       turns src/ into docs/
```

## 1. Fill in the page

Open `src/index.html` and replace every `[PLACEHOLDER]`:

- In the `SERVERS` list near the bottom: MCP URL, key and auth header for each
  server. Paste a long key once here; the page builds ready-to-copy configs for
  Claude Desktop, Claude Code, VS Code, Cursor and other clients from it.
  If a provider uses another header (e.g. `x-api-key: {key}`), change `header`
  and `headerValue`.
- In the HTML: Terramira login, Tygron client download and trial-account
  instructions, Tygron API docs, results-form link, mentor names, badge colour.
- In `TRACKS`: the starter prompts (fill in the town for track 4).

Open the file in a browser to check it before encrypting.

## 2. Encrypt

Needs Node.js. Once, in the repo folder: `npm install`. Then, on Windows,
macOS or Linux:

```
npm run encrypt
```

It asks for the password and writes `docs/index.html`. (Git Bash, macOS or
Linux users can also run `./encrypt.sh`.) Print that password on
the table cards; don't put it on a slide.

## 3. Publish

1. Commit and push `docs/` (and this README, `encrypt.sh`, `.gitignore`).
   Check that `src/index.html` is **not** in the commit.
2. Repo → Settings → Pages → Source: *Deploy from a branch*, branch `main`,
   folder `/docs`.
3. The page appears at `https://<user>.github.io/<repo>/`. Put that link (or a
   QR code of it) on the last slide.

Note: GitHub Pages on a **private** repository needs a paid GitHub plan
(Pro, Team or Enterprise). On a free account, make the repo public: that is
safe here, because only the encrypted page and no keys are pushed.

## Changing a key later

Edit `src/index.html`, run `./encrypt.sh` again, commit and push `docs/`.

## After the event

Make sure the event keys are revoked, then unpublish Pages or delete the repo.
