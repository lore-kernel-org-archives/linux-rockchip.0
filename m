Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3404DCD5BB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 May 2026 16:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h0fdEv7LEP4dqJ0X8w/tKtC/jrhWv94OK83DF98poMs=; b=0u+6ZXryoXZwTFDiefSnWhM4oG
	yggmQFF38KZnxd7XOO5JPqXNsZAuGwHsgyP6sjPbwfa3ULn8maRgMesgrj/jabGYR1VnJ7kqujV4J
	9DsGkCyuLdwjPWW+BUmRdPCXU/8s0WP9mOBlD/SVR1Df7JSmLDSGEm8WP+LX7mMnj5z9PuLQLERw4
	Aw7XkExaLfSk4Zr5nVl5D5iqKrlhf3QYNskIKarvKrhRuhU5SWW3F9TL2PUul6H1HL7EYMZ6HBbry
	uq8PNKoVIFafV5nzzmHBJmXsBCC8wgmemIU97Cid1dKpIfHoeK0LXTQpkWhfiKRqDYFfKT0QFGDAR
	F+KDkFOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRYZJ-000000004jL-3lUl;
	Mon, 25 May 2026 16:54:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRYZI-000000004iy-0mso;
	Mon, 25 May 2026 16:54:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 52FDF60008;
	Mon, 25 May 2026 16:54:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B92B01F000E9;
	Mon, 25 May 2026 16:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779728059;
	bh=3kgvASxp3f7rsNalAAxiKY75IcAIHz3Q2alZe0wcMyI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WHSIA2szLm/lG8nfbsx0b1dX/19zaHSHKmzhqWGOlfRydi3jFqS0LXDvjPo15jyr+
	 GYMyv3Z/0DMGvpPKfLG0XbJC+OcLdnLPzvuK6m8OvRwxBF2MD/heGI1Q7Brotx7ek9
	 8Iuni51ScaWRnImVtRTHOTIckQuMsxO5IsMSKMLpgp6ZGFkTelEqhc/9cLm4jFD0LS
	 3kMa+nu80ND+5cWl1nCeqjCt5kLTFG5W6CVabh/SxGxd50iWHJds6KK5aypiLMwEN7
	 mwQuZrVhRqknXAJAuZh2iThVMKD7rpQkF5fuOzvSCkPIk87OMC6ZjEIynhFEYg5xSe
	 SMmE5z96Q8tyQ==
Date: Mon, 25 May 2026 17:54:11 +0100
From: Conor Dooley <conor@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v8 01/10] dt-bindings: display: rockchip: analogix-dp:
 Fix hclk as third clock for RK3588
Message-ID: <20260525-ominous-hurling-c24874030f5a@spud>
References: <20260525125331.140059-1-damon.ding@rock-chips.com>
 <20260525125331.140059-2-damon.ding@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20260525125331.140059-2-damon.ding@rock-chips.com>
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: multipart/mixed; boundary="===============0329519300309671000=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0329519300309671000==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Mp1gnxnR0vhDimzB"
Content-Disposition: inline


--Mp1gnxnR0vhDimzB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 25, 2026 at 08:53:22PM +0800, Damon Ding wrote:
> RK3588 eDP controller requires HCLK_VO1 to access the VO1 GRF
> registers and enable the video datapath.
>=20
> Previously, the clock was enabled implicitly via the 'rockchip,vo-grf'
> phandle reference, which allowed the eDP to work without explicitly
> managing the hclk_vo1 clock. However, this is not safe or explicit.
>=20
> To make the clock dependency explicit, enforce per-SoC clock-names
> requirements:
>  - RK3288: 2 clocks (dp, pclk)
>  - RK3399: 3 clocks (dp, pclk, grf)
>  - RK3588: 3 clocks (dp, pclk, hclk)
>=20
> Do not reuse the 'grf' clock name for RK3588 because it represents
> a different clock with distinct control logic:
> - The 'grf' clock is only for GRF register access and is toggled
>   dynamically during register access.
> - The 'hclk' clock controls both GRF access and video datapath
>   gating, and must remain enabled during probe.
>=20
> Fixes: f855146263b1 ("dt-bindings: display: rockchip: analogix-dp: Add su=
pport for RK3588")
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>=20
> ---
>=20
> Changes in v4:
> - Modify the commit msg.
>=20
> Changes in v5:
> - Enforce the correct third clock name on a per-compatible basis.
> - Modify the commit msg simultaneously.
>=20
> Changes in v6:
> - Expand more detail commit msg about using hclk instead of grf clock.
>=20
> Changes in v7:
> - List all valid clock names at the top level, and constrain the clock
>   count for each platform with minItems/maxItems in allOf.
>=20
> Changes in v8:
> - Fix indentation to 10 for enum in clock-names property.
> ---
>  .../rockchip/rockchip,analogix-dp.yaml        | 34 ++++++++++++++++++-
>  1 file changed, 33 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,=
analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockc=
hip,analogix-dp.yaml
> index d99b23b88cc5..a1ab7a77bdd3 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> @@ -26,7 +26,9 @@ properties:
>      items:
>        - const: dp
>        - const: pclk
> -      - const: grf
> +      - enum:
> +          - grf
> +          - hclk
> =20
>    power-domains:
>      maxItems: 1
> @@ -60,6 +62,32 @@ required:
>  allOf:
>    - $ref: /schemas/display/bridge/analogix,dp.yaml#
> =20
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3288-dp
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 2
> +        clock-names:
> +          maxItems: 2
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3399-edp
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 3
> +        clock-names:
> +          minItems: 3

If you go back to v6, you'll see that I never asked you to remove the
explict clock-names from here or below. Only the one from the 3288
section. The minItems was an addition, not a replacement.

pw-bot: changes-requested

Cheers,
Conor.

> +
>    - if:
>        properties:
>          compatible:
> @@ -68,6 +96,10 @@ allOf:
>                - rockchip,rk3588-edp
>      then:
>        properties:
> +        clocks:
> +          minItems: 3
> +        clock-names:
> +          minItems: 3
>          resets:
>            minItems: 2
>          reset-names:
> --=20
> 2.34.1
>=20
>=20

--Mp1gnxnR0vhDimzB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahR+swAKCRB4tDGHoIJi
0o1sAPoCijEh8PvkC+TvmEG0cY5/F12kqBe0lYz7nrYlMfDh9AEA70JPBE7y/TZV
FPGNv8tWORRJxlbf3FYOq1H7vDY0/AE=
=9FAA
-----END PGP SIGNATURE-----

--Mp1gnxnR0vhDimzB--


--===============0329519300309671000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0329519300309671000==--

