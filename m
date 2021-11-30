Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 381A9C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Nov 2021 21:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I2a7dSM9dBQyNgUUt1ZUYcOtWTyRGKUdHTT+g9y/QL0=; b=1VLHvyc0l8VJ+7X4uwax65ZpSE
	8uL3xN+NgytitOOMEpw090lq0XRKb8dwBkNh9j9hLpcHJ68XsOMYEvjpiYNEqz4YMBaXkrNOfc3z/
	AyxRaQIxyCUZW4ASk7EIe7Zgq2+du8h5ilVANCy1OJT+7qkdkE63LxdBqoNXadHgxlXXAt744wU0W
	qS/8Mt3oQGUiP3V8uBqvwI9ds1EfPlmNSG30d2RiTz2k4HvAOx43+FYqTt7ajDNF5MeQx1V3D6PcJ
	/oiJMBXJWEwSJ9H3amhuYCUn0YpredI5WAV5EMXU/MxKmZHVFTaWMVTWTpqMw1QGRQU+WASmf2rY1
	5g8Zdvlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msAoi-006lH8-G7; Tue, 30 Nov 2021 21:37:36 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msAoU-006lEP-Rv; Tue, 30 Nov 2021 21:37:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 86F80B81CDD;
 Tue, 30 Nov 2021 21:37:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C0C6C53FC7;
 Tue, 30 Nov 2021 21:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638308240;
 bh=2LSlkcK5qJnlXtsBWdEyilArV2GlaA8dV4lZT+DRMyQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SbvR54O/ALPMkpKKObmAEX4T/Um4E3iESIWFdwF9hztOtEHukwwlz3Vq/2nLXovy9
 InYeG1dn/AxGIrLK83kuZeipJm4EtsMf1TaijLvYOIY/jz6TDys+ZhObd2pxQMkE2B
 4lp2NMCJM7XFQwA0zs2ISutUtK82jM9DaL8W4V6Ww5okv1pEQ1bLcrTYO37YAJC29F
 k0JzDETl+9mdZrQv9DxGbaHuMTARh8r5ophv78SmKZ+hW4LznUlXCZpD9YDC9EUvx7
 lQv+XdFe7KMlxS3YPvdl8AiqvIGTDOdXfuPAWWcfxt6RKQwzXt9C+ACBfw6S7TDg40
 xoY1/bbzcNlQQ==
Date: Tue, 30 Nov 2021 22:37:17 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Ondrej Jirman <megous@megous.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [RESEND PATCH] i2c: rk3x: Handle a spurious start completion
 interrupt flag
Message-ID: <YaaZjVGtmA5NQVwh@kunai>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Ondrej Jirman <megous@megous.com>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 "open list:I2C SUBSYSTEM HOST DRIVERS" <linux-i2c@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210924111528.2924251-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20210924111528.2924251-1-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_133723_213633_C8B658D1 
X-CRM114-Status: GOOD (  13.94  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4481549825765630445=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4481549825765630445==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sOF2f5PSKqkWs/pK"
Content-Disposition: inline


--sOF2f5PSKqkWs/pK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 24, 2021 at 01:15:27PM +0200, Ondrej Jirman wrote:
> In a typical read transfer, start completion flag is being set after
> read finishes (notice ipd bit 4 being set):
>=20
> trasnfer poll=3D0
> i2c start
> rk3x-i2c fdd40000.i2c: IRQ: state 1, ipd: 10
> i2c read
> rk3x-i2c fdd40000.i2c: IRQ: state 2, ipd: 1b
> i2c stop
> rk3x-i2c fdd40000.i2c: IRQ: state 4, ipd: 33
>=20
> This causes I2C transfer being aborted in polled mode from a stop complet=
ion
> handler:
>=20
> trasnfer poll=3D1
> i2c start
> rk3x-i2c fdd40000.i2c: IRQ: state 1, ipd: 10
> i2c read
> rk3x-i2c fdd40000.i2c: IRQ: state 2, ipd: 0
> rk3x-i2c fdd40000.i2c: IRQ: state 2, ipd: 1b
> i2c stop
> rk3x-i2c fdd40000.i2c: IRQ: state 4, ipd: 13
> i2c stop
> rk3x-i2c fdd40000.i2c: unexpected irq in STOP: 0x10
>=20
> Clearing the START flag after read fixes the issue without any obvious
> side effects.
>=20
> This issue was dicovered on RK3566 when adding support for powering
> off the RK817 PMIC.
>=20
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Applied to for-current, thanks!


--sOF2f5PSKqkWs/pK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmGmmY0ACgkQFA3kzBSg
KbZ64xAAhAMsGHyf1dbaH7r+Iv6SZBb652herH6rb0o8011mc8qs0+rIIRSzqZdI
94wDHAFN8jTGT8j1hWRO64BbUttlcdAJIki9RGbZtvb/++cUBRpNAxaTdeOQ/9jO
Sy4s1iEvVWpmFcbOJJ2rx4ItSJURgGu6ILN65ws2HNeaKVrNj15wvyUoYLcK1U+V
9DbwKCF+KQ9OB997fRfLBK7N+7hfSqOCZzLxTdEHBvB7wRNLxwDHDRRD0ensJVSW
B23WJW0D4B78TLFLa5+uEV9pCbuGogweDPJF62ydxu07brmscwAfdepk+IvQxYmV
Q1VwulhMPrQSEmNTdu1cAJkHIneNulO9PmGJ8vtJ4V9wztR+1N+8mEzVj/WRo7a8
1pRq1xGy/YzwH5o8kfDNY6cjdEP6vKOEBFzGQI6D92bJHmhFSb7qpNTuzrzFvzQq
yV9U8m7/JcLhA4mWsYI69702L5rGdKP8wgMp+VJD9iDWlpBO91d0PC1+3R4ewf92
eRR20tnEbDGab8N1uOlAW3YZiCOZ9/I503/DWQHhQZBtmKmBy6aJ7S6wY4bVgAhU
l6f87740Jo7C8lMuxSkYftV6EqWwBZugpXyDw3nPXja2nRp5r2xh4yNrsPhkdFh6
LufjqDUZBHiVF5AOUZW+3Nx9GWNliWUdEf2b5RMtASK8F37F9Ks=
=NDfr
-----END PGP SIGNATURE-----

--sOF2f5PSKqkWs/pK--


--===============4481549825765630445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4481549825765630445==--

