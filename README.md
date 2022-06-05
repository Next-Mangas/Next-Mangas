<p align="center">
    <img src="https://avatars.githubusercontent.com/u/90077126" />
</p>
<h2 align="center">Next Mangas</h2>
<p align="center">
An open source, ad-free manga reading plataform made with Lua focused in performance and availability.
</p>
<p align="center">
    <img src="https://img.shields.io/badge/Lua%205.1.5-2e44e5.svg?&style=for-the-badge&logo=lua" />
    <img src="https://img.shields.io/badge/moonscript-f05a7f.svg?&style=for-the-badge" />
    <img src="https://img.shields.io/github/license/Next-Mangas/Next-Mangas?color=1dc36d&style=for-the-badge" />
</p>

---

## Setup

Lapis work better with lua 5.1, you can download a [binary](https://sourceforge.net/projects/luabinaries/files/5.1.5/) or compile it by yourself

```sh
wget https://www.lua.org/ftp/lua-5.1.5.tar.gz
tar -xf lua-5.1.5.tar.gz
cd lua-5.1.5
make <plataform>
sudo make install
```

You will need to install [luarocks](https://github.com/luarocks/luarocks/wiki/Download) and [OpenResty](https://openresty.org/en/installation.html).

## Install packages

To install packages, use scripts/packages.sh

```sh
bash packages.sh
```

If needed, use sudo.

## Compile

```sh
moonc -t src/server src/
```

## Start

```sh
cd server 
lapis server (dev | prod)
```

---

## Troubleshooting

Possible solution for [module 'lapis' not found](https://github.com/leafo/lapis/issues/309) (Linux)

```sh
git clone https://github.com/leafo/lapis.git
cd lapis
make luarocks51
# Move files
mv luarocks51/bin/lapis /usr/bin/
mv luarocks51/lib/lua/5.1 /usr/local/lib/lua/5.1
mv luarocks51/share/lua/5.1  /usr/local/share/lua/5.1
```