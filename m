Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 351B2CF9C6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 16:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jf3fMrgaHhU+7vjZP7u5DBAPBtuDAbEOZoOHiTVTVPs=; b=aLHGbuulV3y+uoJ67fPOvavpul
	iYT3AT40b7b0yl9ddQzwEYLz6yUlUtOnJvX+yBDBulT4Z+YP3bvGZQ/tmr4o8gPOKUycA4OB9TwOZ
	pt0CNVO/d+MOfdiiF86iqLHvPj2o4L9sw89BS4oTwbYCdiwmRb2zjbJxBndsGEE9nXyBwJnu9AJKF
	mj5LUPzxTuiLT9V00/gQ5JwjPSc1ks09e92hxMkiNOrLw9304/Nw9ZNVFU4S3tF7PShZ0thxWhSfB
	b9FuWeUtwKPnSaCrhrTgObSA6SSJmOITrzwW24M9fY3Hu+j9ZJ86BSoR91TgHxTePMHLY1bh30VyA
	ygA0VNPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st8Aj-00000002m7l-1Uvy;
	Tue, 24 Sep 2024 16:13:53 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st88c-00000002lV9-17v1;
	Tue, 24 Sep 2024 16:11:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 48FCDA436B6;
	Tue, 24 Sep 2024 16:11:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8B91C4CECF;
	Tue, 24 Sep 2024 16:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727194301;
	bh=bWLWmOlWnq9t18YqdEiJAt1CiCqOxDnW9vppGQwtLs0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aEdt8p1pDQcezHF4zNNDViBHVARqR4kUM9rBen3wCTmaQ8ukqDdDymBW7Ml8oeYpI
	 QuNyBAKuCl0Xr5V6yNp6ZCe2v6sXc7krPgR42VoJlsF8Naeq1k4YRDrJfu0UEP2gRr
	 EseRMXWzbLQO+dIRJ2zStjk6PQFfqHqxI7b4TFFl+yvP3XMpFhMqZujWSw1EP0K3aD
	 me0/pA1xKhczOe+B9IqFGK/KtlvGSAxTOHO7iLgj46YiUYYaMt4gsN6mYLvdxAdCDF
	 Wijynn/R0m2caX7QtdRMVXrJMA6pi/W3M4huW8UmdVdpc1lFubUEoxgwZ/MOpQ+5KF
	 JK5dPM4HiGynQ==
Date: Tue, 24 Sep 2024 17:11:35 +0100
From: Conor Dooley <conor@kernel.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
	tim.chen@rock-chips.com, wmc@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
Message-ID: <20240924-overtly-curable-13df2e7fdc9b@spud>
References: <20240924085510.20863-1-frawang.cn@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240924085510.20863-1-frawang.cn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_091142_577106_E80C3C4A 
X-CRM114-Status: GOOD (  16.02  )
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
Content-Type: multipart/mixed; boundary="===============3278487596086248248=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3278487596086248248==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9ONglCN6MohFU9El"
Content-Disposition: inline


--9ONglCN6MohFU9El
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 24, 2024 at 04:55:09PM +0800, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
>=20
> Add compatible for the USB2 phy in the Rockchip RK3576 SoC.
>=20
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
> Changelog:
> v2:
>  - Categorize clock names by oneOf keyword.
>=20
> v1:
>  - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10=
467-1-frank.wang@rock-chips.com/
>=20
>  .../bindings/phy/rockchip,inno-usb2phy.yaml      | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.=
yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> index 5254413137c64..8af4e0f8637fc 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> @@ -20,6 +20,7 @@ properties:
>        - rockchip,rk3366-usb2phy
>        - rockchip,rk3399-usb2phy
>        - rockchip,rk3568-usb2phy
> +      - rockchip,rk3576-usb2phy
>        - rockchip,rk3588-usb2phy
>        - rockchip,rv1108-usb2phy
> =20
> @@ -34,10 +35,20 @@ properties:
>      const: 0
> =20
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 3
> =20
>    clock-names:
> -    const: phyclk
> +    minItems: 1
> +    maxItems: 3

clock-names isn't a required property, you can't allow jumbling the order
like this does without breaking the ABI. Why can't the new device have
phyclk in position 1?

> +    items:
> +      oneOf:
> +        - description: aclk for USB MMU.
> +          const: aclk
> +        - description: aclk_slv for USB MMU.
> +          const: aclk_slv
> +        - description: PHY input reference clocks.
> +          const: phyclk
> =20
>    assigned-clocks:
>      description:
> @@ -143,6 +154,7 @@ allOf:
>            contains:
>              enum:
>                - rockchip,rk3568-usb2phy
> +              - rockchip,rk3576-usb2phy
>                - rockchip,rk3588-usb2phy
> =20
>      then:
> --=20
> 2.45.2
>=20

--9ONglCN6MohFU9El
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZvLktwAKCRB4tDGHoIJi
0serAPwIYuF4gyihV2aMrvRUC4W0irDbNRmBm48l27fzdMCvZgEA6gwjgmxwEj16
u1H8U9SfTXaCdALcASHdF1nIVLs+wwY=
=/vi0
-----END PGP SIGNATURE-----

--9ONglCN6MohFU9El--


--===============3278487596086248248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3278487596086248248==--

