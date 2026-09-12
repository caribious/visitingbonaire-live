# Appartement te huur — collage + Facebook-post

Marketingmateriaal voor de verhuur van het volledig ingerichte appartement (gated resort, Bonaire).

## Bestanden

| Bestand | Wat het is |
|---|---|
| `collage.html` | De collage, 1080×1920 (9:16 — Facebook/Instagram Stories & Reels-cover). Bron-bestand: hier pas je tekst, foto's en volgorde aan. |
| `render.sh` | Rendert `collage.html` naar `collage-9x16.png` met headless Chromium. |
| `photos/` | De foto's die in de collage staan: `p1.jpg` … `p8.jpg`. |
| `facebook-post.md` | De postteksten (NL + EN), plus een korte variant voor verhuurgroepen en plaatsingstips. |

## Fotovolgorde

| Slot | Kader | Bedoeld voor |
|---|---|---|
| `p1.jpg` | groot, liggend | Woonkamer — je beste, lichtste foto |
| `p2.jpg` | medium | Keuken |
| `p3.jpg` | medium | Slaapkamer |
| `p4.jpg` | klein | Badkamer |
| `p5.jpg` | klein | Wasmachine / berging |
| `p6.jpg` | klein | Tuin |
| `p7.jpg` | breed | Gezamenlijk zwembad |
| `p8.jpg` | klein | Zonnepanelen / accu |

Liggende (horizontale) foto's werken het best; de tegels snijden automatisch bij (`object-fit: cover`),
dus zet het onderwerp in het midden van de foto.

## Aanpassen

- **Telefoonnummer / CTA:** onderaan `collage.html`, zoek op `[telefoonnummer]`.
- **Bijschriften op de foto's:** de `<span class="cap">`-teksten.
- **Kop:** de `<h1>` — houd het op twee regels, anders loopt de layout uit.
- **Kleuren:** de `:root`-variabelen bovenin komen uit de huisstijl van visitingbonaire (`assets/style.css`).

Na elke wijziging: `./render.sh` — daarna staat de nieuwe PNG klaar om te posten.
