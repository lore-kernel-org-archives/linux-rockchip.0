Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3B8BC54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 17:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VyAQEIOovOGN6rZZZ5fjvGGfsleRtL/LpzOCHQxa3Ds=; b=oOQ8Ob/lGtbNdXb+WbzWPkKjN/
	C3gjyLVmHbP8YRYyKieVZqJXNJYDKijaS6rpO+QPhXRfdtIByCcLBHzLs59+d133Ze1XQKPDBXvTp
	mSuk0dhRCUdJfcoqcBFOID0xlLUf8z6X9QTUHPbPi+waGb/b8ZJDJHPtx21eZZGiCs7VEsbly818c
	9FMchs3O5/XxpqUfiBFuMCRWKmEG35fTCWBO7syznJxKZ9x7/zv/mzJzx0qIvj1oRtyNAV4HR5GTv
	Q55VASxcnqEPTIqLBY63AtYsfWGBhkyp+D0AujGFe0F22Ejb1RHY0KkSZxi0gT5p5bidtA//Om2ZR
	qWH1RBuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpX02-0000000AHmY-10QZ;
	Wed, 27 Mar 2024 17:23:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpWzu-0000000AHjm-0EWk;
	Wed, 27 Mar 2024 17:23:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1A52360C3E;
	Wed, 27 Mar 2024 17:23:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FA95C433C7;
	Wed, 27 Mar 2024 17:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711560212;
	bh=IVW7vlTiLrTDILy6sOFcmkVPU3+mDVNBvceJINH+rOM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XloCsd3HB0EhyIQa5CzYWfgKyeewc6Oqo0by9UfFEbxWZIexiepINomz0U7NH5PpD
	 F7bO68lQDu8aBGYCYKPh66JaFzTlN2DyebgDzfYB4hNllLQDTQQJxjeyQ5rsGCWop3
	 NY2JuvbsjVzpVoLUX2m4D3n/TPYD45DL2vRUvg0QtaVGIeoGYg/860IfICZRzrBHmW
	 swdOfcf5VB1xJkpsYGQ4LUKJzG0fsn5jzUqOvxKvJVukcS+rdwwTX6aVBmNFHsvWrP
	 UykPBL0SCRFrQXScdsu6Vh8CVXQmMixz4lSY0QfeN8TIFNjWADxiNWPKZsetBKIVXd
	 wUw//P4t3xOXQ==
Date: Wed, 27 Mar 2024 17:23:26 +0000
From: Conor Dooley <conor@kernel.org>
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Cc: linux-kernel@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev
Subject: Re: [PATCH v2 1/2] media: =?utf-8?Q?dt-bin?=
 =?utf-8?Q?ding=3A_media=3A_Document_rk3588=E2=80=99s?= VEPU121
Message-ID: <20240327-doze-uncheck-475f3feaee57@spud>
References: <20240327134115.424846-1-linkmauve@linkmauve.fr>
 <20240327134115.424846-2-linkmauve@linkmauve.fr>
MIME-Version: 1.0
In-Reply-To: <20240327134115.424846-2-linkmauve@linkmauve.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_102334_347999_5A3EA1B0 
X-CRM114-Status: GOOD (  17.76  )
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
Content-Type: multipart/mixed; boundary="===============3248226203199302184=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3248226203199302184==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4zuSRA0OEooBf1eF"
Content-Disposition: inline


--4zuSRA0OEooBf1eF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

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

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
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

--4zuSRA0OEooBf1eF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZgRWDgAKCRB4tDGHoIJi
0lutAP9RUO+UBR6Pi5FROQ2xaLNqi5TaQoaK43MSDUy1PTIC0AEA7wsfYNyJUltg
R8OsUeBnoheFQXxeCQ5knEZaXqMNKQ0=
=eiO7
-----END PGP SIGNATURE-----

--4zuSRA0OEooBf1eF--


--===============3248226203199302184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3248226203199302184==--

