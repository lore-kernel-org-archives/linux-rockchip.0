Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55EE0EB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 20:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0wThfpIjTwFUvpTLCSVl1N4moVDVRmkrIjXYeoJ/h90=; b=HVI/TMCCmgz0wwdYYmUR395nyM
	aBCdLs9Blt2iCiOFO2sRi3KgT7x1PbKpIW6q/62syr4Z4JzBGJYQch0GpK3sR5thcv30ucUUWEJmW
	9MaWzuQHbAizt25M4qcKSzjOezV/l8yo7ei845d1KWW8tw7bHRHgAR2/2if1Xxv/CV60KMDGS6qRl
	nFa6WSsw+d6Bxw7rmBeMu0hDwHcBpmuLdbTePrkz7LzO1S7JTSMXYNlAUstRcgUZkuaHoUXTftrP6
	2sEa+vSmp6zH/B0GyDYDPmdHbLVkzo1EtE/+zcYhi10HqeefEll/Eq9hFgsKodSZRdnfXZ8eIizmf
	vzeY++Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAcik-004Kdj-0Q;
	Sat, 17 Jun 2023 20:40:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAcig-004Kcj-1I;
	Sat, 17 Jun 2023 20:40:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C266660F56;
	Sat, 17 Jun 2023 20:40:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A531C433C0;
	Sat, 17 Jun 2023 20:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687034425;
	bh=0LLv8XPCxxF1BZFuleTtUBGJqrxR9PiZesMF6yEglMY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hh3lWD/SUmwgNUQr6ZuD6AJ2bL2Pferm/QuBKiui3LXI1MCRFBZ8QaeXhS7TmINK3
	 anGT+I2ZZ/8UYrM+FfJ8NyYxML1W8QN62YSOSUYBqjFG0XI1mwZaEgr/bwaV6R5LA3
	 lZUsBDPSGGalZkg6iRkTOf/8Y6V/2554ORL/sCmQVxJrtx3xW6B3/D1Hr2c6qBbIAR
	 fO2MGMgdxbxiOJsx7hS1pxwVt0QbV3qwnh6uqnwgd+xz6fAHoqEZ0ONYotLfSyohE3
	 OWf/Kvc5Q6bKzO5doov36s8CVCV54WwYahwfCrzpR0sjgfuVFJdjPPtSEdRfW8xcjM
	 rVZ0W45i/buMg==
Date: Sat, 17 Jun 2023 21:40:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Furkan Kardame <f.kardame@manjaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, heiko@sntech.de, broonie@kernel.org,
	deller@gmx.de, dsterba@suse.com, arnd@arndb.de,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCHv2 1/2] dt-bindings: arm: rockchip: Add Firefly Station P2
Message-ID: <20230617-compacter-unloader-ab326e0badfc@spud>
References: <20230617135315.25441-1-f.kardame@manjaro.org>
 <20230617135315.25441-2-f.kardame@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <20230617135315.25441-2-f.kardame@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_134026_481286_B1D60574 
X-CRM114-Status: GOOD (  13.94  )
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
Content-Type: multipart/mixed; boundary="===============6330968795417320007=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6330968795417320007==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2fEk0WfosvVyBFB3"
Content-Disposition: inline


--2fEk0WfosvVyBFB3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Furkan,

On Sat, Jun 17, 2023 at 04:53:14PM +0300, Furkan Kardame wrote:
> Station P2 is a single board computer by firefly based
> on rk3568 soc
>=20
> Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index ec141c937..fa21640bc 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -185,6 +185,11 @@ properties:
>            - const: firefly,rk3566-roc-pc
>            - const: rockchip,rk3566
> =20
> +      - description: Firefly Station P2
> +	items:
> +	  - const: firefly,rk3568-roc-pc
> +	  - const: rockchip,rk3568

yaml files are indented with spaces, not tabs.

Cheers,
Conor.

> +
>        - description: FriendlyElec NanoPi R2 series boards
>          items:
>            - enum:
> --=20
> 2.40.1
>=20

--2fEk0WfosvVyBFB3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZI4aMwAKCRB4tDGHoIJi
0mnHAP9NnZhCnjUvboVh1fbFN1gAtvEDB01vHkni+Ag/FdNZIgEApfBUf5TMv81j
+mEIxCjYHT4/ktVmecuKXnSveMQiswA=
=tpqL
-----END PGP SIGNATURE-----

--2fEk0WfosvVyBFB3--


--===============6330968795417320007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6330968795417320007==--

