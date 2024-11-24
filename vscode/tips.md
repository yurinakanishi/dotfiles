https://stackoverflow.com/questions/75746413/in-vscode-how-do-i-jump-to-the-results-of-find-in-files-without-using-the-mou
`F4` key to go next search in search tab
Equivalent keybinnding's setting is the following
```
{
  "key": "ctrl+n",
  "command": "search.action.focusNextSearchResult",
  "when": "hasSearchResult && searchViewletVisible"
}
```

