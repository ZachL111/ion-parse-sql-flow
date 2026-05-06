# Review Journal

The repository goal stays the same: implement a Ruby parsers project for sql storage recovery, using log and snapshot fixtures and replay consistency checks. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 159, lane `ship`
- `stress`: `grammar width`, score 221, lane `ship`
- `edge`: `label quality`, score 141, lane `ship`
- `recovery`: `error locality`, score 248, lane `ship`
- `stale`: `token drift`, score 162, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
