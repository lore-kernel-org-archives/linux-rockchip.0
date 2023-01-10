Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94541C46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 14:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PH+sdVngFZn1jbqd375KL2bv+DF2SOD5CxgG3nkOQzc=; b=sv5elF8AzDTajgdLbzJVVPucjf
	376JWorKobgXyqo37Gr/yx44W+A7G1tQ/P+x/tI37b15F8PZRwO2JAO4T3qBSoDehy/pB0DoPn+Yr
	H99meIysrNKKin0wjCaczkffTThNpz9QNBhNFcbrPT9pY4cH87qBjSU6jV5oKEUICOBbzYASgxdE9
	4wGR54RoihJd0/DIKvoyAIwpmfb0JuDtVQruv2EGrTSKyhJQk78Ain0CPazHmEBMx2SOcc83hxAKU
	aNs8R9oPDvDLJSp/ah+2vMVWfVpFftt4lFswFhrwpxDzhfdXa1Ztg8u5SNuemE8LSxUnEWvs9PrOd
	twB+o1mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFou-007M8r-AS; Tue, 10 Jan 2023 14:41:44 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFoq-007M6e-Ru
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 14:41:42 +0000
Received: from mercury (dyndsl-091-096-058-120.ewe-ip-backbone.de [91.96.58.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A8E176602D2B;
	Tue, 10 Jan 2023 14:41:38 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673361698;
	bh=noDPjMVeI9vYdt2QvseE4f0h7KVZlOjXF8BvL2KT+n4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dAiLMZMANdiUvLl8Y3CDcGpi1lOsUHy13F/gyXp7+1skrtfMLKf7/f7ZKEA+osIr7
	 9RWuzBdeARpDcAuiWyi+9/JOaBqIcgLpbBZAR6qYgTAO1WqltSyT8Kc0tjC5QcUCbe
	 XCLnvKhaG3AV321s7FZ3bmT9pVodUfz9kuTeRliVrjwcpLAMU9JaI+xvGFrBo4c7Og
	 mTAOhiK2ey23l0RwBupz4RW4SFh0cfyaJgSN0seZKR/jpL3pE9eyC+oi5AHW1Flzkv
	 fML9Etyhdb+bc+c2qZiKATh2luHfOEnvVX/QpVVSZfs7mZFcfIN61USxOk5UAw+rmc
	 NSsN4yC5kYx6g==
Received: by mercury (Postfix, from userid 1000)
	id 644311060774; Tue, 10 Jan 2023 15:41:36 +0100 (CET)
Date: Tue, 10 Jan 2023 15:41:36 +0100
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
Message-ID: <20230110144136.oixsqxo7iv4aotwb@mercury.elektranox.org>
References: <20230109155801.51642-1-sebastian.reichel@collabora.com>
 <2865022.7s5MMGUR32@diego>
 <20230110121754.2olqdzbe7wst3u4n@mercury.elektranox.org>
 <2076503.8hzESeGDPO@diego>
MIME-Version: 1.0
In-Reply-To: <2076503.8hzESeGDPO@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_064141_209866_2733D2AA 
X-CRM114-Status: GOOD (  27.32  )
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
Content-Type: multipart/mixed; boundary="===============4172390275415506428=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4172390275415506428==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zi2fwssvq5bzmsvx"
Content-Disposition: inline


--zi2fwssvq5bzmsvx
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jan 10, 2023 at 02:32:29PM +0100, Heiko St=FCbner wrote:
> Am Dienstag, 10. Januar 2023, 13:17:54 CET schrieb Sebastian Reichel:
> > Hi,
> >=20
> > On Tue, Jan 10, 2023 at 12:47:23PM +0100, Heiko St=FCbner wrote:
> > > Hi Sebastian,
> > >=20
> > > Am Montag, 9. Januar 2023, 16:57:57 CET schrieb Sebastian Reichel:
> > > > From: Kever Yang <kever.yang@rock-chips.com>
> > > >=20
> > > > This initial version supports CPU, dma, interrupts, timers, UART and
> > > > SDHCI (everything necessary to boot Linux on this system on chip) as
> > > > well as Ethernet, I2C, PWM and SPI.
> > > >=20
> > > > The DT is split into rk3588 and rk3588s, which is a reduced version
> > > > (i.e. with less peripherals) of the former.
> > > >=20
> > > > Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> > > > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > > > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > > > Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> > > > [rebase, squash and reword commit message]
> > >=20
> > > I guess that means the list of Rockchip Signed-off-by lines above come
> > > from the squashed patches?
> > >=20
> > > If so, I guess I should add Co-Developed-by lines for them, as right =
now
> > > the list is incorrect (author should be first, then everyone through
> > > whose hands a patch went)
> > >=20
> > > Meaning I can add those Co-Developed-by lines, so no need to resend,
> > > I'm just verifying what I assume about the lines :-)
> >=20
> > Yes, those are SoB lines from squashed downstream commits.
>=20
> so I've made the block into=20
> Co-Developed-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Co-Developed-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Co-Developed-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> [rebase, squash and reword commit message]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>=20
> and will apply that if you don't shout in the next hour or so :-)

LGTM.

-- Sebastian

--zi2fwssvq5bzmsvx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmO9eSAACgkQ2O7X88g7
+pr8Uw//czVLTawBJxJH0DifrXdNuMncQWYITl8xVok0CQ6cWmDH6l1JJhmYp10o
KT1rJDR1woV1hUj3myGwLH0B3Z6n49Ji/rkf6teWFmmepH3bniMUkAjNGtQd7qtt
C7rCp2JSqRIvXGqhK3lwGMe2fXrDsQynO30b+juoehdQbRdSToOfy1t96xSprQWJ
qGYUDyfPazG1shL5Z7Sf5M1NdlGS4JYCkCwtXto+TK9BmfEV07ytq5Sr0LfQ6SL4
dicaOLN0xqo7Hlzf7k0jmcUbwlkvmCQ67BpZ6jU4+A9WF9EFaxU08enH420YNpQD
5oux8rcRaoSxDKj2/KuuOMIsK6/ZMxS0Nv5B8yI0IV7/5MIDuHK99AFQr5O+b5KV
jcN+AqmRB0G0U/iubWIpym4JKS0VXLI8n+cTPDqM07vB7agamFDUFjJm1/ai0XSQ
QZvHZm4nmZA3jHpvh7EmxcfoxZXsnCqT+ihRDnO7I9tExRtE8czALr1M1hsLEVMb
5E863qT8SmVHwQHxX/f6TgxcTMapCKGFj4ADECWJnXY6/hnlLe5qutclqLoQH3GB
AKb3dX8PgLHyBlvSiQWJkgxEiAqHV8JGU+ZKlv32zeurjsdUv7Cd/zM14JenDD33
OkXop5a8i1Q2nLNqE2Mrw2SmsMh5biFkQeYdr3/bPQTramj85Qc=
=qJeq
-----END PGP SIGNATURE-----

--zi2fwssvq5bzmsvx--


--===============4172390275415506428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4172390275415506428==--

