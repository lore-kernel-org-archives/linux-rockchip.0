From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 0/4] media: rockchip: rga: PX30 support and YUV2YUV fix
Date: Thu, 16 Apr 2020 14:38:34 +0200
Message-ID: <20200416123834.GG125838@aptenodytes>
References: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
 <d33aef355623a5abd6eec176d33a167c456ed915.camel@collabora.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0354029263760169605=="
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <d33aef355623a5abd6eec176d33a167c456ed915.camel@collabora.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hansverk@cisco.com>, linux-rockchip@lists.infradead.org, Jacob Chen <jacob-chen@iotwrt.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


--===============0354029263760169605==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="S5HS5MvDw4DmbRmb"
Content-Disposition: inline


--S5HS5MvDw4DmbRmb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ezequiel,

On Thu 16 Apr 20, 09:22, Ezequiel Garcia wrote:
> Hi Paul,
>=20
> Thanks for the patch.
>=20
> On Thu, 2020-04-16 at 13:50 +0200, Paul Kocialkowski wrote:
> > Hi,
> >=20
> > This series adds support for the Rockchip PX30 SoC in the V4L2 M2M RGA =
driver.
> > It also contains a fix for the YUV2YUV case that was not properly handl=
ed.
>=20
> How have you been testing this?

I tested it with a standalone utility setting V4L2_PIX_FMT_YUV420 on both
output and capture. The issue should be pretty easy to reproduce.

Cheers,

Paul

> Thanks,
> Ezequiel
>=20
> > Cheers,
> >=20
> > Paul
> >=20
> > Paul Kocialkowski (4):
> >   dt-bindings: rockchip-rga: Add PX30 compatible
> >   arm64: dts: rockchip: Add RGA support to the PX30
> >   media: rockchip: rga: Add support for the PX30 compatible
> >   media: rockchip: rga: Only set output CSC mode for RGB input
> >=20
> >  .../devicetree/bindings/media/rockchip-rga.txt |  1 +
> >  arch/arm64/boot/dts/rockchip/px30.dtsi         | 11 +++++++++++
> >  drivers/media/platform/rockchip/rga/rga-hw.c   | 18 +++++++++++-------
> >  drivers/media/platform/rockchip/rga/rga.c      |  4 +++-
> >  4 files changed, 26 insertions(+), 8 deletions(-)
> >=20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--S5HS5MvDw4DmbRmb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6YUcoACgkQ3cLmz3+f
v9EMAQf8C+o9NTz5s1Go3gR6vgIrpWCEJZ018/7aZT+9I8EdjoBxSH0wE9Nl/Ir6
99oB3jHnwpjXEisECpuYP29hhXJl8O7wsuJGu21Jq9Nil/wMJRO2sbkkVuNDHNGi
R6uiCiwoj71YvB5W3QR7wVf+2przwmkdGtg6+xjVa6mFVACIE91EAC3oJHrCAdjO
WS+3EXhZ6kisMEMOhSKGVqe2X5xLitPfHm5N7owGiCYy210dxmciQhe1mqbagcBO
QQCFM1DpzUdMz6JFE68azeMHq+InMno9rrlbNBqwJcm2oYIDZ8FlzTP/pitouaFs
pFewZcsp2SqyCM+TzUdiBighDMz3sg==
=6ymt
-----END PGP SIGNATURE-----

--S5HS5MvDw4DmbRmb--


--===============0354029263760169605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0354029263760169605==--
