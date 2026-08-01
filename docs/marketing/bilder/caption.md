# Recruiting-Bilder — Style C1 „Heat" (Favorit)

Einzelne Bilder zum Posten auf IG (Story/Feed/Carousel) und TikTok (Photo Mode) —
auch auf privaten Accounts. Tonalität: persönlich, als würdest du selbst einen Job
weitervermitteln. Reihenfolge jeweils: `bild-1.png` → `bild-2.png` → `bild-3.png`.

## Formate

- **`style-c1-heat/`** — 1080×1920 (9:16) für Story, Reels-Cover, TikTok Photo Mode.
- **`style-c1-heat/feed/`** — 1080×1350 (4:5) für den Instagram-Feed / Carousel.

Style C1 „Heat": Neon-Gradient (Pink→Orange→Gelb), Sticker-Optik, harte Schatten.
Die vier weiteren Style-Entwürfe (A „Signal", B „Klartext", C2 „Acid", C3 „Pop")
liegen nur noch als HTML-Quellen unter `quellen/` — die PNGs wurden entfernt,
lassen sich aber jederzeit neu rendern (siehe unten).

Inhalt der Serie: Hook → Anforderungen (motiviert, wachsen wollen, Disziplin,
gut reden) → Verdienst + CTA.

## Die Zahlen (Bild 3)

| Rolle | Verdienst |
|---|---|
| Setter | 500 € pro Termin, der zum Abschluss führt |
| Closer | 12,5 % Provision ≈ 1.575–1.800 € pro Abschluss — Ø 2–5 Abschlüsse/Monat (= 3.150–9.000 €/Monat) |
| Empfehlung (Repost) | 250 €, wenn über deinen Repost jemand startet |

**CTA / DM-Codewörter:** `TERMIN` (Setter) und `CLOSER` (mit Sales-Erfahrung) —
konsistent mit Video-Skript und DM-Funnel.

## Caption-Vorschlag

> Kurz in eigener Sache: Ich vermittle gerade einen Job im Vertrieb — 100 % remote
> und machbar neben Uni oder Hauptjob. 🎯
>
> Was du mitbringen musst: Motivation, Bock zu wachsen, Disziplin — und du kannst
> gut mit Menschen reden.
>
> Das Ganze rechnet sich: 500 € pro vermitteltem Termin als Setter. Als Closer
> gibt's 1.575–1.800 € pro Abschluss — und der Schnitt liegt bei 2–5 Abschlüssen
> im Monat. Wenn du selbst nicht kannst, aber wen kennst: Repost reicht —
> startet die Person über dich, gibt's 250 € für dich.
>
> Klingt nach dir? Schreib mir **„TERMIN"** per DM, wenn du als Setter starten
> willst — oder **„CLOSER"**, wenn du schon Sales-Erfahrung hast. Ich stell den
> Kontakt her. Kein Spam, versprochen.

**Hashtags (dezent halten, private Accounts brauchen nicht viele):**
`#nebenjob #studentenjob #vertrieb #remotejob #salesjob`

## Story-Variante

Nur Bild 1 + Bild 3 funktionieren auch als Zweier-Story (Hook + Zahlen/CTA).

## Neu rendern

Quelldateien (HTML/CSS) liegen in `quellen/style-*/`. Die C1-Quellen laden ihre
Fonts (Boldonse, Geist Mono, Inter) per Google-Fonts-Link, brauchen beim Rendern
also Internet. Unter Windows: `quellen/render.ps1` (rendert per Headless-Chrome
mit 180 px Überhang und schneidet exakt zu — Workaround für den
Chromium-Viewport-Bug, der sonst den Footer abschneidet):

```powershell
.\quellen\render.ps1 -HtmlPath .\quellen\style-c1-heat\slide3.html -OutPng .\style-c1-heat\bild-3.png                # 9:16
.\quellen\render.ps1 -HtmlPath .\quellen\style-c1-heat\feed-slide3.html -OutPng .\style-c1-heat\feed\bild-3.png -Height 1350   # 4:5
```

## Hinweis

Vergütungs- und Prämienangaben vor dem Posten einmal intern bestätigen
(Auszahlungsbedingungen der 250 €), damit alles sauber belegbar ist.
