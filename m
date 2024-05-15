Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89D5BC25B77
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 16:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KOgHlwktbAnivwQZnQ+ZEGI+YqH+oggxOnWPvAfNDq8=; b=goYFjFYtahXvOq+aH6v21sohE3
	g3zyHPCelHB/NMwHoowjM5WEyKTbnDErgKqX5Osphx2yt/y8f0IByKPIPbV6CVPQuqhIjdFU5HsyS
	kXV8qoKoMUJ1Yc193QGSI3yr0/iKWl/gWme0NAZwX5a9TXeuwzeJfeqCdby1u9hMJqmHk9jQFwJU/
	CQU5I8AxuepIupMQWoaxHldUU8QD/rzLqa4NW8rLLtCkZSJa9qxB9zTCJmfekP1Y01kQ4lKYKqRy2
	fUVYcYKPuSZb3yuFJ/bw00XT5TmWQcG5lKq6MstSaXhPpwVirrPvaLEtQLNphsxBtzQZdJUpPgDCp
	Zi9+F3iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7HM6-000000025Y5-1UQW;
	Wed, 15 May 2024 16:19:50 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7HLx-000000025U8-0EGv;
	Wed, 15 May 2024 16:19:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5D91CCE16E9;
	Wed, 15 May 2024 16:19:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93EB4C116B1;
	Wed, 15 May 2024 16:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715789975;
	bh=/He7CAq7HiGjDS6udlxRywGS+srOIUjRiPK0TOJkqk4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZCbEkMsgY8TOtD4BoWYV4ytezczs/FHfE9OtBrCmlKm5e7OxMakHsokNybGeIogcs
	 yqk/Tshaec1pcV0HOTV2rjbnc8G4I6vN+L/RzwxSFhX4Iy+TMfvCo2BVVnAbG4q7Uk
	 DxVxd+yP7NCh3Znj9ExtkE3uZhelNmIqJFnCs+lwOhgcq8W1uiNphd5UNlJXkW+SrT
	 s7g9NvY4NcQMKWfD04G3thdF/bYuCyPqeDBfzBb7F1zPFpUd8P4bwr5ASI4W7BqWa1
	 BdZauP7TVWwIZtGiDG78EBBm1eT+aCMPC4Lelzf6tBDhrwy6j/2AkBJt7rPwyQQOR9
	 095J9zLa17mmg==
Date: Wed, 15 May 2024 17:19:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: display: vop2: Add VP clock resets
Message-ID: <20240515-risk-exes-13db315da6bb@spud>
References: <20240514152328.21415-1-detlev.casanova@collabora.com>
 <20240514152328.21415-4-detlev.casanova@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240514152328.21415-4-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_091941_563499_D02AB10C 
X-CRM114-Status: GOOD (  15.86  )
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
Content-Type: multipart/mixed; boundary="===============9079914996212660269=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9079914996212660269==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="P/Z/zOdIpdF94JWu"
Content-Disposition: inline


--P/Z/zOdIpdF94JWu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 14, 2024 at 11:19:47AM -0400, Detlev Casanova wrote:
> Add the documentation for VOP2 video ports reset clocks.
> One reset can be set per video port.
>=20
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

Are these resets valid for all VOPs or just the one on 3588?

> ---
>  .../display/rockchip/rockchip-vop2.yaml       | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-=
vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop=
2.yaml
> index 2531726af306b..941fd059498d4 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.ya=
ml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.ya=
ml
> @@ -65,6 +65,22 @@ properties:
>        - const: dclk_vp3
>        - const: pclk_vop
> =20
> +  resets:
> +    minItems: 3
> +    items:
> +      - description: Pixel clock reset for video port 0.
> +      - description: Pixel clock reset for video port 1.
> +      - description: Pixel clock reset for video port 2.
> +      - description: Pixel clock reset for video port 3.
> +
> +  reset-names:
> +    minItems: 3
> +    items:
> +      - const: dclk_vp0
> +      - const: dclk_vp1
> +      - const: dclk_vp2
> +      - const: dclk_vp3
> +
>    rockchip,grf:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
> @@ -128,6 +144,11 @@ allOf:
>          clock-names:
>            minItems: 7
> =20
> +        resets:
> +          minItems: 4
> +        reset-names:
> +          minItems: 4
> +
>          ports:
>            required:
>              - port@0
> @@ -183,6 +204,12 @@ examples:
>                                "dclk_vp0",
>                                "dclk_vp1",
>                                "dclk_vp2";
> +                resets =3D <&cru SRST_VOP0>,
> +                         <&cru SRST_VOP1>,
> +                         <&cru SRST_VOP2>;
> +                reset-names =3D "dclk_vp0",
> +                              "dclk_vp1",
> +                              "dclk_vp2";
>                  power-domains =3D <&power RK3568_PD_VO>;
>                  iommus =3D <&vop_mmu>;
>                  vop_out: ports {
> --=20
> 2.43.2
>=20

--P/Z/zOdIpdF94JWu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZkTgkQAKCRB4tDGHoIJi
0lwXAP9ODH1i6CX+87vgyTIDRUsnCdlaUgSTbNvl8Tlmwa+XDgD+L3V6TQMyak1G
+54i1z3/hchYtm3/A1uMHW3Irz9oKAQ=
=h/hX
-----END PGP SIGNATURE-----

--P/Z/zOdIpdF94JWu--


--===============9079914996212660269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9079914996212660269==--

