Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ACE9CD6104
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 16:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xebyKaq5R9kC6SDutgsg+eDAXIhAjFV4BmNMzCct0+A=; b=1K5BQSOuHnN+gfTBMi4TeRSsdQ
	mp8ZXrKiHC5K6na2hV5wbIpEVuSffG9B0xbLVYbFujmtnLomsedVX1lhfaHyLNBnFg2WHzfBeJ8eY
	FBSTfWo8/UBVMWHu0fDRFbagPXMU92GppIkSjlUCqiQvpGNvNXzlZTN+nFUfmFmq9MsVGyrt0RvyR
	fnyNOHHr1fSPIlfahMDU186e4HBMc2zfrFqbgtc8Nq5DiVgeh2x6SSV9ePde7uqcrNb5+kOPomwiS
	JGEvJQEhZMO6y3PQF7cYF/TH0+dpp5tYeLSBbK0XF/72ZbetTNf62CjbyknrVcA8E9gJ84tZcfUCG
	OVerB3qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpt5n-00BB9Z-2d;
	Mon, 09 Oct 2023 16:26:51 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpt5k-00BB8G-1J;
	Mon, 09 Oct 2023 16:26:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 1A39DB8159F;
	Mon,  9 Oct 2023 16:26:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD62DC433C8;
	Mon,  9 Oct 2023 16:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696868806;
	bh=TS7qlSQMJeaEwASV4I5bE63YJ4CtP1GPaVK0RvdE5Dc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V8ly/Rh+3e8H/Pg56Qi6/j04x4vPz0nxbQPuq6aMKwy+xlQpBcHOpzXwIDTTdzc0m
	 HzRGiKWkjV45/eclX2Z+KRlYU//K0OA93zRQk6x+xnb8nkZJcNK80Mlpi+rrhxmb+7
	 Stkzdi2bnLvfAUb1QEPd62wWAYqj+7ZiFY6bt6Jmq2tK1XN4gixKWJiO454+czsQxH
	 midOWd7eNHoErFnIeZp3UHADfnFa8SUZx6lyQOQaY3FPjc9Pga5hxb+SBQmYojgXhr
	 a1BrKEJ2DUJkc8kMYsh0Ytt8j01dnGA9wLGLpHVLF8P/z8fDyP4j5dEfOAx3FB7Tma
	 3aP/1mE9d1UWQ==
Date: Mon, 9 Oct 2023 17:26:41 +0100
From: Conor Dooley <conor@kernel.org>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@edgeble.ai>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: arm: rockchip: Add Orange Pi 5 Plus
Message-ID: <20231009-poncho-refining-5206e3875669@spud>
References: <20231008130515.1155664-1-megi@xff.cz>
 <20231008130515.1155664-4-megi@xff.cz>
MIME-Version: 1.0
In-Reply-To: <20231008130515.1155664-4-megi@xff.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_092648_606886_EAFB9891 
X-CRM114-Status: GOOD (  15.15  )
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
Content-Type: multipart/mixed; boundary="===============6876680076635018947=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6876680076635018947==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jtxAoSr1vHYzIdfq"
Content-Disposition: inline


--jtxAoSr1vHYzIdfq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 08, 2023 at 03:05:01PM +0200, Ond=C5=99ej Jirman wrote:
> From: Ondrej Jirman <megi@xff.cz>
>=20
> Add devicetree binding documentation for Orange Pi 5 Plus SBC made by
> Xunlong.
>=20
> Signed-off-by: Ondrej Jirman <megi@xff.cz>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index ca5389862887..1a636ad540ce 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -870,6 +870,11 @@ properties:
>            - const: tronsmart,orion-r68-meta
>            - const: rockchip,rk3368
> =20
> +      - description: Xunlong Orange Pi 5 Plus
> +        items:
> +          - const: xunlong,orangepi-5-plus
> +          - const: rockchip,rk3588
> +
>        - description: Xunlong Orange Pi R1 Plus / LTS
>          items:
>            - enum:
> --=20
> 2.42.0
>=20

--jtxAoSr1vHYzIdfq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSQpwQAKCRB4tDGHoIJi
0maaAP47E1PJIyhK8cjy+hke5lwVZTaDc5KFma7+IRK1rtnLAwD+JBc/RJpoF+Fc
rBJfx39NBvbJPDnRQ7dDfFCZznzkSgQ=
=+cps
-----END PGP SIGNATURE-----

--jtxAoSr1vHYzIdfq--


--===============6876680076635018947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6876680076635018947==--

