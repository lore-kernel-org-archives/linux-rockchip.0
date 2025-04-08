Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48DBAC369A5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 16:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4TSvBNNNb42FRgeH/hz9bmF8vM2n5pfdRx6sRw9F6Sc=; b=TDuQiyNSo0W4JHovtkxjRKgT9j
	kCVvL/8ljNYzyweVAtEhqKdqcCS3uh3Kds41pCL1//npf6JmUXYjWp/UrlZigIMV7Nli4pyp2rVwF
	jrtchiK6jLg7K/c/Ge02WerhXmMndbNvUysKagF+UWclg2gRDhMjr9wFweMVinE/Mhvy2aFmd4sBA
	Rqlz9yXg3BvPef5MRIMPjfulHWdpFmyQbTW/lVI77lvn5FtFutug750MG3dF4AJtPoAF7mdPZgVPn
	QMlVcomkaZ87FS2VJ/2rYcs5OQehs/wSyrDEG6ZoDvXTEMihrvG+YSiBES8ZJuitO2ntcbjVVSRBL
	TZO8crkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2BYD-00000004lRP-3yii;
	Tue, 08 Apr 2025 16:11:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2BUt-00000004kkX-0KPv;
	Tue, 08 Apr 2025 16:08:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 745A5614FE;
	Tue,  8 Apr 2025 16:08:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E3A6C4CEEB;
	Tue,  8 Apr 2025 16:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744128502;
	bh=ckOi7tqsSO7KvykycTRL9CtPqRv/ASq7uban+AGPlrM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XhMp3L959j1gmsrQtuaA2pU6O+vcxsQ/GjFmQORiv/4t1XmucuB7D9c0aUFv9TbSt
	 VY3TCIbQE/LjfJf6JlhJyXxAZgdzluIjdA5uRcXEgsUX5xCirJbir8FOJKtcA0DfGz
	 DY/YyD0h9wkh3f+VC8iLjwQGTwdx1+rZsVe5twn+03E+pSYbmopQVZ3Ys/mUL7PyCZ
	 JiG6D+DytWxgwDz80/bHD6oPKL2JUycQFvU9/P2xnaKkpSKeq52cXxqil2x3FuiHQ0
	 REmgxqP3yXoxXJk2IlcM2w9dMmMZqfZcGAo9v5GFLVGZsket2LnU2tXpy41zCX5nNE
	 BDbvVNHd8Qhkg==
Date: Tue, 8 Apr 2025 17:08:16 +0100
From: Conor Dooley <conor@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	William Breathitt Gray <wbg@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
	kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH 1/7] dt-bindings: pinctrl: rockchip: increase max amount
 of device functions
Message-ID: <20250408-deviate-common-7846a921ddaa@spud>
References: <20250408-rk3576-pwm-v1-0-a49286c2ca8e@collabora.com>
 <20250408-rk3576-pwm-v1-1-a49286c2ca8e@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20250408-rk3576-pwm-v1-1-a49286c2ca8e@collabora.com>
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
Content-Type: multipart/mixed; boundary="===============1009043179340815589=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1009043179340815589==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3HY2P3D0tNzBUcfu"
Content-Disposition: inline


--3HY2P3D0tNzBUcfu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 08, 2025 at 02:32:13PM +0200, Nicolas Frattaroli wrote:
> With the introduction of the RK3576, the maximum device function ID used
> increased to 14, as anyone can easily verify for themselves with:
>=20
>   rg -g '*-pinctrl.dtsi' '<\d+\s+RK_P..\s+(?<func>\d+)\s.*>;$' --trim \
>   -NI -r '$func' arch/arm64/boot/dts/rockchip/ | sort -g | uniq
>=20
> Unfortunately, this wasn't caught by dt-validate as those pins are
> omit-if-no-ref and we had no reference to them in any tree so far.
>=20
> Once again kick the can down the road by increasing the limit to 14.
>=20
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

> ---
>  Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.y=
aml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> index 960758dc417f7405010fab067bfbf6f5c4704179..125af766b99297dc229db1588=
46daea974dda28e 100644
> --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> @@ -135,7 +135,7 @@ additionalProperties:
>                description:
>                  Pin bank index.
>              - minimum: 0
> -              maximum: 13
> +              maximum: 14
>                description:
>                  Mux 0 means GPIO and mux 1 to N means
>                  the specific device function.
>=20
> --=20
> 2.49.0
>=20

--3HY2P3D0tNzBUcfu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ/VJ8AAKCRB4tDGHoIJi
0o+cAQC++yhzDEA1pD75hj4YsKzIeFWFw+DrbpYLeNqyLfXtlgEA/5+i3Yju2VbF
KzvzOSVA72JUCgJJIxDgw7JYzYv+HQc=
=xuix
-----END PGP SIGNATURE-----

--3HY2P3D0tNzBUcfu--


--===============1009043179340815589==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1009043179340815589==--

