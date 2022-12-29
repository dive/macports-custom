# macports-custom
Additional packages for MacPorts

## Tips & Tricks

### Re-running a specific Port Phase

```
sudo port -vto destroot $portname
```

If you want to re-run a phase that was already completed, you'll have to edit `$(port dir $portname)/work/.macports.$portname.state`. Note that any modification of the Portfile will trigger a complete re-run, unless you specify `-o`.