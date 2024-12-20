Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9D83E77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 15:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RYbkuMo4IXIOX7hcw7I4YaoqtMnjgnlwsmHt4LlNR6o=; b=eNvT8JbncID4kzaNz1S4UoIaRZ
	x60tPzp4PMJEclChVgQZ9/Datzm1paHRWivXaeGKAscwZ8+oZgKDTUFgsZKFaycEHZOBShibZyzsT
	Qxn4p/ScUvum4nDSZ4kAmx6ST+AA73Cm8wdPsqK8ZQxN/tpgHKO/roRHZSJdZ4MoXa7IaZV5IH148
	7Mh2gJw3N3BnGmmNRCEy7r9LhTyeUKx2G5jU0TGj6LiVLlZY28zMYxVoEg8SrvFO+CeHR3nHH+TpR
	O6Okk6njVcpKopVR/jCTgq2L9SHPY41XyuWpFkSMYnDNQgMSRyyWQRl37f5N56t6aKdJ8Ii7r3O3a
	LI7tq06A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOee2-00000005HJ7-1rnq;
	Fri, 20 Dec 2024 15:10:26 +0000
Received: from out-177.mta1.migadu.com ([2001:41d0:203:375::b1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOed2-00000005HD8-1gSq
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 15:09:25 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1734707351;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gm44ygNWKYGV3y3H0K5cP9+tVucODkBUA9S2/w7YdGY=;
	b=k4BoEQlhF80JQvT9EVpsHHjC3QnjsslMmbUrZCINO1D/ViREoOPDIXdDwFlQWpvl8TXAr4
	hnbAW+Q76wFQwcxFDE4cAHH410sLSpomHPQMrkrnX9x7UsFPralB9PTiSt5GXQQOWu720k
	GHgOPSVRwzHD59jKadxldU9LjsjTqW3XuaiqKT36PcWqkMKF6+/775Q9N7KTe4EGRHSiSR
	o4qsvetBgAHiuwUkYDU+2V5iDyUW/xIrreW71DnJFPIuORMc8r9ARntJ801enlJeTHFpMK
	Qp4xCa1UBu4+utcjzsoD4Rr9A3bnzWi0ImeVwejSf3dTJpNG1bVqLCrNa9zW7Q==
Date: Fri, 20 Dec 2024 16:08:54 +0100
Message-Id: <D6GMFFSALGMQ.3GQ1PUD6L2TV8@cknow.org>
Cc: <linux-rockchip@lists.infradead.org>, "Conor Dooley"
 <conor.dooley@microchip.com>, <devicetree@vger.kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Chris Morgan" <macromorgan@hotmail.com>, "Rob
 Herring" <robh@kernel.org>, "Dragan Simic" <dsimic@manjaro.org>, "Jonas
 Karlman" <jonas@kwiboo.se>, <linux-kernel@vger.kernel.org>, "Tim Lunn"
 <tim@feathertop.org>, <linux-arm-kernel@lists.infradead.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Jianfeng Liu"
 <liujianfeng1994@gmail.com>, "Andy Yan" <andyshrk@163.com>
Subject: Re: [PATCH v2 5/7] dt-bindings: arm: rockchip: Sort for rk3568 evb
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Kever Yang" <kever.yang@rock-chips.com>, <heiko@sntech.de>
References: <20241220101551.3505917-1-kever.yang@rock-chips.com>
 <20241220101551.3505917-6-kever.yang@rock-chips.com>
In-Reply-To: <20241220101551.3505917-6-kever.yang@rock-chips.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_070924_576318_67B9B103 
X-CRM114-Status: GOOD (  12.52  )
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
Content-Type: multipart/mixed; boundary="===============5991699014187814121=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5991699014187814121==
Content-Type: multipart/signed;
 boundary=ff7edc69d668878bbf70c9d85970dba51d02cb40c816591ed056f064a903;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--ff7edc69d668878bbf70c9d85970dba51d02cb40c816591ed056f064a903
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Kever,

On Fri Dec 20, 2024 at 11:15 AM CET, Kever Yang wrote:
> The info for rk3568 should before rk3588.

Indeed, so thanks for this patch.

> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>
> Changes in v2:
> - collect acked-by tag
>
>  .../devicetree/bindings/arm/rockchip.yaml     | 20 +++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 753199a12923..45ee4bf7c80c 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -1006,6 +1006,16 @@ properties:
>            - const: rockchip,rk3399-sapphire-excavator
>            - const: rockchip,rk3399
> =20
> +      - description: Rockchip RK3566 BOX Evaluation Demo board
> +        items:
> +          - const: rockchip,rk3566-box-demo
> +          - const: rockchip,rk3566
> +
> +      - description: Rockchip RK3568 Evaluation board
> +        items:
> +          - const: rockchip,rk3568-evb1-v10
> +          - const: rockchip,rk3568
> +
>        - description: Rockchip RK3588 Evaluation board
>          items:
>            - const: rockchip,rk3588-evb1-v10
> @@ -1099,16 +1109,6 @@ properties:
>            - const: zkmagic,a95x-z2
>            - const: rockchip,rk3318
> =20
> -      - description: Rockchip RK3566 BOX Evaluation Demo board
> -        items:
> -          - const: rockchip,rk3566-box-demo
> -          - const: rockchip,rk3566
> -
> -      - description: Rockchip RK3568 Evaluation board
> -        items:
> -          - const: rockchip,rk3568-evb1-v10
> -          - const: rockchip,rk3568
> -

While you're fixing the sorting order of these 2 Rockchip items, it
would be great if "Sinovoip RK3308 Banana Pi P2 Pro", "Sinovoip RK3568
Banana Pi R2 Pro" and "Sonoff iHost Smart Home Hub" could also be moved
into their correctly sorted position. A quick scan seems to indicate
that all the other items are properly sorted.

Cheers,
  Diederik

>        - description: Sinovoip RK3308 Banana Pi P2 Pro
>          items:
>            - const: sinovoip,rk3308-bpi-p2pro


--ff7edc69d668878bbf70c9d85970dba51d02cb40c816591ed056f064a903
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ2WIiwAKCRDXblvOeH7b
bqZ5APwIJeBqivJAoI+z5FAYCygHTE4cPqOTLgVXZsDKbn+9CAD/a4R1bix8rmQU
e0oW+cSo6l5s0PpVOtlvPgfgKc/bbA4=
=P0sf
-----END PGP SIGNATURE-----

--ff7edc69d668878bbf70c9d85970dba51d02cb40c816591ed056f064a903--


--===============5991699014187814121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5991699014187814121==--

