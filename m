From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v7 07/11] media: cedrus: Specify H264 startcode and
 decoding mode
Date: Thu, 22 Aug 2019 14:31:43 +0200
Message-ID: <20190822123143.GB1627@aptenodytes>
References: <20190816160132.7352-1-ezequiel@collabora.com>
 <20190816160132.7352-8-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="LpQ9ahxlCli8rRTG"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190816160132.7352-8-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: linux-media@vger.kernel.org, kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


--LpQ9ahxlCli8rRTG
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri 16 Aug 19, 13:01, Ezequiel Garcia wrote:
> The cedrus VPU is slice-based and expects V4L2_PIX_FMT_H264_SLICE
> buffers to contain H264 slices with no start code.

For clarification, cedrus does not expect any of the two options we have
specified but something in-between that is rather broken (a single frame
composed of a single slice only, in the format that our userspace currently
fills).

So at this point, the uAPI is not yet harmonized across cedrus and hantro
although the new controls from this series are exposed on both.

This situation makes me realize that perhaps we should have a formal discus=
sion
on the roadmap we want to take for stabilizing the API. I see many points t=
hat
need significant adjustments and the new controls that allow Rockchip suppo=
rt
are just one aspect.

Having both drivers abide by the API seems like the next logical step (as f=
ar
as I understood, this is what Hans is expecting now), but I want to stress =
the
fact that it is really not enough to make a proper API and things are still
pretty broken all around.

Cheers,

Paul=20

> Expose this to userspace with the newly added menu control.
>=20
> These two controls are specified as mandatory for applications,
> but we mark them as non-required on the driver side for
> backwards compatibility.
>=20
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> Changes in v7:
> * None.
> Changes in v6:
> * Remove incorrect menu_skip_mask.
> Changes in v6:
> * Adjust to control renames.
> Changes in v5:
> * Clarify commit log.
> Changes in v4:
> * New patch.
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>=20
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/stagin=
g/media/sunxi/cedrus/cedrus.c
> index 7bdc413bf727..2d3ea8b74dfd 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
> @@ -77,6 +77,24 @@ static const struct cedrus_control cedrus_controls[] =
=3D {
>  		.codec		=3D CEDRUS_CODEC_H264,
>  		.required	=3D true,
>  	},
> +	{
> +		.cfg =3D {
> +			.id	=3D V4L2_CID_MPEG_VIDEO_H264_DECODE_MODE,
> +			.max	=3D V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED,
> +			.def	=3D V4L2_MPEG_VIDEO_H264_DECODE_MODE_SLICE_BASED,
> +		},
> +		.codec		=3D CEDRUS_CODEC_H264,
> +		.required	=3D false,
> +	},
> +	{
> +		.cfg =3D {
> +			.id	=3D V4L2_CID_MPEG_VIDEO_H264_START_CODE,
> +			.max	=3D V4L2_MPEG_VIDEO_H264_START_CODE_NONE,
> +			.def	=3D V4L2_MPEG_VIDEO_H264_START_CODE_NONE,
> +		},
> +		.codec		=3D CEDRUS_CODEC_H264,
> +		.required	=3D false,
> +	},
>  };
> =20
>  #define CEDRUS_CONTROLS_COUNT	ARRAY_SIZE(cedrus_controls)
> --=20
> 2.22.0
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--LpQ9ahxlCli8rRTG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl1eiy8ACgkQ3cLmz3+f
v9GOYgf9F51621BWqMfkbW3Yux6S7OMfF6dKTdIZX4GXqjqxXCIubBMlLE1VrFEe
RoZ7Num71kBlgoTAX/vigjajD1L51lkIuRvAJnDxC7dvOJmWl8tEqiKDFoop3JGA
x3YH7vafJlkhZEcvc1I5mLCiq07dDt3/R96V1T0bq9Y7yU5UnPMcWhJb5SRraw0J
kf1nWwwKhgmgVHhYWQyGclg2pQ6X7jYeYas5u+77/kVINtW14U534sHpb2+Du9Nm
fpM4UAWg6ByHr138378pB0E4BaMwDWzdACAYIp6MXxzvjRBRHvAUO4ysBd+AnaPk
T//dmu8yitAKEziiw2ZZ0O2NQfoBTA==
=7jOE
-----END PGP SIGNATURE-----

--LpQ9ahxlCli8rRTG--
