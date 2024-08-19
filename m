Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4575C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 17:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2EgPdwVZ9KC4IuTas0IFfSlCZnz9uhOBh5wsWvM4O3w=; b=bz5topmQI+j1nYyUed71qSjL9I
	yzftJsUtenVcW1CLIA7yPuha/vDDZsYnNJZk+G1aZ94oMu2+udkovel1hcTzaE4mm/zsCFb/F5Trm
	dY6wLGmAchnmUbDSExNpePF6bvT6E07Z8ITBwj+pGj9oToyKzeK1QIWt6mWlDzv7hu4wB+fAsbjC4
	WlyQNCGStRKAJ0a0wAbdwxcY3WFm1Zg9Sho+ercQT+jRYE7QooXp0xRL/YJjYGQqNOTL+06C3RyV3
	SC4sQ7Sq2L+QFPpUr/zdDMddpulFuM68l6HfW8LTkzhj4MdUt/ZsxpOegph00IGRb8S4dxM+a/hk9
	5vZVuOcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg631-00000002Nl6-22NA;
	Mon, 19 Aug 2024 17:20:03 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg5ta-00000002Kxk-3c9x;
	Mon, 19 Aug 2024 17:10:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2C0AD60684;
	Mon, 19 Aug 2024 17:10:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 361CAC32782;
	Mon, 19 Aug 2024 17:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724087417;
	bh=tvkLKPfhnq+Dnv1tlgVWFGm3TpmRLkA2ElQqNmnlHro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IB/N4JBK7fXxX7UhoH3nnoB+wlcfSuRKms8mE8imDwiTdH5XLhetGXekNGlyxDWCf
	 StZ6nuHMO6vK6auDgSUirJd4MDk0qMSe1Wsq+hS7yTXi3/rZbMeDWVyjEcA3RYXuGK
	 oZm5LAA958WoDAHW5e4LN1aTBRNsOuiFNH2QSKnKfhMjt00mAGQArW++4IUgu/dMpS
	 ZdvNX+pP+k87820wCkq5pBh+rPm9IDSKduWXwlwgdAvhdwDIgGw+Xk/m4ghnPSzGRh
	 02i3/jbryMj1Xj1QXqXjZ3el+bfbU1DzlBYdGzLT5Iugdk1mOQ6fjEMVloGfqZFvbr
	 M5tgV5fJohOuA==
Date: Mon, 19 Aug 2024 18:10:11 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Serge Semin <fancer.lancer@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Magnus Damm <magnus.damm@gmail.com>, patches@opensource.cirrus.com,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
	linux-mips@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 2/5] dt-bindings: clock: cirrus,lochnagar: add top-level
 constraints
Message-ID: <20240819-skipping-chip-55b0e252434c@spud>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
 <20240818173014.122073-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20240818173014.122073-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_101019_053240_FED3EC81 
X-CRM114-Status: GOOD (  15.96  )
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
Content-Type: multipart/mixed; boundary="===============8972174557261818395=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8972174557261818395==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l+jfm2awHlfu3Eit"
Content-Disposition: inline


--l+jfm2awHlfu3Eit
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 18, 2024 at 07:30:11PM +0200, Krzysztof Kozlowski wrote:
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clocks.  Drop also redundant assigned-clocks properties, because
> core dtschema allows them if clocks are provided.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

> ---
>  .../devicetree/bindings/clock/cirrus,lochnagar.yaml         | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/clock/cirrus,lochnagar.yam=
l b/Documentation/devicetree/bindings/clock/cirrus,lochnagar.yaml
> index 59de125647ec..ccff74eda9fb 100644
> --- a/Documentation/devicetree/bindings/clock/cirrus,lochnagar.yaml
> +++ b/Documentation/devicetree/bindings/clock/cirrus,lochnagar.yaml
> @@ -67,9 +67,9 @@ properties:
>      minItems: 1
>      maxItems: 19
> =20
> -  clocks: true
> -  assigned-clocks: true
> -  assigned-clock-parents: true
> +  clocks:
> +    minItems: 1
> +    maxItems: 19
> =20
>  additionalProperties: false
> =20
> --=20
> 2.43.0
>=20

--l+jfm2awHlfu3Eit
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsN8cwAKCRB4tDGHoIJi
0jnTAQCPbV4r9ep02lDb2S1N3Anztw9Q8g+dehpk36H3+f3iXwD+M3LSx5qb+UCB
gOhNqjjY3N0OMTXDxDo76CN0GeoJwg0=
=KkuM
-----END PGP SIGNATURE-----

--l+jfm2awHlfu3Eit--


--===============8972174557261818395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8972174557261818395==--

