# Appartement te huur — collage + Facebook-post

Marketingmateriaal voor de verhuur van het volledig ingerichte appartement (gated resort, Bonaire).

## Bestanden

| Bestand | Wat het is |
|---|---|
| `collage.html` | De collage, 1080×1920 (9:16 — Facebook/Instagram Stories & Reels-cover). Bron-bestand: hier pas je tekst, foto's en volgorde aan. |
| `render.sh` | Rendert `collage.html` naar `collage-9x16.png` met headless Chromium. |
| `photos/` | De foto's die in de collage staan: `p1.jpg` … `p8.jpg`. |
| `facebook-post.md` | De postteksten (NL + EN), plus een korte variant voor verhuurgroepen en plaatsingstips. |

## Foto's in de collage

| Slot | Kader | Foto |
|---|---|---|
| `p1-woonkamer-keuken.jpg` | groot, boven | Woonkamer met open keuken |
| `p2-zwembad.jpg` | breed | Gezamenlijk zwembad |
| `p3-badkamer.jpg` | klein | Badkamer / regendouche |
| `p4-palapa.jpg` | klein | Palapa met lange tafels |
| `p5-entree-tuin.jpg` | breed | Eigen entree met terras en tuin |

Liggende (horizontale) foto's werken het best; de tegels snijden automatisch bij (`object-fit: cover`),
dus zet het onderwerp in het midden van de foto. Valt een foto verkeerd uit, stuur de tegel dan bij met
`style="object-position:50% 62%"` op de `<img>` — zo staat de woonkamerfoto nu ingesteld.

Er is nog **geen foto van de slaapkamer**. Zodra die er is past hij in de onderste rij; de layout gaat dan
terug naar drie tegels op die regel.

## Aanpassen

- **Telefoonnummer / CTA:** onderaan `collage.html`, zoek op `[telefoonnummer]`.
- **Bijschriften op de foto's:** de `<span class="cap">`-teksten.
- **Kop:** de `<h1>` — houd het op twee regels, anders loopt de layout uit.
- **Kleuren:** de `:root`-variabelen bovenin komen uit de huisstijl van visitingbonaire (`assets/style.css`).

Na elke wijziging: `./render.sh` — daarna staat de nieuwe PNG klaar om te posten.
