Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBF1DC00528
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 15:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vJcvvCrFOwdWRY8xVBpS5jot9HqgsPHjTqOA60ShYuU=; b=lzsqbmVsARybpuuMppHQr+BWNU
	yrkzmPRv4aFt6mkNCqbqy8UgpoM8dJ4RGF7eWtC2ZOLteWAEDl+3HXkZZNfxnab8ppEglCt1D6IVO
	/h7UJg4auE5UgTQVL08CUIwrFnjYuTVue6B86Xzn8nJyy4eFd42YvKB1mLG8rUC924mEfW4cLTi/i
	B+kaqfU7xrknk5zaUQNOfMEK2aJW/xkcJvsKbmAK9xxEX9zA3FOHT+8+N813+FF+YuLlSiRi241x/
	odqlDIGUUyjr5jzJzeHR6H+76HLuW7Do2GjBlCsIGXrqySakttLDKMeVtsxQwpY8U6gHd8rLxiS17
	u850ZM/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQV8F-00GNeI-1p;
	Mon, 31 Jul 2023 15:48:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQV8C-00GNd0-0Z;
	Mon, 31 Jul 2023 15:48:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A7DF6611CF;
	Mon, 31 Jul 2023 15:48:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C4B9C433C8;
	Mon, 31 Jul 2023 15:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690818502;
	bh=m8ixijRMZAOC8xXD813MvkECftXap9fxbZmJs4qUrjk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RnlbfEelf7XNw9O+XPFTHvfkgD8Scu56CN6ZL1urjtMpZ2bGybgt/QN9yu++SVeMe
	 jtIf0/yKc487JZ4l/skphUCSPFtcmrJH1dMlwIe+tT1r7HU3fwtdGAXg9NJcRyU9sX
	 3YoNFSXM+A2g3Jm2JUuPPJIkIWszxZv90+rLxdGRrBr5Px+TZn3pKo4mKbjCu6CY3r
	 cWJd3bTtePrtJI8zNsUxaJQsU9OCDRfhEIjAJlHnhIsb+Yn1hXLiI8qQO0azh6ibja
	 YUZnxHGzEE37m5erQ2sQWGID+2gd9tGjOFOCOZbxmkTe72MVp76FNfz7iiCq8aFgeW
	 3tSD7SOl0FuXw==
Date: Mon, 31 Jul 2023 16:48:17 +0100
From: Conor Dooley <conor@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-pwm@vger.kernel.org,
	Thierry Reding <thierry.reding@gmail.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 01/13] dt-bindings: pwm: rockchip: Document rv1126-pwm
Message-ID: <20230731-doornail-shrunk-26c9948dacf9@spud>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
 <20230731103518.2906147-2-jagan@edgeble.ai>
MIME-Version: 1.0
In-Reply-To: <20230731103518.2906147-2-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_084824_255673_5CEA9584 
X-CRM114-Status: GOOD (  15.84  )
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
Content-Type: multipart/mixed; boundary="===============2084459437420418108=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2084459437420418108==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="svlWwtAlFNyPjpWF"
Content-Disposition: inline


--svlWwtAlFNyPjpWF
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 31, 2023 at 04:05:06PM +0530, Jagan Teki wrote:
> Document pwm compatible for rv1126 which is fallback compatible
> of rk3328-pwm group.
>=20
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
> Cc: linux-pwm@vger.kernel.org
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: "Uwe Kleine-K=F6nig" <u.kleine-koenig@pengutronix.de>
>=20
>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Do=
cumentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> index f2d1dc7e7b3f..65bfb492b3a4 100644
> --- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> +++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> @@ -32,6 +32,7 @@ properties:
>                - rockchip,rk3308-pwm
>                - rockchip,rk3568-pwm
>                - rockchip,rk3588-pwm
> +              - rockchip,rv1126-pwm
>            - const: rockchip,rk3328-pwm
> =20
>    reg:
> --=20
> 2.25.1

--svlWwtAlFNyPjpWF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZMfXwQAKCRB4tDGHoIJi
0mUeAP9FfrnB/pm7rQ7mO6aHsHn/jUsaVsmx7s+8Dwkbx3KQnQD+OHt+J0rsv5CK
UZeS0tqfxtrUSgvDrGKzYGeTNadu1Ak=
=ova7
-----END PGP SIGNATURE-----

--svlWwtAlFNyPjpWF--


--===============2084459437420418108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2084459437420418108==--

