# ion-parse-sql-flow

`ion-parse-sql-flow` is a compact Ruby repository for parsers, centered on this goal: Implement a Ruby parsers project for sql storage recovery, using log and snapshot fixtures and replay consistency checks.

## Project Rationale

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how token drift and label quality should influence a review result.

## Ion Parse SQL Flow Review Notes

`recovery` and `edge` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Feature Set

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/ion-parse-sql-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `error locality` and `label quality`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The added Ruby path is deliberately direct, with fixtures doing most of the explaining.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

The check exercises the source code and the review fixture. `recovery` is the high score at 248; `edge` is the low score at 141.

## Next Improvements

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
