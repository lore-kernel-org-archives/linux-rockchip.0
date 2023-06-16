Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA94DEB64DA
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 19:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aPhX+iSaA3Yk4rckA2/JSuzK8wlFiBehZL2Cyq6tjtg=; b=aer8U/Sr6wlIaDtYRfQZGgW2SQ
	gOUgyEgXNlOQH1ArOTNuF8OYRAcXR2l3DJ5mPrTY9S3wtCqg83a5yLvhjxX00pJy7LKhnGkpfCz6w
	YMRXjDvtqrubNY75rb/2ZMkY6Alo2IxCobmHPc1hgXcFdSI0T77l38gE3ECSfKI4OTJqn9nr6zsiz
	ownKLg25w2eFhsHyDoeEMKF5YFRjQuhn0GmTcLGmpxhoCLD/UwJIyXcKsH0djR9rqwQQBud/P3BMv
	vYz3X71njOxBUddp3AeXyWi/Ni3wSfcpftHUtSmcQMpflWgH1+MGIefo59rKC6g/5805sW8AUFfGA
	564DLjXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAEmZ-001aSx-1m;
	Fri, 16 Jun 2023 19:06:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAElQ-001ZO7-0F;
	Fri, 16 Jun 2023 19:05:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7E55D60F9C;
	Fri, 16 Jun 2023 19:05:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FC1BC433C0;
	Fri, 16 Jun 2023 19:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686942338;
	bh=ghVGdlSlgofaafooCK0M9AUa/7WBqwttYf70VLC3SL4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HEJyNOEJquwzUGrsoTO/vqorphAT2OvNpcKS0K0rNvNx0ZTywBqzVlmoU3yFMd+w5
	 ehzF4YY9uUgLPDCM0XlYPddoaF/b0G9pyg2cuTsjeCwGejtIBx4U/9RA3Qvyna732i
	 hN9RkTjquF6i+fUhQwENGZUjzzu/iNkgPaWcJW/aWCqiSxA78Ut+5CRs7Wq8bunTqz
	 XkkaBFh6aBSnNreovnLS4YfOHXuTz2VPw4NAb19RGtJ4+97DEQgtcu+VRUKsx0TcXR
	 8z1oTzi1WxMxikeEApP/Jo96pdk096VrZiHE2T9pQpFN6OD4zJi00mciec7IUuRDuy
	 WlOLfBDhzaEZw==
Date: Fri, 16 Jun 2023 20:05:33 +0100
From: Conor Dooley <conor@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v6 22/26] dt-bindings: devfreq: event: rockchip,dfi: Add
 rk3588 support
Message-ID: <20230616-swimwear-prewar-f9dce761d2ec@spud>
References: <20230616062101.601837-1-s.hauer@pengutronix.de>
 <20230616062101.601837-23-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230616062101.601837-23-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_120540_222363_6283B79D 
X-CRM114-Status: GOOD (  20.20  )
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
Content-Type: multipart/mixed; boundary="===============5088365719561018281=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5088365719561018281==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f5hj02m+E3XzG/0w"
Content-Disposition: inline


--f5hj02m+E3XzG/0w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 16, 2023 at 08:20:57AM +0200, Sascha Hauer wrote:
> This adds rockchip,rk3588-dfi to the list of compatibles. Unlike ealier
> SoCs the rk3588 has four interrupts (one for each channel) instead of
> only one, so increase the number of allowed interrupts to four.
>=20
> Link: https://lore.kernel.org/r/20230524083153.2046084-23-s.hauer@pengutr=
onix.de

It's unclear what the point of this link is.
My comment still stands about whether only the new compatible should be
permitted to have more than one interrupt. I don't recall a response to
that question on the last version.

Cheers,
Conor.

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>=20
> Notes:
>     Changes since v4:
>     - new patch
>    =20
>     Changes since v5:
>     - drop interrupt-names property
>    =20
>     Changes since v4:
>     - new patch
>=20
>  .../devicetree/bindings/devfreq/event/rockchip,dfi.yaml       | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi=
=2Eyaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> index e8b64494ee8bd..50d3fabe958d5 100644
> --- a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> +++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
> @@ -14,6 +14,7 @@ properties:
>      enum:
>        - rockchip,rk3399-dfi
>        - rockchip,rk3568-dfi
> +      - rockchip,rk3588-dfi
> =20
>    clocks:
>      maxItems: 1
> @@ -23,7 +24,8 @@ properties:
>        - const: pclk_ddr_mon
> =20
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 4
> =20
>    reg:
>      maxItems: 1
> --=20
> 2.39.2
>=20

--f5hj02m+E3XzG/0w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZIyyfAAKCRB4tDGHoIJi
0q7BAP0dibTpMPe8hiA9YPH24Slmj5/UQ0L0F/cf633sU+PZjwEAq9HgIGb0ByF6
9pta/XL/QX3K9spBxDgiHPSPJNHrVAs=
=RHMZ
-----END PGP SIGNATURE-----

--f5hj02m+E3XzG/0w--


--===============5088365719561018281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5088365719561018281==--

