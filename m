Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD6EBEB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 18:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A7M4QciN+sjtvlGVekQPGEuy/WoPLZqX8TuwLDaVoFE=; b=IaQpg5vWRTGWJYFIFmHgmDjTzf
	A+Y+e1Xk/Hq2jEt3shG49j/Scf4XzA8I+6x6e5eopUCqGpG6Hws+LuvBCvkjTLz9CIwaqfzSg7GTF
	vfbVyqyAI+UKRs1HWWoHCX8cwbs9hyiA2jDrACZiMaSu9oW7gWnCQ/yS2pAmz7ax0qhAr0DMK+k+t
	ScH6eHGaono8K2xTl8iHydV8oygaU5T4fmQPcZ9bxkKMB7ePo0d+D7RSgtN9YJkKOhKk509IkYdok
	PZNWkEGrzIMLZSJS2zSjpMF6t3CC0BKBUcG+nVRYIaT9dX52UaHCldn+9NOBUfjuuXcaKP4Eb7Now
	cjSv7t9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIvXx-00CS57-35;
	Mon, 10 Jul 2023 18:23:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIvXs-00CS3k-1G;
	Mon, 10 Jul 2023 18:23:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9310F6118A;
	Mon, 10 Jul 2023 18:23:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBF41C433C8;
	Mon, 10 Jul 2023 18:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689013415;
	bh=Ue8S8BHUsd/tebdVtCsr4IFxk4hJOuk3oBJHCOkWSb0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G8M+VtUARnYUpFhCq4WIpSTUGcw4dgIlZ5jVRUOGdnw6SJFdl18CeD1klXHZjvhZZ
	 czuyaTy/eSWIQpYs6j/MQHsEZ5n+eYFCKz9J3nscWjTDn7pbONHo//H+iUKaxRdjTv
	 nbimcvRjX/wHGpBTsrW+FWNNm6rfX1eOarwhDcv9bdJdaFQXY1ZXnUUvMzvDILx9P2
	 4SPZsnzLYx/EpmlQ0fQplNDLNAtYLIm2aQqL07Zib1QXRt5B5IdXcuqBwWpnon3dp+
	 ocQuIOyv/1K4gswz5HAkp2DMFxOh/lO3lVOfiOVam67Mk9Hwua1bprud3yN7QiuGO1
	 1tRWC1zo3/mwA==
Date: Mon, 10 Jul 2023 19:23:30 +0100
From: Conor Dooley <conor@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v1 01/13] dt-bindings: vendor-prefixes: Add prefix for
 belling
Message-ID: <20230710-wand-acts-01633db6ed50@spud>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
 <20230710165228.105983-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20230710165228.105983-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_112337_301378_D527B77A 
X-CRM114-Status: GOOD (  14.27  )
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
Content-Type: multipart/mixed; boundary="===============5948821932516797621=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5948821932516797621==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5n00OFGcdR2hBsDw"
Content-Disposition: inline


--5n00OFGcdR2hBsDw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 10, 2023 at 06:52:16PM +0200, Sebastian Reichel wrote:
> Add a vendor prefix entry for belling (https://www.belling.com.cn)
>=20
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index af60bf1a6664..c80a866477e4 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -190,6 +190,8 @@ patternProperties:
>      description: Compass Electronics Group, LLC
>    "^beagle,.*":
>      description: BeagleBoard.org Foundation
> +  "^belling,.*":
> +    description: Shanghai Belling Co., Ltd.
>    "^bhf,.*":
>      description: Beckhoff Automation GmbH & Co. KG
>    "^bitmain,.*":
> --=20
> 2.40.1
>=20

--5n00OFGcdR2hBsDw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZKxMogAKCRB4tDGHoIJi
0tpcAQDvBFQ3WJs0irchOVC/S4BSHSzXJzzu+Ek8AFzLnes/lgD+N7/FMsqSMXPR
aovdphxIq+Nt0wvyfeI9sCaxi6tFyAk=
=2UrE
-----END PGP SIGNATURE-----

--5n00OFGcdR2hBsDw--


--===============5948821932516797621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5948821932516797621==--

