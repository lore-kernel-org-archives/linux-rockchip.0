Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DC2DC77B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 20:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bwBXC3c89Q4GDdQtBUh3p3joKMLRyYEv6IfFSG/rBuA=; b=ERH9ITaM+OVyqCDzvO8KL9F2Fn
	K+TaOha5z3ao9zCtkPY/edkxqv/yfaEughhu78WgjeT6CvHJ5OKsrqtibDYQuCVvV7hNEpWTWMfmt
	SJQIwEXeuyiYRNYFv8Xn2IwTd1TzVamnmRqX2Kvcdshg7Ift0/VgaqCRgZiz5CTfT17WpTrBhFHSD
	u4dp9n7BH4Vb5TFQHU6y4SXOK/LQWM0Zx74b1zfg+iOcdMTvmixJfBM7ornDcZ8hSBP2jDqGizsST
	D3p0Yzds++NjluMtGPIrsQNGLQuPp3OMmWVpzjXuGW/4kJWF4n/azmIoSKJmLgnP3bWAOYatNY6Il
	qhar31/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1v7d-00EcEs-00;
	Wed, 24 May 2023 20:30:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1v7a-00EcEO-2Z
	for linux-rockchip@lists.infradead.org;
	Wed, 24 May 2023 20:30:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4F06C6358F;
	Wed, 24 May 2023 20:30:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73A08C433EF;
	Wed, 24 May 2023 20:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684960209;
	bh=Re1wX3W69i3ZIaz/pAHTYuHqgqHaZa0o99T50sYnC2o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mg4kwL3o57bXoA1rQ6/zA/RBTwv5ThG2jMwI463FUwVvKyBs091tMNv4sMhxeJY1u
	 gHphGhu0tmAB5HNCImzeX/QjK/QwDQUBX1uiVwGgvGBtmoRuBi8hpF4QymkFEMjbLN
	 vRuBLhHE1DDMsxM84S8Tc42oc5OHmAJ1rxSKGTlKUmSbniVaUuxw2VN8t96jS2+AsB
	 9Dt+Uo4O/ihAA9+EkCUIA4gFbMhPopJrMGHVfmTxvLqQciciTWlVoXjVc+xeJ9+POS
	 62p4oiXW+4rd0YJjyW91Oay1ixSDJNcIBhuof97KLE7Av1Vsyc27aGzg4/mMCS35G5
	 XOVCyPevoI5rQ==
Date: Wed, 24 May 2023 21:30:03 +0100
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org, zyw@rock-chips.com,
	sebastian.reichel@collabora.com, andyshrk@163.com,
	jagan@amarulasolutions.com, broonie@kernel.org, perex@perex.cz,
	tiwai@suse.com, lgirdwood@gmail.com, heiko@sntech.de,
	conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/6] dt-bindings: vendor-prefixes: add Indiedroid
Message-ID: <20230524-extrovert-unhidden-35e289c28bc4@spud>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
 <20230523213825.120077-5-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20230523213825.120077-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_133010_878866_62830F2D 
X-CRM114-Status: GOOD (  15.23  )
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
Content-Type: multipart/mixed; boundary="===============8966412953538883559=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8966412953538883559==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="JhSCHFoVTqpyyaDA"
Content-Disposition: inline


--JhSCHFoVTqpyyaDA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 23, 2023 at 04:38:23PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Indiedroid is a sub-brand of Ameridroid for their line of single board
> computers.
> https://indiedroid.us/
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index 82d39ab0231b..632662be6e65 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -655,6 +655,8 @@ patternProperties:
>      description: Iron Device Corporation
>    "^isee,.*":
>      description: ISEE 2007 S.L.
> +  "^indiedroid,.*":
> +    description: Indiedroid

Can you add this in alphabetical order please?

Thanks,
Conor.

>    "^isil,.*":
>      description: Intersil
>    "^issi,.*":
> --=20
> 2.34.1
>=20

--JhSCHFoVTqpyyaDA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZG5zywAKCRB4tDGHoIJi
0rCyAQC6g1aHwj9B2sWQaarQoBN801M7WnTwLfkYIxU09ubawgD9Ff4oypI/ENYj
QNlwt1Ep76ScIy+5QNgO5eQo4By9kww=
=CwXw
-----END PGP SIGNATURE-----

--JhSCHFoVTqpyyaDA--


--===============8966412953538883559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8966412953538883559==--

