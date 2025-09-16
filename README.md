# Web Console Engine Proof-of-Concept

In this Rails app, we experiment with building a route `/rails/console` which exposes a Rails Console via a web UI. This is intended to allow easy access to `rails console` in production for non-critical apps where security is not paramount.

- Documentation for the app and for libraries used lives in `docs/`.
- Some libraries' source code is cloned into `tmp/vendor`, for reference.
