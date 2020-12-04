# choco-league-of-legends
Chocolatey installer for League of Legends.

Issues? Bugs? Suggestions? Create an issue on [GitHub](https://github.com/quinnjn/choco-league-of-legends/), or make a pull request.

## Development
1. Make changes to the code.

1. Build nupkg:
   ```
   choco pack
   ```

1. Then try install:
   ```
   choco install league-of-legends -dv -s .
   ```

1. Then try uninstall:
   ```
   choco uninstall league-of-legends -dv -s .
   ```

Then submit a PR!