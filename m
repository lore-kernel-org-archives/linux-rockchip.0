From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
Date: Thu, 23 Jan 2020 12:03:01 -0500
Message-ID: <20200123170301.GX26536@bill-the-cat>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
 <20200120172240.GX8732@bill-the-cat>
 <8dddd74f-7b17-a614-48ab-aea0bc9148db@csgraf.de>
 <CAMty3ZAq+aDMuEKGYk9UyTS4Z4=TgtNcKRDtiBC-=mqRWUWAyA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="cxfMsoqvp1jUizWj"
Return-path: <u-boot-bounces@lists.denx.de>
Content-Disposition: inline
In-Reply-To: <CAMty3ZAq+aDMuEKGYk9UyTS4Z4=TgtNcKRDtiBC-=mqRWUWAyA@mail.gmail.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, U-Boot-Denx <u-boot@lists.denx.de>, Alexander Graf <agraf@csgraf.de>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


--cxfMsoqvp1jUizWj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 23, 2020 at 10:25:50PM +0530, Jagan Teki wrote:
> On Mon, Jan 20, 2020 at 11:10 PM Alexander Graf <agraf@csgraf.de> wrote:
> >
> >
> > On 20.01.20 18:22, Tom Rini wrote:
> > > +A few people that may have insight to my question
> > >
> > > On Sat, Dec 21, 2019 at 01:24:31PM +0530, Jagan Teki wrote:
> > >
> > >> Add distro boot command support for SPI flash.
> > >>
> > >> This distro boot will read the boot script at specific
> > >> location at the flash and start sourcing the same.
> > >>
> > >> The common macro like BOOTENV_SHARED_FLASH would help
> > >> to extend the support for nand flash in future.
> > >>
> > >> Cc: Tom Rini <trini@konsulko.com>
> > >> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > What distro is this for?  My concern here is that hundreds of boards
> > > (literally) grow by a few hundred bytes to add in this bit of additio=
nal
> > > default logic.  That's not a big problem if distributions are now goi=
ng
> > > to be using SPI flash as where they're programming in their bootscrip=
t.
> > > But, who is doing that?  Thanks!
> >
> >
> > I am not aware of any "distro" that puts a U-Boot script at offset 0 of
> > the SPI Flash.
> >
> > Traditionally, SPI Flash boot setups were always very hand crafted -
> > exactly the opposite of what distro boot is for. That said, I think
> > supporting SPI Flash boot for rk3399 is great! Albeit I would personally
> > only store U-Boot and the environment on SPI, not the target OS.
> >
> > Jagan, is putting a U-Boot script on the SPI Flash something you thought
> > of or something that the rk3399 reference board already does? If it's
> > the latter, maybe you could add it as a board custom boot function?
>=20
> Yes it would be later that points to. rk3399 has SPI flash layout and
> out of which one of offset(script_offset_f=3D0xffe000 from
> include/configs/rk3399_common.h) stored the programming script.

So I'm not sure why we're adding distro boot support to SPI flash.  What
is the reference platform storing there exactly?  Thanks!

--=20
Tom

--cxfMsoqvp1jUizWj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl4p0b4ACgkQh/n2NdMd
dlIxeA/7BF5iuPhR9EtbXGIG77zygutE+fEj9UXANy3IP9B53y5EIbkgckKS2fR8
T+ZJJiFBEyZsc9bDubxeWfwlXF84yP98Nce/MKeoF7EI9Z9EPsGaZKZ2Mgd1CVsi
LfnFWdEvr8n0yhz2iShZTp7Ojgsm9hWMFonwo25iRvOjyBmzVVoQ0oe7AraqJEz0
HdmIhGuQC2Ob3K9dcy09JdGS3TT+SgJNr5APWcHCuP6nKIJqUGRocjH0ItM0LbO2
zb3hdB5jKyO7bKPDYvo6FjMRt9EJ6ZtRZBIvNOqeR7R1I7FBHFlZ2SsJuVN0xCXu
5lGRRFZIleed4JkFCMwdYcx+of+uuucp9onxMmykDjbYY8n2ACaep/m7O+MFVHer
xN7U+yH6A2pRganBGLcYZcTiV50X37xIgFtoYLRNgKNab/0hUNhltEjhdGmKk61b
5Alf5UOqsSXqAoJxwHnM8LPunBaR5rsLgRDKRbmmFdLk6smQAzMY4ykcEk9VK77s
b5U0UshdpLUr37MLWY8Wps6qUBAvI2IyWIdPvVlXRvOdgGHecRiPlY6tguswJKvQ
TjWnKocMimWtw8sQpycM/VOr38kjkcth+beLEcacWQURIREgAET9GyoHiA3sl9QB
yzKKj29esuS4EJkVdtcW+ex0/GtfyCxtg/Fj/SG19lAOKulOilg=
=OpTr
-----END PGP SIGNATURE-----

--cxfMsoqvp1jUizWj--
