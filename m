Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99136606A8A6
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 10:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GgH6C18/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ekdPx+2L
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DfBVQQ2X53kyTwFmxcR3ph4KKe+kG0dqhbj0Y3Et2GE=; b=GgH6C18/znwTxTgYsczdIrHMSI
	2nUhrWsNIi7kmeEEJrW2zuVnbSl5msZd512568HFvlg7JVT6F58WmxWkmT3yDuBJeEF34bueEbVgM
	OzGMCKMn7Qc8kbU51F67DWup95mE9llkXKE+gIgz+Zw1ix5a86R0uMK48j/S6f8WzJdXmuZ53oHh1
	sSAb4awD63K0ZJYdNrTD5efhhl2GbZsNFc+omOTpG+e6bbOA5VGXzxr4Xb6LsAQ4EechWlM0FZch1
	6bj+Jgl9GascXYaqJ0gtlAlKaxk03oYUUXUNeME1vT/VH3ao2d9ZLbJpW9gFkmh2siaOZcc+kDITL
	LKHIqqKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR5gQ-00000006Mds-1Mzi;
	Wed, 11 Nov 2026 10:36:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR5gO-00000006MdW-3YYN
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 10:36:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 81B58471BD;
	Wed, 11 Nov 2026 10:36:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ACCD91F00A05;
	Wed, 11 Nov 2026 10:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794393360;
	bh=3/Qm8F9jS9txwPiJ9OMTxV+9BbKodPA2/hA4qfKSOTY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ekdPx+2LWD0BQ/C3SpSBmJYPcQSKYU9rl2B5z5fg8d66hMIDCS9kQgX5wH0OFXyqp
	 mM1zaLdTlBmHFxU4H70B38f/o+ymU4bEwsQWp6B3nJ7yHGcxIICCNArodCFiFzSQOn
	 ecov57Sv2N7NEhTF0/mcY/KX0t/jBnjRgDvfgBXYa96MZ42rQhA3DH1Z+ZF6tTXDGN
	 dW3bO0BTpWrbNgeHp4syQPmrkEcJV2iggtkE62VwsmyepRJZCfX4oBwWiUx0sSjyRD
	 7ajUeab4QZjU2gcdS2WA7VW5SI4S+93QzS3d76IvyvqqtOQon4YKx9ItGmemNAnKEs
	 0rK9svrg0GVKQ==
Date: Wed, 11 Nov 2026 11:35:55 +0100
From: Alejandro Colomar <alx+linux-hardening@kernel.org>
To: Mariia Nikitash <nikitash.mariiaw@gmail.com>
Cc: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com, 
	p.zabel@pengutronix.de, mchehab@kernel.org, hverkuil+cisco@kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-hardening@vger.kernel.org, kees@kernel.org, justinstitt@google.com, morbo@google.com, 
	david.laight.linux@gmail.com
Subject: Re: [PATCH v2] media: verisilicon: Replace strlcat() with scnprintf()
Message-ID: <avRE7QDuHyK2aFUo@devuan>
References: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
 <20261111032446.29803-1-nikitash.mariiaw@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20261111032446.29803-1-nikitash.mariiaw@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2301048549806444931=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============2301048549806444931==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="beiyeemi46p27lup"
Content-Disposition: inline


--beiyeemi46p27lup
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx+linux-hardening@kernel.org>
To: Mariia Nikitash <nikitash.mariiaw@gmail.com>
Cc: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com, 
	p.zabel@pengutronix.de, mchehab@kernel.org, hverkuil+cisco@kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-hardening@vger.kernel.org, kees@kernel.org, justinstitt@google.com, morbo@google.com, 
	david.laight.linux@gmail.com
Subject: Re: [PATCH v2] media: verisilicon: Replace strlcat() with scnprintf()
Message-ID: <avRE7QDuHyK2aFUo@devuan>
References: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
 <20261111032446.29803-1-nikitash.mariiaw@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20261111032446.29803-1-nikitash.mariiaw@gmail.com>

