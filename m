Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BA66C77B7A
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jun 2023 15:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FAhm7YT5Ki/o01RyFlOKx0visPfXK+dyc2pgoKlbsBU=; b=GdIvCepHT96ZdEJCpT6U6QkFA6
	kp17+ZWISA5qzSW2vm4gYdoVA5/GXcJ/3rxFKJvzxOeRKdvjOpo+ZbR3sJ1yWXzTqnJCyeKtj+DTf
	BOC1psHScHkfcbRKy2qLBP7xLxIVdi/o+a61lWU2ozClqY98Gac5ejQLBnu2tu3K4PpsfD4his9th
	ViXEw0S5vx+CBjeul6dl4Tb0bjtDRhlYAvLzmue0E/A9yvz7J0WWRprABIZ/1fW4eSOzwkc4mNRz4
	BUX/TXfk54QSOoueO010VsBafhhyGjW063T4B0iKDv/+KTSvyI20yeMMco4AX3//60KJzdO3FHdze
	xEZnYWIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q80Bj-00GQHY-1P;
	Sat, 10 Jun 2023 15:07:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q80Bg-00GQGN-0R;
	Sat, 10 Jun 2023 15:07:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A9B0B61044;
	Sat, 10 Jun 2023 15:07:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F353AC433EF;
	Sat, 10 Jun 2023 15:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686409651;
	bh=OFXw4bB33vMAMP/mYtrrZ0SI5zDOVjnAgufarPsOhB8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UQGn99pnynaq9uYtEVwDAzPaCVqzhpd1OTSMw7uX9tK3QuRXZ/3SyX2snVoz9deYn
	 7JIz9eaQdi/2YoK9ihy4ys4AsvU2vMOZAOcHyT/MnFU+syHwKbrQa6aHt7CD0Oxi/S
	 SVJgm5WT8Cc/AlFzhxQ4q5M0GcxyZF6bgCsipuYWod8lBpXLgcBkaTRKoJXutecd7E
	 vyP26AP8w6pAscSqadEnLZMahfGbdA0ngXAi6tyB/G7E0lZtk5jWcwUw46TXUdgKUr
	 S8F00qKBUTtlJ22KSmOmOk7x+anwzyLdK18xOg2h2MtnkXuFYOSZWizcyQcjYxO4Qe
	 5woFdFEakuMCg==
Date: Sat, 10 Jun 2023 16:07:25 +0100
From: Conor Dooley <conor@kernel.org>
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: jic23@kernel.org, lars@metafoo.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	heiko@sntech.de, sebastian.reichel@collabora.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com, gustavo.padovan@collabora.com,
	serge.broslavsky@collabora.com
Subject: Re: [PATCH v2] dt-bindings: iio: rockchip: Fix 'oneOf' condition
 failed warning
Message-ID: <20230610-agreed-aground-8a08f6854965@spud>
References: <20230610143601.173307-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20230610143601.173307-1-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_080732_216136_F752144F 
X-CRM114-Status: GOOD (  11.95  )
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
Content-Type: multipart/mixed; boundary="===============9127708057043440219=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9127708057043440219==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HX7e/hojOdb6OlLG"
Content-Disposition: inline


--HX7e/hojOdb6OlLG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 10, 2023 at 08:06:01PM +0530, Shreeya Patel wrote:
> rk3588-saradc isn't compatible with the rk3399-saradc variant,
> hence, fix the following dtbs_check warning for 'oneOf' condition
> failure.
>=20
> DTC_CHK arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb
> /home/shreeya/linux/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb:
> 	saradc@fec10000: compatible: 'oneOf' conditional failed,
> 	one must be fixed:
> 	['rockchip,rk3588-saradc'] is too short
> 	'rockchip,saradc' was expected
> 	'rockchip,rk3066-tsadc' was expected
> 	'rockchip,rk3399-saradc' was expected
>=20
> Fixes: 2daf2ae9793d ("dt-bindings: iio: adc: Add rockchip,rk3588-saradc s=
tring")
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--HX7e/hojOdb6OlLG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZISRrQAKCRB4tDGHoIJi
0q+iAQCBDXnjy5NryPeQQk7XL4f/lyuDEbE/4xBNyy6UWaXdmwD+L91PrMDYIF6a
CaCNra/LYyBrWPHVG64IgrjYkvtNrwc=
=3vCR
-----END PGP SIGNATURE-----

--HX7e/hojOdb6OlLG--


--===============9127708057043440219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9127708057043440219==--

