
# Example Nix-Project with npm

This is a demonstration of a project that uses `npm2nix` through `np`.

# Getting Started

```
# 1. clone the repo and cd into it

# 2. Install np
# This will be much easier when np is published on hackage
nix-env -i -E 'x: import ((import <nixpkgs> {}).fetchFromGitHub { owner = "roberth"; repo = "np"; rev = "e12e84e58015b82b9aceae5b35d9276c5500d43b"; sha256 = "0vhpc7m716yir3g9al37w7a1rp2g1irwvd8gx9jw8ydbzmh96j93"; }) {}'

# 3.
np help


```