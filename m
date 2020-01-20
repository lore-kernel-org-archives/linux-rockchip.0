From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
Date: Mon, 20 Jan 2020 12:22:40 -0500
Message-ID: <20200120172240.GX8732@bill-the-cat>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="Jh1kIBBoW85WO3/I"
Return-path: <u-boot-bounces@lists.denx.de>
Content-Disposition: inline
In-Reply-To: <20191221075440.6944-3-jagan@amarulasolutions.com>
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
Cc: linux-rockchip@lists.infradead.org, Heinrich Schuchardt <xypron.glpk@gmx.de>, u-boot@lists.denx.de, Alexander Graf <agraf@csgraf.de>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


--Jh1kIBBoW85WO3/I
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

+A few people that may have insight to my question

On Sat, Dec 21, 2019 at 01:24:31PM +0530, Jagan Teki wrote:

> Add distro boot command support for SPI flash.
>=20
> This distro boot will read the boot script at specific
> location at the flash and start sourcing the same.
>=20
> The common macro like BOOTENV_SHARED_FLASH would help
> to extend the support for nand flash in future.
>=20
> Cc: Tom Rini <trini@konsulko.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

What distro is this for?  My concern here is that hundreds of boards
(literally) grow by a few hundred bytes to add in this bit of additional
default logic.  That's not a big problem if distributions are now going
to be using SPI flash as where they're programming in their bootscript.
But, who is doing that?  Thanks!

--=20
Tom

--Jh1kIBBoW85WO3/I
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl4l4eAACgkQh/n2NdMd
dlKKZg/8D01DV7ek/sgmMvrUCrjgxeFJX3yama0hZdtvIazoH7Fi5GL7zHHTeiZh
7rSZeokgAsyChIjXZ6I6W14xKLx6fhP3ljuzN0wJpFC6LfNnjVgxgvuXVbFcc6jS
nT7t5coyYEB7tOe98dzcbEILCRorp9EXZY8SJRa8qVqQB6LgNEFHQGnZyVsBnKID
iw/ZvbaLctMNUdKmsGtbROW5LWPCx+i3DDEKC3VhIQ7FxReISmgDnCEvYns4s1qp
ykrUljs60SJg15eLP1K8Wgpx34yCnSkDeQffKjNy7KLzwk3mk7Z3T6bHK9RJtp0i
LNhTaS9Vs/EnV0R2ooSpCRGJKFmARyKTIk06+czcQWLPPu8ZRC0UmgMhzLGwuNpU
tdASey5mrf2bRD8S/EhQqS1ZiZFZ8BGi7W0nfoRdc1AfeNuAs3ECYfjvrF5p6Ox2
pcmHoowACO3rCeDSzXhquc1aODTQ4Qz3KysOKkO+KuJ3dtMyoSW5KHR/MmSsobOZ
1OkGTP6Scz3l2NZR72DvkjcY9eCss+q894byFR9h05mGPDHzVlDdb59RsGttGOZa
OwzXjBBZhkzhEsM3dx8vsrWXEBX0xM/KEIzxY7OTcZnSEyKNQxkkptaaiKZ9xkqd
dBWp4ly8qYwfMCVVFPfcuIxX4SbRNh4Dd9lXOQGg2MqeoO7pAJ0=
=q5iB
-----END PGP SIGNATURE-----

--Jh1kIBBoW85WO3/I--
