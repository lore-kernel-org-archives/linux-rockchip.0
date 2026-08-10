Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9A1CC5AE49
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 14:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gXOQGEMv6k008Mxa8CmLZbQdCpUnm5zhtgCeeWl6yHs=; b=TZBl91zh8suArQq/OTdXpwiUjk
	RPoTl/7gVgWtywRgSYxl7tp4l6h2DXsxYDgr1ly9tALaB9vPMeguCMs7lciFOsbt4z333rtQnABaS
	sZBjuX+YQ5R0NtUvrmrAtKdax54h0rht+absKGvqesk66z3bZVqN8rNNooKNKACZQKJ0MrnbAaAdT
	gQ5F+7R1vz7xeIICHwhMV8fw7IkOo3ENinWPdNbCDiweBX5TBjHEPFCqdb6nufDmgrcNLezO99f9D
	KI+73e68dSCaq5ZMnFpY94tD4GcbRDWUQljksst+XzSgZYmY9++7KEtmpuODOi3pemXMqIupjGhg5
	bDBpsDRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtQhL-0000000Bxg2-3Wy4;
	Mon, 10 Aug 2026 14:09:51 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtQhJ-0000000BxfU-22aV
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Aug 2026 14:09:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786370987;
	bh=q9XZ9PFaOttrJScNyLsrJJf0rfpu9aYHOmG8UewkSsY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=WVUqf6kdmhif9DQCIU3WmUyS9amW1W3+89dBAQ4c4TpXeOM93wAwIRg9ldbukcGCd
	 FkvKkZaDBYXJdQyWH2OO/5rMSjn8H1WLRBoJ69zxAXuZS53cUti7M0pfZ88yde7KfP
	 L+NPf9SBo6N2AG44qWzVDMhDdJ6LvnX1CtvNJMpNMN/W9W5vLZULfeomUAaVfB4Sz9
	 vgC/G75pQnH4f8wjOOaghgJPWVvykDkruRUaxe1JwxkwLskpXG1muD015U71AcuTlA
	 mjJTYLNVR7c/j3nfF69QD0wYHXA23pZELAldzjSyAZ6+Q4Q+OtjlJOTsYHP18dTzD5
	 uru3kEg16fptA==
Received: from [100.64.0.214] (unknown [100.64.0.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9709617E077F;
	Mon, 10 Aug 2026 16:09:45 +0200 (CEST)
Message-ID: <2a5abb0004aa453c2f985aff41c72d4952006fc9.camel@collabora.com>
Subject: Re: [PATCH] media: hantro: Harden MPEG-2 control access against NULL
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Tharit Tangkijwanichakul <tharitt97@gmail.com>, Benjamin Gaignard	
 <benjamin.gaignard@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-media@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil	
 <hverkuil@kernel.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org, 
	me@brighamcampbell.com, jkoolstra@xs4all.nl
Date: Mon, 10 Aug 2026 10:09:44 -0400
In-Reply-To: <20260731140751.1183-1-tharitt97@gmail.com>
References: <20260731140751.1183-1-tharitt97@gmail.com>
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
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_070949_680017_A4BECE4B 
X-CRM114-Status: GOOD (  15.26  )
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
Content-Type: multipart/mixed; boundary="===============5021151945862766334=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5021151945862766334==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-zKDJou/lVj/KGzVMp1c8"


--=-zKDJou/lVj/KGzVMp1c8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le vendredi 31 juillet 2026 =C3=A0 14:07 +0000, Tharit Tangkijwanichakul a =
=C3=A9crit=C2=A0:
> The MPEG-2 sequence and picture controls are validated
> before a job is queued, so hantro_get_ctrl() is not expected to return
> NULL in hantro_g1_mpeg2_dec_run(). The controls are nonetheless
> dereferenced unconditionally.
>=20
> Harden the invariant by checking the sequence and picture controls with
> WARN_ON().
>=20
> Found by code inspection.
>=20
> Fixes: f329e21e9dad ("media: uapi: mpeg2: Split sequence and picture para=
meters")
> Signed-off-by: Tharit Tangkijwanichakul <tharitt97@gmail.com>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

p.s. this is a bit cosmetic, since only a programming error could lead to t=
hat,
once a control is registered, it has a value. But that makes it consistent =
with
all other use of hantro_get_ctrl() in this driver, which I like.

Nicolas

> ---
> Tested on a Rockchip RK3588 (Rock 5B) board with Fluster:
> =C2=A0 MPEG-2 (MPEG2_VIDEO-MAIN): 23/43, unchanged
>=20
> =C2=A0drivers/media/platform/verisilicon/hantro_g1_mpeg2_dec.c | 5 +++++
> =C2=A01 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_g1_mpeg2_dec.c b/d=
rivers/media/platform/verisilicon/hantro_g1_mpeg2_dec.c
> index e0d6bd0a6e44..6a942f4b8a2d 100644
> --- a/drivers/media/platform/verisilicon/hantro_g1_mpeg2_dec.c
> +++ b/drivers/media/platform/verisilicon/hantro_g1_mpeg2_dec.c
> @@ -161,8 +161,13 @@ int hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
> =C2=A0
> =C2=A0	seq =3D hantro_get_ctrl(ctx,
> =C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 V4L2_CID_STATELESS_MPEG2_SEQUENCE=
);
> +	if (WARN_ON(!seq))
> +		return -EINVAL;
> +
> =C2=A0	pic =3D hantro_get_ctrl(ctx,
> =C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 V4L2_CID_STATELESS_MPEG2_PICTURE)=
;
> +	if (WARN_ON(!pic))
> +		return -EINVAL;
> =C2=A0
> =C2=A0	reg =3D G1_REG_DEC_AXI_RD_ID(0) |
> =C2=A0	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 G1_REG_DEC_TIMEOUT_E(1) |

--=-zKDJou/lVj/KGzVMp1c8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCannbqAAKCRDZQZRRKWBy
9PC2AQDVAd/UdtrSKkwnBgNQg0ktJGp/cu6WEQ6j3In+PD+JiAEA0ZU60FJ2OJJD
VeT5C82uLSGrdUmNhdpqYU1ti06g2w8=
=2WtK
-----END PGP SIGNATURE-----

--=-zKDJou/lVj/KGzVMp1c8--


--===============5021151945862766334==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5021151945862766334==--

