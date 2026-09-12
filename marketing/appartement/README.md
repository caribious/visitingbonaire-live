# Appartement te huur — collage + Facebook-post

Marketingmateriaal voor de verhuur van het volledig ingerichte appartement (gated community, Bonaire).

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
| `p1-woonkamer-keuken.jpg` | breed, boven | Woonkamer met open keuken |
| `p6-slaapkamer.jpg` | naast de woonkamer | Slaapkamer |
| `p2-zwembad.jpg` | breed | Gezamenlijk zwembad |
| `p3-badkamer.jpg` | klein | Badkamer / regendouche |
| `p7-avond.jpg` | klein, staand | Verlichte binnentuin 's avonds |
| `p4-palapa.jpg` | klein | Palapa met lange tafels |
| `p5-entree-tuin.jpg` | breed, onder | Eigen entree met terras en tuin |

De tegels snijden automatisch bij (`object-fit: cover`). Valt een foto verkeerd uit, stuur de tegel dan bij
met `style="object-position:50% 62%"` op de `<img>` — eerste waarde is horizontaal, tweede verticaal.
Zo staan de woonkamer (58% verticaal), de slaapkamer (68% horizontaal), de badkamer en de avondfoto nu
ingesteld. De avondfoto krijgt daarnaast `class="night"`: een lichte helderheidscorrectie zodat die tegel
niet dichtvalt op een telefoonscherm.

Staande foto's horen in een van de drie kleine vakken onderin; liggende foto's in de brede vakken.

## Taalvolgorde

Engels is de hoofdtaal, Nederlands de tweede. In de collage betekent dat: kop, bijschriften bij de foto's,
de bovenste regel van elke feature en de prijsbalk in het Engels; de Nederlandse tekst staat eronder in
kleiner, gedempt grijs (de regel onder de kop en de tweede regel van elke feature). In `facebook-post.md`
staat het Engelse blok boven het Nederlandse. Houd die volgorde aan als je iets toevoegt.

## Aanpassen

- **Telefoonnummer / CTA:** onderaan `collage.html`, zoek op `[telefoonnummer]`.
- **Bijschriften op de foto's:** de `<span class="cap">`-teksten.
- **Kop:** de `<h1>` — houd het op twee regels, anders loopt de layout uit.
- **Kleuren:** de `:root`-variabelen bovenin komen uit de huisstijl van visitingbonaire (`assets/style.css`).

Na elke wijziging: `./render.sh` — daarna staat de nieuwe PNG klaar om te posten.
