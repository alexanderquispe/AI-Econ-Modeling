# Getting papers through the PUCP library

Practical notes from a sweep run on 22 August 2026. Everything here was tested,
not guessed — where something is unverified, it says so.

## The one URL that matters

PUCP's proxy is **elogim**. The general entry point is:

```
https://pucp.elogim.com/auth-meta/login.php?url=<PUBLISHER URL>
```

Paste any publisher URL after `url=` and, if the University subscribes, it lands
on the article with institutional access already applied. The proxy then rewrites
the host to `<resource>.pucp.elogim.com` — e.g. `jstor.pucp.elogim.com`.

Two consequences worth knowing:

- **The session is cookie-based.** `curl` and `wget` will not work, even with the
  proxied URL: they get the login page. It has to be a logged-in browser.
- **A personal publisher account is not the same thing.** Being signed in to
  JSTOR with your own account gives you *read online* only. The download button
  appears only under the institutional session.

## Verified working

These were used to retrieve full text during the sweep:

| Resource | Proxy host | Evidence |
|---|---|---|
| **JSTOR** | `jstor.pucp.elogim.com` | Downloaded Jovanovic & Nyarko (Econometrica 1996) and Garicano (JPE 2000) |
| **Science / AAAS** | `science.pucp.elogim.com` | Downloaded Noy & Zhang (2023) |
| **Wiley Online Library** | `wiley.pucp.elogim.com` | Article opens with PUCP branding; PDF fetches but the download consistently stalls |
| **AEA** (AER, JEL, AEJ) | `aeaweb.pucp.elogim.com` | Article page opens, PDF marked "Complimentary" |
| **SSRN** | no proxy needed | Free; only blocked to automated tools, fine in a browser |

For JSTOR there is a shortcut that skips the article page entirely:

```
https://jstor.pucp.elogim.com/stable/pdf/<DOI>.pdf?acceptTC=1
```

## Confirmed NOT available

- **Management Science / INFORMS.** The proxy host `pubsonline.pucp.elogim.com`
  resolves, but the article page shows "Request Access": the alias exists without
  a subscription behind it. Use the SSRN working paper instead.

**A resolving host does not prove a subscription.** INFORMS is the cautionary
case: probing hostnames tells you what is *configured*, not what is *licensed*.

## Listed in the library catalogue

Extracted from the links on biblioteca.pucp.edu.pe, which use the `auth-meta`
pattern above:

ACM Digital Library · ACS Publications · AIP Publishing · American Physical
Society · Annual Reviews · APA PsycNet · Brill · Cambridge Core · De Gruyter
Brill · EBSCO (search and publications) · Edward Elgar Online · ProQuest Ebook
Central · ebooks7-24 · Ingebook · AEA

## Hosts that respond on the proxy

A sweep of candidate hostnames returned HTTP 200 for these. Treat it as a list of
**candidates to try**, not of confirmed subscriptions:

`acs` · `aeaweb` · `aps` · `cambridge` · `clarivate` · `degruyter` · `ebsco` ·
`emerald` · `ieeexplore` · `iopscience` · `jstor` · `mitpress` · `nature` ·
`pnas` · `projectmuse` · `pubsonline` · `sage` · `science` · `sciencedirect` ·
`scopus` · `springer` · `springerlink` · `tandfonline` · `taylorfrancis` ·
`ucpress` · `vlex` · `webofscience` · `wiley`

Annual Reviews appears in the catalogue but did not respond to the hostname
probe, which is the clearest evidence that the probe undercounts. When in doubt,
use the `auth-meta/login.php?url=` form.

Notably **absent**: Oxford University Press (`academic.oup.com`). That is why the
QJE version of Brynjolfsson, Li & Raymond is not here and the NBER working paper
is used instead.

## The download problem, and the way around it

Chrome renders PDFs in its built-in viewer instead of saving them, and that
viewer cannot be driven programmatically. Clicking a publisher's download button
therefore often opens a tab and leaves no file on disk.

What works, from the browser console on the article page (same origin, so the
session cookie travels):

```js
const r = await fetch('/path/to/article.pdf', {credentials: 'include'});
const b = await r.blob();
const a = document.createElement('a');
a.href = URL.createObjectURL(b);
a.download = 'name.pdf';
document.body.appendChild(a); a.click();
```

This worked on JSTOR and Science. It fails on Wiley, whose article pages are
heavy enough that the renderer freezes; there, download by hand.
