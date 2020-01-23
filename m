From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
Date: Thu, 23 Jan 2020 12:15:00 -0500
Message-ID: <20200123171500.GY26536@bill-the-cat>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
 <20200120172240.GX8732@bill-the-cat>
 <8dddd74f-7b17-a614-48ab-aea0bc9148db@csgraf.de>
 <CAMty3ZAq+aDMuEKGYk9UyTS4Z4=TgtNcKRDtiBC-=mqRWUWAyA@mail.gmail.com>
 <20200123170301.GX26536@bill-the-cat>
 <CAMty3ZC6j+fo4c28V05OL7dn0VSWMoKdngneTBBSw1n_LQ+3bQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="3rzwkXnKuCXxoL5m"
Return-path: <u-boot-bounces@lists.denx.de>
Content-Disposition: inline
In-Reply-To: <CAMty3ZC6j+fo4c28V05OL7dn0VSWMoKdngneTBBSw1n_LQ+3bQ@mail.gmail.com>
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


--3rzwkXnKuCXxoL5m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 23, 2020 at 10:41:15PM +0530, Jagan Teki wrote:
> On Thu, Jan 23, 2020 at 10:33 PM Tom Rini <trini@konsulko.com> wrote:
> >
> > On Thu, Jan 23, 2020 at 10:25:50PM +0530, Jagan Teki wrote:
> > > On Mon, Jan 20, 2020 at 11:10 PM Alexander Graf <agraf@csgraf.de> wro=
te:
> > > >
> > > >
> > > > On 20.01.20 18:22, Tom Rini wrote:
> > > > > +A few people that may have insight to my question
> > > > >
> > > > > On Sat, Dec 21, 2019 at 01:24:31PM +0530, Jagan Teki wrote:
> > > > >
> > > > >> Add distro boot command support for SPI flash.
> > > > >>
> > > > >> This distro boot will read the boot script at specific
> > > > >> location at the flash and start sourcing the same.
> > > > >>
> > > > >> The common macro like BOOTENV_SHARED_FLASH would help
> > > > >> to extend the support for nand flash in future.
> > > > >>
> > > > >> Cc: Tom Rini <trini@konsulko.com>
> > > > >> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > What distro is this for?  My concern here is that hundreds of boa=
rds
> > > > > (literally) grow by a few hundred bytes to add in this bit of add=
itional
> > > > > default logic.  That's not a big problem if distributions are now=
 going
> > > > > to be using SPI flash as where they're programming in their boots=
cript.
> > > > > But, who is doing that?  Thanks!
> > > >
> > > >
> > > > I am not aware of any "distro" that puts a U-Boot script at offset =
0 of
> > > > the SPI Flash.
> > > >
> > > > Traditionally, SPI Flash boot setups were always very hand crafted -
> > > > exactly the opposite of what distro boot is for. That said, I think
> > > > supporting SPI Flash boot for rk3399 is great! Albeit I would perso=
nally
> > > > only store U-Boot and the environment on SPI, not the target OS.
> > > >
> > > > Jagan, is putting a U-Boot script on the SPI Flash something you th=
ought
> > > > of or something that the rk3399 reference board already does? If it=
's
> > > > the latter, maybe you could add it as a board custom boot function?
> > >
> > > Yes it would be later that points to. rk3399 has SPI flash layout and
> > > out of which one of offset(script_offset_f=3D0xffe000 from
> > > include/configs/rk3399_common.h) stored the programming script.
> >
> > So I'm not sure why we're adding distro boot support to SPI flash.  What
> > is the reference platform storing there exactly?  Thanks!
>=20
> I'm not sure I understand the question? we have rk3399 SBC's that boot
> from SPI and have feasibility to run distro boot using programming
> script store in flash offset like boot.scr does for MMC.

OK, and what distro(s) today are doing that?  I'm not happy with this
patch as it's growing hundreds (literally) of boards in size and I'd
like to know what is leveraging this functionality today, or is going to
be as soon as it's upstream and widely available.  Thanks!

--=20
Tom

--3rzwkXnKuCXxoL5m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl4p1JEACgkQh/n2NdMd
dlJtSRAAo3ebclzKp7jSqZbAYP7IVFuQS7oVex2hcs4h6V8Q/y0qIa3qGchoCy2M
iGveuJ2ogrbeSqjoh2IvoUF8CcYm0nKtXt8QlR3vQEDUpiaueL9Xmc3Qvd8Tr8go
cT2zbfpt0CGraSr6OqRxefq999/1w3e9bRu0m6Ag4vv7f/qNG7SZ1q57vOz0uCUx
2g9sLq9QKR7DPj9KIH2rQjCvGxRkde8Wt5uCBrVYZaCYrq6qQujZonAcv59C9S+c
C6Vq2RN9qPpTmfQ5Q7O1s+ytaL/8LqV6YX+x6vQT8y9yeUXH8083mvvyKO78WlQl
9cJqMSzCR4Wbz9vZu5N9e8oJmm/4QY4tzPO21vzVL1hxkngegrb2DyTKbH0YQihE
iqAWtSCIBtmVWeLUdOOb+SAg87o0HOVEwdQcZKd9GKBAWTxSmMiju2YF6fRI1Bvn
36s/M4p+iaSJ7hYOBDWR7IGgHM5R9x8th+nvoIXW7/WRvnC7hM1kvsv6hxZ6wI9U
HFncdHg+3DGOh/cZWXASOETtrzPuPv4TgmxUjUBwqK+HvgApbSB4Jh4yxWGttpiN
d3uPnoBJzLk0yMo2QP5oYB0V+S0rSC20fhnE2CTWScjQgNyeC6Kk9qJw1JqZ9bZj
J9soNfRnyrqoCLuYG928HJalAVO6rWJoJDyhlzaHeiXH20Ngg4E=
=FDo3
-----END PGP SIGNATURE-----

--3rzwkXnKuCXxoL5m--
