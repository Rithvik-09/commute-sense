# Experiment 2 — Widget Reference Guide

| Widget | Typical use | Example in Commute Sense |
|---|---|---|
| MaterialApp | App-level configuration | Root app |
| Scaffold | Standard page structure | Main screen |
| AppBar | Top application bar | Commute Sense title |
| Text | Display text | Route and status labels |
| Icon | Display a symbol | Car icon |
| Container | Size and decorate content | Banner background |
| Card | Group related information | Commute information |
| Row | Horizontal layout | Side-by-side details |
| Column | Vertical layout | Main content sections |
| Stack | Overlay widgets | Banner icon and text |
| ElevatedButton | Primary action | Start Commute |
| SingleChildScrollView | Scrollable single child | Small-screen support |

## Design note
Extract repeated UI into a custom widget when it improves readability. Use scrolling or flexible constraints when content may exceed available screen space.