Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C57F7E674B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 13:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VcilyhabrlhC2hxKs277t+D+iAJEvhAcNsGJRmS1PgU=; b=y90itUfXlhf1FfV+j0507sJNFq
	zzZ62OqY8eTehi2z8Jm0d9Od9qR/JBO97/kJoVhMX/wZS3t3cT0lO13+pzCwVVk6ViwYFOpV0y3AX
	aPa2cV13Di6AAKtloQl6ln8x5S7mlUhOZG1vYQx02NzkIlu2izChJ2BGtKkrJQ3W433RtHiQSYTXz
	eb3FU5Sd1pK1/y9a08CgIN4FI0N2KEc/4SmXg4gYGoR/7AqBuLNFFiLiXt2r6piRR+QwaHNzocMjq
	vMleDufKVLc/G380rB1W9VJo3gTS3EHwJwfTAt0OFUfYHjgVI70Q0d5yuKko7ZQIWOPTX5WFfbesi
	+UCgsV6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXfov-0000000Dnj0-2cMg;
	Mon, 22 Dec 2025 13:19:29 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXfor-0000000DniB-2lnZ;
	Mon, 22 Dec 2025 13:19:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1766409561;
	bh=emf1dXBuOWxpY82o+aXIdtYDx7+Dc4rLBq1gNe0BeaA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=PDs8sfWH303jVH3FYT7qAPoxcIRfz0+IgFx6zHCXn4+Mf+M5N7dJP2TR8zfYb72hC
	 +eARnuGWKyPheREfWo8QbLXsVUQP5iSsohy86uw/iPPGbREIzLj/DvMNVovHpSiG6q
	 aUiS7HXqSaELs9ZANYxwrIGddIT0vZmxrGxn9nti5vxJ+4ewjkQIxwgOlobWiq591i
	 fD0A9HqFYC7pbNuuiDgv1AGzHNdvMwd9DCxpuQ1E/28yb6Y7fjJUoRMMno9U8aGvB6
	 zGuaJFycpjK4eXZAbUQHhqCeHOmrukYO7YlPyIpFgKT6wh9YAXhvC5tpTzrjX6lF6Q
	 8qLSv6xCyka/A==
Received: from [IPv6:2606:6d00:17:7b4b::c41] (unknown [IPv6:2606:6d00:17:7b4b::c41])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id EF08A17E0125;
	Mon, 22 Dec 2025 14:19:18 +0100 (CET)
Message-ID: <bf4a8049f49b8d6d8a39faecee025dce51d59db3.camel@collabora.com>
Subject: Re: [PATCH v7 14/17] media: rkvdec: Add H264 support for the
 VDPU381 variant
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Jianfeng Liu <liujianfeng1994@gmail.com>, detlev.casanova@collabora.com
Cc: corbet@lwn.net, daniel.almeida@collabora.com, didi.debian@cknow.org, 
	ezequiel@vanguardiasur.com.ar, hansg@kernel.org, heiko@sntech.de, 
	hverkuil@kernel.org, james.cowgill@blaize.com, jonas@kwiboo.se, 
	kernel@collabora.com, laurent.pinchart@ideasonboard.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	mchehab@kernel.org, opensource206@gmail.com, ribalda@chromium.org, 
	sakari.ailus@linux.intel.com, yunkec@google.com
Date: Mon, 22 Dec 2025 08:19:16 -0500
In-Reply-To: <20251220164604.10052-1-liujianfeng1994@gmail.com>
References: <20251218232829.337811-15-detlev.casanova@collabora.com>
	 <20251220164604.10052-1-liujianfeng1994@gmail.com>
Autocrypt: addr=nicolas.dufresne@collabora.com; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
Organization: Collabora Canada
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_051925_964610_2CBDA830 
X-CRM114-Status: GOOD (  17.97  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3482827461431607065=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3482827461431607065==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-x0PCQHDfMIfaKLpNVYF3"


--=-x0PCQHDfMIfaKLpNVYF3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le dimanche 21 d=C3=A9cembre 2025 =C3=A0 00:46 +0800, Jianfeng Liu a =C3=A9=
crit=C2=A0:
> Hi,
>=20
> On Thu, 18 Dec 2025 18:28:24 -0500, Detlev Casanova wrote:
> > +static int rkvdec_h264_start(struct rkvdec_ctx *ctx)
> > +{
> > +	struct rkvdec_dev *rkvdec =3D ctx->dev;
> > +	struct rkvdec_h264_priv_tbl *priv_tbl;
> > +	struct rkvdec_h264_ctx *h264_ctx;
> > +	struct v4l2_ctrl *ctrl;
> > +	int ret;
> > +
> > +	ctrl =3D v4l2_ctrl_find(&ctx->ctrl_hdl,
> > +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 V4L2_CID_STATELESS_H264_SPS);
> > +	if (!ctrl)
> > +		return -EINVAL;
> > +
> > +	h264_ctx =3D kzalloc(sizeof(*h264_ctx), GFP_KERNEL);
> > +	if (!h264_ctx)
> > +		return -ENOMEM;
>=20
> I can see the sps validation is removed:
>=20
> 	ret =3D rkvdec_h264_validate_sps(ctx, ctrl->p_new.p_h264_sps);
> 	if (ret)
> 		return ret;
>=20
> This should fix decoding issue with chromium when minimum size of h264
> decoder is lower than 32. While I find this issue is caused by chromium
> not following v4l2 stateless spec, and I think checking sps at start
> should be still necessary.

One of the missing part of rkvdec is that once you set the OUTPUT format we=
 only
reset the capture format, but we should also reset the SPS control to a mat=
ching
default, matching the resolution and resetting the depth. In fact, I don't =
even
see code that verify the bit depth against already allocated memory, and th=
e is
not capable of converting.

I tend to agree with Jianfeng, that we should leave that un-modified until =
we
have time to fully address and test this situation.

Nicolas

>=20
> I have sent a fix to chromium[1] and it should get merged later.
>=20
> [1] https://chromium-review.googlesource.com/c/chromium/src/+/7274555
>=20
> Best regards,
> Jianfeng

--=-x0PCQHDfMIfaKLpNVYF3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUlFVAAKCRDZQZRRKWBy
9KYSAQCyLydUKeXmCMqZ6Lz6eQ45ZV3TgM87Bo4WJW/g+M1IKQD+LiW5IG8MDVmP
l6tBtIFnYSztPPgjaZjO29BF1siDCgg=
=XJKL
-----END PGP SIGNATURE-----

--=-x0PCQHDfMIfaKLpNVYF3--


--===============3482827461431607065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3482827461431607065==--

