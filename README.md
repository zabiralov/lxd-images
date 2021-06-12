lxd-images
===

Deps:
---

* distrobuilder	<https://github.com/lxc/distrobuilder>
* GNU Make <https://www.gnu.org/software/make/>

Build:
---

```
make DIST=<name>
```

where <name> one of:

- centos7
- centos8
- bionic
- focal

List builded images:
```
make list
```

Clean builded images:
```
make clean
```
