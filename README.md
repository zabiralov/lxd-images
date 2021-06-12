lxd-images
===

Deps:
---

* distrobuilder	<https://github.com/lxc/distrobuilder>
* GNU Make <https://www.gnu.org/software/make/>
* (or) BSD Make	<https://wiki.netbsd.org/tutorials/bsd_make/>

Build:
---

```
make DIST=<name>
```

where 'name' one of:

- centos7
- centos8
- bionic
- focal
- xenial

List builded images:
```
make ls
```

Clean builded images:
```
make clean
```
