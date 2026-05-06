# Ion Parse SQL Flow Walkthrough

This walk-through keeps the domain vocabulary close to the data instead of burying it in prose.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 159 | ship |
| stress | grammar width | 221 | ship |
| edge | label quality | 141 | ship |
| recovery | error locality | 248 | ship |
| stale | token drift | 162 | ship |

Start with `recovery` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`recovery` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
