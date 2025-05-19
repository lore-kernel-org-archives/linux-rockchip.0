Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3D2EC3ABDD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 16:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hAaBgRSKRlUr10LTTvO/tuNRyHM4jMDvzdjeWxWbd5Y=; b=QVdmNzDJLI0QPohZxOBn5Pa0mZ
	O2YKG+ecAD3sLrt5UyO3+VPajidgHmmglnByz5Mh5QKECHmEWxqHnb9EwzINz2bAUz0XCjzM/cDUD
	M0+eTIW+sodlSyU7+g4ebAiVlOUiWpn17pgtqsxGmMKIoxKC01bnZU5YLH4+xa374kqGJOnmPlgYp
	IUtwhk3u9pxb9rbJl8jtXyQ7k9OzS3OCF8haeLgcNOU5welqpYwxR0fkAxYGDCdYJY/ZTOm/GDhrz
	S2EGurGfcCArnPEpaEeU6sejWer+x4MqBMA1h21cZ6rCq2TeMknuYMlXmFZNnYhKt7qbQzl7Oe7L+
	TRNuAeYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH3lt-00000009ss9-2GUx;
	Mon, 19 May 2025 16:55:25 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH363-00000009koL-3SSN;
	Mon, 19 May 2025 16:12:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 28AA6629C7;
	Mon, 19 May 2025 16:12:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15758C4CEE4;
	Mon, 19 May 2025 16:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747671130;
	bh=l8blh10OK+0hD92twpkqVpb87BrzmAIlQA1EZ50o0tY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cVPKVYMOaZToYtTsEcXK/+I3/SDkmwFYojPzngJ2eAO2RTbgmtAm/dOYf4K5Wo3yn
	 chTPeIRFPsUrqdW7d9+U1gYCrmZizHY7aZxfJ9u+VLIs+6zYNfhNJhRE2Jyq8xtBaC
	 VQy20q/fLanGWXNQudCEzGIdNFPoGnEz/70+9K9ZDME9ScztsZaGIxrB4Tjlqw2jqI
	 WdM3WD4sLxE1CorI8dSCEtl5PseH7NrVzr9u7gkJ6D+o/IOJifApCPk3hFPX8pG9rV
	 fY25RptiyzWnEwK3NgBQ8wTft5SCNcDTASNmlTe4SfFUyLNcexs/1EYKxH4Q+WJZBE
	 rOwqS969J8Tig==
Date: Mon, 19 May 2025 17:12:06 +0100
From: Conor Dooley <conor@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>, Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>, linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/9] dt-bindings: mmc: sdhci-of-dwcmhsc: Allow use of a
 power-domain
Message-ID: <20250519-caress-traps-f61f0c6067b4@spud>
References: <20250518220707.669515-1-jonas@kwiboo.se>
 <20250518220707.669515-6-jonas@kwiboo.se>
MIME-Version: 1.0
In-Reply-To: <20250518220707.669515-6-jonas@kwiboo.se>
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
Content-Type: multipart/mixed; boundary="===============3374806551010352913=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3374806551010352913==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rmhup2qVQJ30c1U+"
Content-Disposition: inline


--rmhup2qVQJ30c1U+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 18, 2025 at 10:06:52PM +0000, Jonas Karlman wrote:
> The commit 7e856617a1f3 ("dt-bindings: mmc: Add support for rk3576
> eMMC") limited use of power-domains to Rockchip RK3576.
>=20
> Remove the power-domains: false to allow use of power-domains with more
> controllers, e.g. with SDHCI on Rockchip RK3528.

Meanwhile, you're allowing it for all devices, even ones where it is not
valid. I'm not keen on that.

>=20
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 ----
>  1 file changed, 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yam=
l b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index 5fb347167004..f882219a0a26 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -120,10 +120,6 @@ allOf:
>        required:
>          - power-domains
> =20
> -    else:
> -      properties:
> -        power-domains: false
> -
>  unevaluatedProperties: false
> =20
>  examples:
> --=20
> 2.49.0
>=20

--rmhup2qVQJ30c1U+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaCtYVQAKCRB4tDGHoIJi
0qgBAP4pcRHqb6kp25l2OZfOs5jHIg25eLK9dmxq+YRes/Xm4QD/XFVfUBIq1AX2
fwYWkhhVTFWp1mGRW1ikApzTfF0Zvg4=
=t6Rx
-----END PGP SIGNATURE-----

--rmhup2qVQJ30c1U+--


--===============3374806551010352913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3374806551010352913==--

