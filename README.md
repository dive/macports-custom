# macports-custom
Additional packages for MacPorts

## Packages

- [Firefox](https://www.mozilla.org/firefox) (binary, stable version)
- [Iosevka](https://github.com/be5invis/Iosevka) font (binary)

### Deprecated

- Emacs (source, with tree-sitter support). The changes adopted by the official MacPorts.

## Installation

The following example will checkout the repository and add a local Portfile repository to the default MacPorts configuration. Check the [Local Portfile Repositories](https://guide.macports.org/index.html#development.local-repositories) guide for more information.

```
git clone git@github.com:dive/macports-custom.git
cd macports-custom
sudo sh ./scripts/add-local-repository.sh
```

## Tips & Tricks

### Re-running a specific Port Phase

```
sudo port -vto destroot $portname
```

If you want to re-run a phase that was already completed, you'll have to edit `$(port dir $portname)/work/.macports.$portname.state`. Note that any modification of the Portfile will trigger a complete re-run, unless you specify `-o`.
