Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57056C77B73
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 May 2023 19:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FMgm60F0OxBl06l6ozT2NBq3N28rRhVRpaGU903M0zw=; b=0SmSxPK2clXv/qd+useOwDG5tY
	iEnFunGToMQ8ESXR7SyUU8biwHLIQeOsdsCJ85QtgaJqEMR6o1IV1Hbch7qszg3ogCS9KhvbYmZKO
	KsiytycMohodJ8bMeSK+b+L/22EKfSvN/EzWOvVxmx4daOY5xbY+YyDMR6q/JglaTEZzva95uYog1
	8eXWiA52RSXurAZsHqjmBoy0Agzz6Av53h9UmdSeoCUNf/xnsx4xyvJZjA5o1hhkk66cy9XOgrvyw
	VygtYup2c0UD8EGkaVQuGLKH+THqyH4yFuZVHGrA++m/tbTJhBrRUwIxQwHNVFmvHfTWM8Q6y3dWP
	JoW3rLWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ons-004W9U-0H;
	Sun, 21 May 2023 19:33:16 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ono-004W6Y-0h;
	Sun, 21 May 2023 19:33:14 +0000
Received: (Authenticated sender: didi.debian@cknow.org)
	by mail.gandi.net (Postfix) with ESMTPSA id 6D3CA240002;
	Sun, 21 May 2023 19:33:00 +0000 (UTC)
From: Diederik de Haas <didi.debian@cknow.org>
To: Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Rob Herring <robh+dt@kernel.org>, Michael Tretter <m.tretter@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RESEND 0/2] media: rockchip: rga: Add rk3568 support
Date: Sun, 21 May 2023 21:32:51 +0200
Message-ID: <2386524.2IynHR6iFi@prancing-pony>
Organization: Connecting Knowledge
In-Reply-To: <168466589373.900480.8086350880534437090.b4-ty@sntech.de>
References:  <20230119-rk3568-rga-v1-0-43d4d14365e6@pengutronix.de>
 <168466589373.900480.8086350880534437090.b4-ty@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_123312_406227_35401BFB 
X-CRM114-Status: GOOD (  17.13  )
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
Content-Type: multipart/mixed; boundary="===============0608719624377149556=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0608719624377149556==
Content-Type: multipart/signed; boundary="nextPart2141483.da5uFje5fu";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2141483.da5uFje5fu
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Sun, 21 May 2023 21:32:51 +0200
Message-ID: <2386524.2IynHR6iFi@prancing-pony>
Organization: Connecting Knowledge
In-Reply-To: <168466589373.900480.8086350880534437090.b4-ty@sntech.de>
MIME-Version: 1.0

On Sunday, 21 May 2023 12:44:58 CEST Heiko Stuebner wrote:
> On Fri, 20 Jan 2023 10:14:21 +0100, Michael Tretter wrote:
> > The RGA2 on the Rockchip rk3568 is the same core as the RGA2 on the
> > Rockchip rk3288.
> > 
> > This series adds the necessary device tree binding and node in the device
> > tree to enable the RGA2 on the Rockchip rk3568.
> > 
> > I tested the driver with the GStreamer v4l2convert element on a Rock3
> > Model A board.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/2] media: dt-bindings: media: rockchip-rga: add rockchip,rk3568-rga
>       commit: 9b12ceb5a80d1fb45d293265de100e33b5843943
> [2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
>       commit: 0c3391f8bb06b744df521651534cd99e3d77e0a8

https://lore.kernel.org/all/TY3P286MB26115F60D273E840D36A610598CA9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM/

indicated that there was a problem with device >= 4GB (RAM?):
> Since we have the over-4GB problem now, should we mark this problem as a
> TODO or something?

I thought that was the reason that these patches weren't picked up before?

I have no insight into this problem, so I can't comment on the technical
aspects, but I had made a note for myself 'locally' about it.
--nextPart2141483.da5uFje5fu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZGpx4wAKCRDXblvOeH7b
brDNAQCQRk0uL8qr7RMJLjC56GL9KRq/TtmKBlnQUaSGchIxVQEAxlugcLBQ9jQf
I7iu5nMhGOwfgEn3VBfHPtIgbDurnQk=
=qohm
-----END PGP SIGNATURE-----

--nextPart2141483.da5uFje5fu--





--===============0608719624377149556==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0608719624377149556==--




