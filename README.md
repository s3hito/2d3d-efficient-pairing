# 2d3d-efficient-pairing
Cieľom práce je navrhnúť a implementovať efektívny pipeline na párovanie lokálnych príznakov medzi 2D obrazmi a 3D bodovými mračnami bez potreby CAD modelov. Práca kombinuje moderné metódy počítačového videnia — segmentáciu pomocou SAM3, rekonštrukciu 3D priestoru pomocou COLMAP (Structure from Motion) a odhad polohy objektov pomocou OnePose. Výsledný systém by mal byť nasaditeľný v reálnom čase aj na bežnom CPU hardvéri.
# Efektívne Párovanie 2D-3D Lokálnych Príznakov


## Kalendár úloh

| Obdobie | Úloha | Stav |
|---|---|---|
| Feb 2025 | Štúdium problematiky lokálnych príznakov (SIFT, SuperPoint, LightGlue, XFeat) | Splnené |
| Feb 2025 | Prečítanie kľúčových článkov (OnePose, LightGlue, XFeat, COLMAP) | Splnené |
| Mar 2025 | Inštalácia a konfigurácia COLMAP, prvé experimenty s rekonštrukciou budovy | Splnené |
| Mar 2025 | Integrácia SAM3 — generovanie masiek pomocou textových promptov | Splnené |
| Apr 2025 | Experiment: COLMAP s maskami vs. bez masiek, porovnanie kvality mračna bodov | Splnené |
| Apr 2025 | Experiment: COLMAP na objektoch s odrazovým povrchom (kovová miska) | Splnené |
| Apr–Máj 2025 | Spustenie OnePose v modernom prostredí (riešenie závislostí, CUDA kompatibilita) | Splnené |
| Máj 2025 | Spísanie teoretického prehľadu a experimentov v LaTeX | Splnené |
| Jún–Aug 2025 | Integrácia XFeat do OnePose pipeline namiesto SuperPoint+LightGlue | Plánované |
| Sep–Okt 2025 | Náhrada Apple ARKit pomocou COLMAP + SAM3 segmentácie | Plánované |
| Nov–Dec 2025 | Tréning modelu na vlastnom datasete | Plánované |
| Jan–Mar 2026 | Kvantitatívna evaluácia na reálnych dátach (presnosť, spoľahlivosť, rýchlosť) | Plánované |
| Apr–Máj 2026 | Finalizácia diplomovej práce a odovzdanie | Plánované |
