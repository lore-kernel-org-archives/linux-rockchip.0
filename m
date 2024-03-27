Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94D20C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 17:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5ZL4KWvUhsJ39mP13+z6QmhczWtX9OphFxkkyfYUVIY=; b=oyRBbrKvmyfhKAnqBfWPS1iwH1
	8C79eYYRW640EVjqyVU2SfJyLMzD8kTzOws/tQdSprkfqGvYpBTDgx3NtOT3Uk64OLd+f64J/Sa8f
	bO1bvQMZhjlF8a2fIIZBSunmkQCnU970KUr1+GANMx3wE9aIGtsszfJoWYVp7IUqF3jo9u7m+Ax56
	9VCNe2Ycz9gyyVcEg+5TApZn6ORsrRskT37k2oaGZw81OQdc2f4x31DpyMxNMI22tBLmDQkLpBzqa
	HM+CVv7DpshPx8URvV2Uo6GY45IpCWCfN9ncm1G/pzeINvl5tleeqWp3WQXj+LG6LQzb75PWh1dAI
	N2IaYcAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpXKU-0000000ALZt-2Vg7;
	Wed, 27 Mar 2024 17:44:50 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpXKQ-0000000ALYX-2EtR;
	Wed, 27 Mar 2024 17:44:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711561481;
	bh=CXkByOqBPbKZe9eVXPJpPOkJ1DM+X1hSruvjT3Mg1VE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d8ARsdobC7J6xJrdjCncvaR+KU/sXFNu6mJhI5mDtxctuZu9QudjRK2BmK8ZtnH7T
	 p0Q3c8kSjTVaeWztANfGa5XdFaEaIoB6UK1Oe3Tsg7BUl5qTTkpcXneyDBBRGQzNHr
	 kwAr6/51FLy9NKOdXxDZhgNvhDjv/rRWVnPpmbHbczYs6r+HRP3N2TEfe50ivZkXq2
	 v86WUfr46Sin8Jwe3Hew/vIfpapkgAL0M1DNL8NI0S9I6QRYF7bBva+Aj4TgP2MZSr
	 OQbvV/jG5Iv1UymaCsE9/lLxhkA//H2quyB5y4DrD+jZrceJO0VZVp1cfs8WQj5mrz
	 bS2sRQVe8YVbA==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C206F3780C13;
	Wed, 27 Mar 2024 17:44:41 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 61A9810608D9; Wed, 27 Mar 2024 18:44:41 +0100 (CET)
Date: Wed, 27 Mar 2024 18:44:41 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Cc: linux-kernel@vger.kernel.org, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Dragan Simic <dsimic@manjaro.org>, Shreeya Patel <shreeya.patel@collabora.com>, 
	Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev
Subject: Re: [PATCH v2 1/2] media: dt-binding: media: Document =?utf-8?Q?r?=
 =?utf-8?B?azM1ODjigJlz?= VEPU121
Message-ID: <slcatcuemy67vzpffpkfae3nl6cspl2i552reg5kfb2kiqizph@6mizgczdxaoq>
References: <20240327134115.424846-1-linkmauve@linkmauve.fr>
 <20240327134115.424846-2-linkmauve@linkmauve.fr>
MIME-Version: 1.0
In-Reply-To: <20240327134115.424846-2-linkmauve@linkmauve.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_104446_922311_37F71D6B 
X-CRM114-Status: GOOD (  18.88  )
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
Content-Type: multipart/mixed; boundary="===============1238601225298297486=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1238601225298297486==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mtzkc6b6fd7hw3mr"
Content-Disposition: inline


--mtzkc6b6fd7hw3mr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Mar 27, 2024 at 02:41:11PM +0100, Emmanuel Gil Peyrot wrote:
> This encoder-only device is present four times on this SoC, and should
> support everything the rk3568 vepu supports (so JPEG, H.264 and VP8
> encoding).
>=20
> According to the TRM[1], there is also the VEPU580 encoder which
> supports H.264 and H.265, and various VDPU* decoders, of which only the
> VDPU981 is currently supported.  This patch describes only the VEPU121.
>=20
> [1] https://github.com/FanX-Tek/rk3588-TRM-and-Datasheet
>=20
> Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  .../devicetree/bindings/media/rockchip,rk3568-vepu.yaml   | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu=
=2Eyaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> index 9d90d8d0565a..4c6cb21da041 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
> @@ -15,8 +15,12 @@ description:
> =20
>  properties:
>    compatible:
> -    enum:
> -      - rockchip,rk3568-vepu
> +    oneOf:
> +      - const: rockchip,rk3568-vepu
> +      - items:
> +          - enum:
> +              - rockchip,rk3588-vepu121
> +          - const: rockchip,rk3568-vepu
> =20
>    reg:
>      maxItems: 1
> --=20
> 2.44.0
>=20

--mtzkc6b6fd7hw3mr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYEWwEACgkQ2O7X88g7
+ppeUw/7BmJGGQaOaqtdWI5UfDshWNPMP1M3soxWvm414UxmhcM70ho2GpVfXy5H
d3d9z6cviDdZpV/n5/jKxIX6V3HQRfiErMOuRuXNucF5xhclurKvjEPAOlHF7iJD
wc1JGWXHTNeIiQTHQrXy5xtXoNOPkasAZlJhl94HTCdwWCUPTMzIT/XRHZctHw76
gl7XK72P+Zf0a01iwoeMuT7mRwc2GPq7wG/tHCHKH9b5rjc4PsIIbCTvZqFnNvGT
XaSLv51JJrv4r1L5h90ztEPfpzmSJzjT8nCMRaCardIVyWmBVZqRyRvu6XBZBuTn
AwpevquLQ0K8ic73rmR0jSRJkYVG9pCuH4gtk9F39+Qe3f3p9oT6ZBi33cdpGdgh
nD28w6nH2QETds93j8EzMiBeZnTClEz+xgmaxYFCEk4Nuaok8qWfzIzg5iFvKIDw
rOxHoozydZvj9eQvt7lVUeuTzedT+JAZkn3XTSw9QudfzvY+TRE4nY4aJnUpxUEe
D0VFzsVn45/zBTsxTUFLw8XFYyW5KEujj5m+vRbACQpYfhk53Vf5r/jZzHKjB9gZ
AIUH3rEuDo82oAnYPrYhjGOKbNNSX74lpOCienrfJu2OjLE/4suGKRGkW7TbFU8C
9Qqv38fDYHS5BEMbLzY790wtqJBYL5NDDEtTncDqR4HcllE12m0=
=2t0W
-----END PGP SIGNATURE-----

--mtzkc6b6fd7hw3mr--


--===============1238601225298297486==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1238601225298297486==--

