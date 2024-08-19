Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E60EC52D6F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 17:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u8gaN7JumTH+vhgFo7z5e0AEl+7dbGR5RVQabCE2dy8=; b=1sbV0q6KdjT6zZdt2yCfa+c0Pi
	MAv7GwVu02BnQX+yzRQU87giY4lymYVGBHX2W3tka5LC06bbcf8RE4oYAjbDuKtUhXVahvBygQL9q
	YXzxZdOcYflzrNsKw+AoGFCPwcKam1Pou5zskPmXVtp05V1c8L6Nn4ZHlWMK2ziiIChaQkIgNh0kT
	XU6MnICaSE1TdebzDZUyPwjO5zYuLoBH8yWiyRH4HYM6heK+AbRP+Tvj2zkF9P5BdycymzV7J+Ysl
	+m7Uu/3jD9nE2XRTESWlnuxHhTJhnYFt3Sx3AiLZZ9q0rR6sUxF/+QzB7ujLNgk8C12/St6IHmWun
	5erfB1dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg61j-00000002NSN-1djp;
	Mon, 19 Aug 2024 17:18:43 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg5su-00000002KlS-3Ovs;
	Mon, 19 Aug 2024 17:09:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0D01ACE0AD0;
	Mon, 19 Aug 2024 17:09:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 961A4C32782;
	Mon, 19 Aug 2024 17:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724087374;
	bh=oARwwlUGy47zMdBNGONRSrSMzd7r+lf6SHLoiVjpEJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z8tBrYGYakBo+U0t83osHpxSrmFXE5mmLVvLsdo8VCQjhSdzsVMlsd6UYxj/M4knD
	 9sngdrRadvBzj64sOEqEcmJOHX8uSj7Kvt6vFR9XMpiIrou7Q+lBEaYib5OsQPKNaw
	 VGRlFa0jYm1oJ6WH2px+0CAu8CsPZO6x5RhQCc3rBXhg55Na6wYYmX2uhJIC3sBW/t
	 A0ZYjAsEHiDTqxZ+hl27zAfCbS1wdndeH+AcTahqHG8tLFDe1uXn2fvRj6kcmi1YTR
	 4fZfEuCon7edSvXp1VrKWX9s+Sk47I5Y9BOwxlFAECzWykwbnjgMOe7yFs0fl1d9/N
	 LmjROnL0a7+hg==
Date: Mon, 19 Aug 2024 18:09:27 +0100
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
Subject: Re: [PATCH 4/5] dt-bindings: clock: rockchip,rk3588-cru: drop
 unneeded assigned-clocks
Message-ID: <20240819-collector-sketch-4c3ab4c1d1ab@spud>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
 <20240818173014.122073-4-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20240818173014.122073-4-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_100937_043031_1BBCB3C4 
X-CRM114-Status: GOOD (  14.25  )
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
Content-Type: multipart/mixed; boundary="===============1937213151618486806=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1937213151618486806==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/mrW46uSLR2cSfa2"
Content-Disposition: inline


--/mrW46uSLR2cSfa2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 18, 2024 at 07:30:13PM +0200, Krzysztof Kozlowski wrote:
> assigned-clocks property is redundant, because core dtschema allows them
> if clocks are provided.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

> ---
>  .../devicetree/bindings/clock/rockchip,rk3588-cru.yaml        | 4 ----
>  1 file changed, 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.=
yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> index 74cd3f3f229a..4ff175c4992b 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> @@ -42,10 +42,6 @@ properties:
>        - const: xin24m
>        - const: xin32k
> =20
> -  assigned-clocks: true
> -
> -  assigned-clock-rates: true
> -
>    rockchip,grf:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description: >
> --=20
> 2.43.0
>=20

--/mrW46uSLR2cSfa2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsN8RwAKCRB4tDGHoIJi
0m3bAP9xPiuQp4KWRWFA1tEdvt5BlUb6PlruxmLJlIG9YqOgCgEAhT+aTF9E4YZF
39FaPSji+VLZRr3eSEA4KAMUTEx++wA=
=uDkF
-----END PGP SIGNATURE-----

--/mrW46uSLR2cSfa2--


--===============1937213151618486806==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1937213151618486806==--

