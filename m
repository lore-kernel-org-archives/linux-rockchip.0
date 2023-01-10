Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5567AC54EBE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 12:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hgyuoO1WvKFt1FwvQo7qI3VSs/8XPlR7oY59Vt4u3kU=; b=nQ3vAHcxhv7TYXYcch61KeSZ81
	2mhqwSjIh/nXs9ZrhqZQbHbruqIajeH3AQ701itkek/zfZ8PrjJRsKuPXaIiapBvFw1RXCGPId9eT
	wx7WoJizxkm5ubFkX+P9gEjyhtn5ftdY7emfYON3O4TI4lMTRa1FCcr7T7MYNFmTYVujXAHDzosEv
	sSNLfsBc3sRJha4Yee/V6gSEUJ+CravWCXpZ6h8njJOY21SFuj7pfvM60EzHSqOlIWpis0g8g8cc4
	4V1h58Mv1Yl7ENtfbMq/uGxx+xgHoUcDa4SptTnPA3o+ro0Wyj3gfhYNF2Gw6utH1EwcnKZsuz8q0
	QuwWC1LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFDZs-006pDS-CB; Tue, 10 Jan 2023 12:18:04 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFDZp-006pAs-Ak
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 12:18:02 +0000
Received: from mercury (dyndsl-091-096-058-120.ewe-ip-backbone.de [91.96.58.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3D6F96602D70;
	Tue, 10 Jan 2023 12:17:57 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673353077;
	bh=HeioJvW2EDpDXIEq1ksZSMdC1zFkMJZkIFamkQAcslU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YtCCfocD0LKLyMXne6qKIrIuBAfiv/V08/5iZtF3DxLxpY3DvU+r8Owim4t0FHfGo
	 aN83JeeYKZj5CCpXCbiGtNdS9hXbFa7lPR9ZkwmPSJK8Un5cYIZQeZt+uf6sGSKcOv
	 b+DI2wsqsgfv1gR7rrA8e0FUnWEtRlWRqOt7BdbfY8aI3S8yOiZ2lP9/iSYVvtbnhr
	 NJaoMg7oz2oSMWJqZwC+ucHdZJcO4VuhxvZAkZcMO/+p4/ir3+oms09hsMR/2+Ag/y
	 zAWCxqfXARKv17bDWLdZW0v+26d0o+nkyfL8nlHqdbORUznoibbOgfBlWPuPijFY44
	 pZj7rEVHEISOQ==
Received: by mercury (Postfix, from userid 1000)
	id 0F11C1060774; Tue, 10 Jan 2023 13:17:54 +0100 (CET)
Date: Tue, 10 Jan 2023 13:17:54 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>, Jagan Teki <jagan@edgeble.ai>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCHv8 3/7] arm64: dts: rockchip: Add base DT for rk3588 SoC
Message-ID: <20230110121754.2olqdzbe7wst3u4n@mercury.elektranox.org>
References: <20230109155801.51642-1-sebastian.reichel@collabora.com>
 <20230109155801.51642-4-sebastian.reichel@collabora.com>
 <2865022.7s5MMGUR32@diego>
MIME-Version: 1.0
In-Reply-To: <2865022.7s5MMGUR32@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_041801_621045_B0466D22 
X-CRM114-Status: GOOD (  20.94  )
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
Content-Type: multipart/mixed; boundary="===============5579457016650266294=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5579457016650266294==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="etl67xvjo66sk2qd"
Content-Disposition: inline


--etl67xvjo66sk2qd
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jan 10, 2023 at 12:47:23PM +0100, Heiko St=FCbner wrote:
> Hi Sebastian,
>=20
> Am Montag, 9. Januar 2023, 16:57:57 CET schrieb Sebastian Reichel:
> > From: Kever Yang <kever.yang@rock-chips.com>
> >=20
> > This initial version supports CPU, dma, interrupts, timers, UART and
> > SDHCI (everything necessary to boot Linux on this system on chip) as
> > well as Ethernet, I2C, PWM and SPI.
> >=20
> > The DT is split into rk3588 and rk3588s, which is a reduced version
> > (i.e. with less peripherals) of the former.
> >=20
> > Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> > [rebase, squash and reword commit message]
>=20
> I guess that means the list of Rockchip Signed-off-by lines above come
> from the squashed patches?
>=20
> If so, I guess I should add Co-Developed-by lines for them, as right now
> the list is incorrect (author should be first, then everyone through
> whose hands a patch went)
>=20
> Meaning I can add those Co-Developed-by lines, so no need to resend,
> I'm just verifying what I assume about the lines :-)

Yes, those are SoB lines from squashed downstream commits.

Thanks,

-- Sebastian

--etl67xvjo66sk2qd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmO9V24ACgkQ2O7X88g7
+poilA/+MN4W+QsHbvMNbtuiZsAWUBT6+TraHXOrSpji98es5iHLVjjGxCQakYTU
XMQfXzNsrzhK4KEgJrAYnO2amzDgmTngdsJo1c2PsxthXsOVSb9G95dpGwJt0iSv
+YD+cZyvdY5YkIQabTfOOIOLcnk2Lz4ViXa8r2r2+dVkA+GXmq0/l4jTwsC2LK3Z
4iQ3N9EOn82RW/b+K/GYBHHQHz6FjXcxCDnctq6qhLbzIBTtmG6ToESzLl3SQbUI
Up872Q/QirRm3/96QfeeFI2TedRPkDgjFLiJ8tH6lVSKhCFcrQ/R8mijyFSRDVFM
myAIj1joNhmQEWBiqd6uSSuEptgwQd2vckTpbs+t3+0aSUZ3WEGeCTkenQepiGvG
SC3RdX8T2YEwhmknXG8eMhg+GtJlavc/LzNUfxFtYW7w5WNWapDsDspxgUxU3O0y
gIj6tCk/EqeCQ4u9Prb6XyQVebEbN+nM/qdbeJlnBYQ65p/EqKDK6hAoyQCnoxa9
vKsVgl7VLZeJUPiwCRz4SanQF6rfHuTyKkaUAiIahZV+jO+9GuP2155XxjL9tEPE
WXiot7wtu3CML7kD0RRXc4UZFy1U+6GaSr4bzD3v9gCGtSZGx+a1YuXQKP+j6asF
6y2tPoTS5hqygztq1DOGrNOTb0ceADzdgmOgygjBKTtT74yKvMM=
=AHuN
-----END PGP SIGNATURE-----

--etl67xvjo66sk2qd--


--===============5579457016650266294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5579457016650266294==--

