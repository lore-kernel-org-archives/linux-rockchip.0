From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH 0/5] rk3399: make u-boot-rockchip-with-spl.bin
Date: Fri, 26 Apr 2019 13:59:35 -0400
Message-ID: <20190426175935.GT31207@bill-the-cat>
References: <20190426133430.17802-1-jagan@amarulasolutions.com>
 <CAMty3ZDqzeRsWvNnPMeAKuhwqfuJm8-Um9fcb+JE=jN3DV7KVw@mail.gmail.com>
 <90241d1e39fde80f674008878f136e121b5bc6a4.camel@bootlin.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============8198772857001722895=="
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <90241d1e39fde80f674008878f136e121b5bc6a4.camel@bootlin.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-rockchip@lists.infradead.org, U-Boot-Denx <u-boot@lists.denx.de>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-amarula <linux-amarula@amarulasolutions.com>, Akash Gajjar <akash@openedev.com>
List-Id: linux-rockchip.vger.kernel.org


--===============8198772857001722895==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="VOnbToCuTSVGQGT3"
Content-Disposition: inline


--VOnbToCuTSVGQGT3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 26, 2019 at 07:55:40PM +0200, Paul Kocialkowski wrote:
> Le vendredi 26 avril 2019 =E0 23:22 +0530, Jagan Teki a =E9crit :
> > Hi Tom and Simon,
> >=20
> > On Fri, Apr 26, 2019 at 7:04 PM Jagan Teki <jagan@amarulasolutions.com>=
 wrote:
> > > This series will create single bootable image 'u-boot-rockchip-with-s=
pl.bin'
> > > for rk3399 platform with single make command instead of building u-bo=
ot
> > > separately for u-boot.itb and burn them separately for SPL and U-Boot=
 proper.
> > >=20
> > > This series has dependecy with[1]
> > >=20
> > > travis-ci issue:
> > > - need to include 'python-pyelftools' package, tried but can't succeed
> > > - right now build failed if BL31 is not exported, but this would mana=
ge to
> > > create dummy arm64 elf but any help on this would appreciate.
> >=20
> > Any inputs on this?
>=20
> I think we have the same issue regarding BL31 for ARM64 sunxi boards
> don't we?
>=20
> It would be great to have a solution to this, and even better if it
> could scale to most ARM64 platforms too!

As I said in another thread, yes, we really should look at how to make
binman take care of this as every arm64 platform has the same problem
and similar but not quite the same solution.

--=20
Tom

--VOnbToCuTSVGQGT3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJcw0cGAAoJEIf59jXTHXZS3CkP/j3mk9kiMmFUlhBLhNPXWUwK
AUQLwdwMfQQxSm9h3dLT3AADmg0Kmz3aR/IHNp69172uxWXKxACY+uL4ixKUtjDH
eL08JRGhJlnTu8b76v1uYFbOfX+fTk+YOpv/aKaegJaU9+ebTWcUpHzbItkdHqHZ
WfK//KknkgKOKo4fDZ4ZjtrCdQi7Z4yhV4KyMzXQoJY4U9ZQT8/KKFOGbm68epZX
8DR2PT1XkoG9J/8fP809OdeXn1+IuHTyj4HLvTzjUxhkUj+OMCb7T7Knx9Tmx5fw
LmAAtyL2igpdg/HDMPyfC++Gi/bTQQDS0c4o9xTNnzAZlPWf0mVeHKulaAq7r1IW
07aV4OuXXse1fqPeD2DpZkpGGxcRS376Ex20fC9ffpVw918Nif7pV4ptLmqlWvqD
HhWZBGqYHolZukWjWSWO0wxmux+u93NvHeMK2eAs6gQNedjFwNWmAW/fDVfhcEdt
GDM0q2nNdlaci8FWnWQAh6djD0ty4ueM5G59VlPrHG6WlzT6nZNh7CRc+iBQ9ezf
BlKu/RrfsRPPuSg58o5/IY+UWMBZh7cTIVV9da7rz+pwj5/tl0YQt0KEjcGoTWE1
Egbes4SpS7Fa8odMEdfgVkHsvYiCdBnd6yhbPqZXmu+PDjni74FEm9UecsKRLCpe
ZbZRocbRmMv5eEKTpoaB
=p6fN
-----END PGP SIGNATURE-----

--VOnbToCuTSVGQGT3--

--===============8198772857001722895==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVS1Cb290IG1h
aWxpbmcgbGlzdApVLUJvb3RAbGlzdHMuZGVueC5kZQpodHRwczovL2xpc3RzLmRlbnguZGUvbGlz
dGluZm8vdS1ib290Cg==

--===============8198772857001722895==--
