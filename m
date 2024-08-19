Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22E2FC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 18:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Bq9qpuHwZB3POrRwefcgVcMM5+a8LzKomPBa89/wF8=; b=BvPSlflTAxh+ML49erBs79Pxcd
	K4Gjrpic3fByZ7XoKR7A1O9+3fts3t10anMNiutYd4jUFfTiWtfMoA5TSIvv8T0ndxZF9z26thY4o
	c8H7ObzjWo8VTF5rt9n07P6ra0dXeLjDHuWS2oFIQ98fVYeyU/IKivn2MLFvjnen542KDvtC10n7e
	Q/cZbxdq8+erMpgg5BPrzM2Aco9JbIxzFDMyFqIvRjUDMTucC3lR/Zy3C1vCE62I/Rl+FzLrGf13g
	GN1DsulpG4z2KyX6IiBRROtG8JVYNxA4qbSNNUZEQ3aLmsgXNaP6uJ4URnkEWEvilpb/i+90mWKCK
	PRsAuoSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg798-00000002a4X-2AKe;
	Mon, 19 Aug 2024 18:30:26 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg5uD-00000002L7h-3wEv;
	Mon, 19 Aug 2024 17:10:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 17F5CCE0AD0;
	Mon, 19 Aug 2024 17:10:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5072C32782;
	Mon, 19 Aug 2024 17:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724087455;
	bh=BkzBcgZ6MeeyKr/8OAHpDoLQnK+icaA3eyHoXP52qSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Otjdm7aA5VxyBcfNAmLpnd5lUpLaeh6bivkXUSq2c6lXtzu9VkD6YDAQpsUKYdmTk
	 ZnpPIU7BMOvedJjrYht/uxySYTuCYPFqXm/lfKXTi4uBu6cz5pm27Y+Cm1BVQpf2Iw
	 WNI3f18/Gu48e/TVVWBmyz6gxvxiGnUeVGerhCM1Cb5hiQOqc/ZPo1iDxbRRmZ6QpD
	 akq8E5wGJ8+Ol2kp6W/L9ASUE6fI/fsRt9merad33OQItoolqRol0II2AKJqzOW7hh
	 f9T/wqiPPIi6jAvqcwycHH7I53kn+1OPce5ha2xQpxaqiIFxBR94SbTS1b5jVoKWS7
	 E8gRDCAsEMA5Q==
Date: Mon, 19 Aug 2024 18:10:48 +0100
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
Subject: Re: [PATCH 1/5] dt-bindings: clock: baikal,bt1-ccu-div: add
 top-level constraints
Message-ID: <20240819-salt-oxymoron-41d0d0bbf8b1@spud>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_101058_348603_FC0DC4C6 
X-CRM114-Status: GOOD (  16.56  )
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
Content-Type: multipart/mixed; boundary="===============1804738553008732183=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1804738553008732183==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o8wdPAPqT2Zmc7N9"
Content-Disposition: inline


--o8wdPAPqT2Zmc7N9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 18, 2024 at 07:30:10PM +0200, Krzysztof Kozlowski wrote:
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clocks and clock-names.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

I really wish you'd sent cover letters so I don't "have" to send 5
different acks where one would do.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

> ---
>  .../devicetree/bindings/clock/baikal,bt1-ccu-div.yaml     | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/clock/baikal,bt1-ccu-div.y=
aml b/Documentation/devicetree/bindings/clock/baikal,bt1-ccu-div.yaml
> index bd4cefbb1244..30252c95700c 100644
> --- a/Documentation/devicetree/bindings/clock/baikal,bt1-ccu-div.yaml
> +++ b/Documentation/devicetree/bindings/clock/baikal,bt1-ccu-div.yaml
> @@ -134,9 +134,13 @@ properties:
>    "#reset-cells":
>      const: 1
> =20
> -  clocks: true
> +  clocks:
> +    minItems: 3
> +    maxItems: 4
> =20
> -  clock-names: true
> +  clock-names:
> +    minItems: 3
> +    maxItems: 4
> =20
>  additionalProperties: false
> =20
> --=20
> 2.43.0
>=20

--o8wdPAPqT2Zmc7N9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsN8mAAKCRB4tDGHoIJi
0g9hAQD23j6IACN0lwlIWMGLgnB5y0kie/pEMOqt2djDMLdPcgD/QeiNcD9hvDcG
yZWAg6ZsBkCGw5djJD6Z+qVuQkXpaQs=
=SJOu
-----END PGP SIGNATURE-----

--o8wdPAPqT2Zmc7N9--


--===============1804738553008732183==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1804738553008732183==--