Hi Mariia,

> Date: 2026-11-10 19:24:46-0800
> From: Mariia Nikitash <nikitash.mariiaw@gmail.com>
>
> In preparation for removing the deprecated strlcat() API [1], replace the
> strscpy() and strlcat() calls in hantro_add_func() with a single
> scnprintf() call.
>=20
> This preserves the resulting string, including NUL termination
> and truncation behavior.
>=20
> Link: https://github.com/KSPP/linux/issues/370 [1]
> Signed-off-by: Mariia Nikitash <nikitash.mariiaw@gmail.com>

Reviewed-by: Alejandro Colomar <alx@kernel.org>


Have a lovely day!
Alex

> ---
> Changes in v2:
> - Replace seq_buf with a single scnprintf() call, as suggested
>   by Hans Verkuil.
>=20
>  drivers/media/platform/verisilicon/hantro_drv.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/me=
dia/platform/verisilicon/hantro_drv.c
> index 26e5d5547466..d8854ceb4fed 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -902,9 +902,8 @@ static int hantro_add_func(struct hantro_dev *vpu, un=
signed int funcid)
>  	vfd->vfl_dir =3D VFL_DIR_M2M;
>  	vfd->device_caps =3D V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M_MPLANE;
>  	vfd->ioctl_ops =3D &hantro_ioctl_ops;
> -	strscpy(vfd->name, match->compatible, sizeof(vfd->name));
> -	strlcat(vfd->name, funcid =3D=3D MEDIA_ENT_F_PROC_VIDEO_ENCODER ?
> -		"-enc" : "-dec", sizeof(vfd->name));
> +	scnprintf(vfd->name, sizeof(vfd->name), "%s%s", match->compatible,
> +		  funcid =3D=3D MEDIA_ENT_F_PROC_VIDEO_ENCODER ? "-enc" : "-dec");
> =20
>  	if (funcid =3D=3D MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
>  		vpu->encoder =3D func;
> --=20
> 2.43.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--beiyeemi46p27lup
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmr0RQUACgkQ64mZXMKQ
wqmqRQ//REbcSjHBIDUOxJhm/720bIqOHJt+3DKA+HoHM0PTMB1GcDpZ0Cb1GFDz
xRHYtg0O9h95qP0G/IoLsrZj3NkMamOmFu/Ofly9gLTOqQL1rz9owJ1CLhvmYd9I
8cWB/QtXkMiuQXlZJrNXDq2SByNEaJ4bsPjvvE77eID9cbp5ZTSUuz/T4BDE0kGV
qI4XWwCmA7aKluSWJsM9Imr0WNtNVjxq4TF/HFG9H7XsqZOfX1nQAb9fAZUFFMaB
3w11l20mRk2vqfAG49JgcN5w+AwJ3Bt/xkBhHkylWG3KPherYIRq1PPXFF6QhxBo
rw4Ybqo42Vb/EZfR4zVr10O/fFRwYveJTCrkT43f5gAChRNaa6N/WR5neV9/CoJk
5m4QyRrraxSx+l+loUZSINAa/N0AJemDBsFstXMakaO+/RzNe/QidFSURRxL+e4N
3mxIPmFGNR0EJcNf5rQscL2BJJI9DJMqfeIOS+M2zS1B4W58VUP4ccOpwg+mSBDJ
qbQdnjTEWfWc8K0W/WC8OXcIAt53kwI3Vm8b4e3TUSYHoHOpwleImvVH8PDtXy9a
OBfQO51X4evfcPbAgBSXe4WinWJmALl94hy9R3DhEwaLDP0VgWkb/pSC66goebpb
Cbpqbegoxy8DO7Off0TR0a5KECKu5jQH6X9CiAFWA3DRXeZN0kw=
=ogB2
-----END PGP SIGNATURE-----

--beiyeemi46p27lup--


--===============2301048549806444931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2301048549806444931==--

