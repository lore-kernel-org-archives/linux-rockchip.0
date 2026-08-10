Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 236D6C5AD55
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 12:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4f6cThTsfhnwc5Uzgj2ZfRoIZHtlAXoxy0OehK5pqNo=; b=F12F6J3KuHU3d/Rq0aVyOXCfkg
	xJ3WMvs+d8APPJaBDqAutGgjEu6Nyc28dVjFudNvXMCMcue7LnVWk5gTMmK8sbM7GOk2WDaoPOego
	5m8C25XyWcy5BpdCJha8Wb2Kz3bECxdY1xhZq8ZaAXJeF8zp1Ii4ROBKMwEup0fCzvFE7ndJpN5Ky
	qAaHwiHEZgow7ce6dCvYaggPsqZ7Qy9HgpKrNOmdcoNNaIVvt/M8Iby9Mbe3wh2X0k+duExcoJeud
	vMQTjhWEPr+QaD3YULKruy2n6S1kfadndIh6l0RWtd+5wlqOEP0jk2gIHwVVMh1dJPFAt4BdNpaW0
	y1AsIzGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtP4g-0000000Blxu-2epl;
	Mon, 10 Aug 2026 12:25:50 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtP4e-0000000BlxS-1jip;
	Mon, 10 Aug 2026 12:25:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AFC72600DA;
	Mon, 10 Aug 2026 12:25:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 098A51F000E9;
	Mon, 10 Aug 2026 12:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786364747;
	bh=+SGImHe1Sw1NGnkTVFXM+So9uxRP3NcboX61zAirfxc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=K/u+uhRxvNI6p2boOssYbjp+/nH43F8F8t0UIF5iGR9wL06ro1o/QV6i7cwzLYWXb
	 Pi3soYXJryou8hrDzvLHYNMkcj7rzLuTXlQ9JoT0oiJHo8wkqI98GpirYZNhd7s5Cx
	 Ht/Ep9cU3vEKIKHISvP09W6hHJ/09y6wJ/KP8NIVn6ZPi5DzgFKagDMTua+reTpiH0
	 0BEmtUY2u3X4DBboIB5bk3zdXYno58L8E+BeXVdvSfOX91zzJuxsts1RXCdcMJWWM9
	 gmCiHKtALyOKNNo7eKzC6nS72vSUef8QwbJCfUvL62NveUVvG684HweT4AEO690+3V
	 ZxmGHmg0LCDyA==
Date: Mon, 10 Aug 2026 13:25:42 +0100
From: Mark Brown <broonie@kernel.org>
To: Vladislav Leonov <vlad@zlab.su>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, linux-spi@vger.kernel.org
Subject: Re: [PATCH 17/25] dt-bindings: spi: rockchip: Add RV1106 compatible
Message-ID: <6c480623-9195-42de-9a13-fa97c6fb4253@sirena.org.uk>
References: <20260810121121.210040-1-vlad@zlab.su>
 <20260810121121.210040-18-vlad@zlab.su>
MIME-Version: 1.0
In-Reply-To: <20260810121121.210040-18-vlad@zlab.su>
X-Cookie: Polymer physicists are into chains.
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
Content-Type: multipart/mixed; boundary="===============7731685962047693787=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7731685962047693787==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3a58eJ5RGHjnM4Jx"
Content-Disposition: inline


--3a58eJ5RGHjnM4Jx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 10, 2026 at 03:11:08PM +0300, Vladislav Leonov wrote:
> The RV1106 SPI controller is compatible with the one found on RK3066,
> so add the "rockchip,rv1106-spi" compatible to the list of variants
> that fall back to "rockchip,rk3066-spi".

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--3a58eJ5RGHjnM4Jx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmp5w0UACgkQJNaLcl1U
h9C3iAf+NyRB4/H6HfbMVMgbmtfWJwDWkx4+mQlRg/QJJsB16UQDVfnStvgWXjeZ
/r8fT4ETbJdneMjvNxT2SjWrRzgrMbFs64lV6V30hUEhYBA16MTyZcR9rEpDuBcC
a74jE2a6oFU7P2sMbK78pizMBvXPcBA1W28Q1W+VP3MEW1t5YqJZQobyxLKTzBWe
nEgj28jHHaugDRkNmvlOVAONvkLbdAhwVJc5sN/TzcDkiWRw0zeMlY35Ymotj4YW
oNIdLGYK/NiY3BbwEmNb041SPj+g08kmUu5DMWoIq2idRgDB1ndPIOZZekYjffF3
VQty06MYLBilknfvEaAmvHCGV5dU5A==
=2zwJ
-----END PGP SIGNATURE-----

--3a58eJ5RGHjnM4Jx--


--===============7731685962047693787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7731685962047693787==--

