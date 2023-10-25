Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B13C6C0032E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Oct 2023 19:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZPvflK+8a9M5551p43Q7GykZeb85t15cNtX3py+Qzis=; b=F58s2pwikhaxEzuGlKqSAQ3tB9
	hXIBTUPKcLz9c1n7nX7PN8YsE4KG02ht4YUBJmbOWFkbTerlOyK+Srm1HABwWw0K5EwhFZOxIotBn
	2T4lOq87vGY0k2bv7z16P3P6j0NfQme0QznMIyYOuqMedeY9n6xSXu8deA/NeN9XXZxWWxxryy6L8
	ZyfgDROjVizYxNtHIf9UHHBjsSZkqG2LwWeq9srPy/MeJAmDXMn3v50E5utHGlQCHGKKSGjo1PP7F
	lqaYZDCytgJp4yX9Y9mBF+tJKmg8/hrZ8UQNWO6KmuwvT8ZH+nr/YmNWes5xIF6xedba99JwQMzOa
	YuMM35ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvjsC-00Cz4R-2J;
	Wed, 25 Oct 2023 19:49:00 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvjs9-00Cz2J-09;
	Wed, 25 Oct 2023 19:48:58 +0000
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A76D66607331;
	Wed, 25 Oct 2023 20:48:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1698263331;
	bh=4C0knIOWZSCqz/j853cFCQSGyZP8bkVC+6liKLv+oVM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U0dTNgmUY1CMPIH0+Dt8SUXHELGlSctli8R80RvqsaGhDMVMMWOzUM1L6F6I8mzoN
	 E8Z7ZZ1itNj0j0VKV203EA2p7LcdTmiPA2vZQgokyOfPnoRKMOjDhUmddTYSLuYsqn
	 ADzrAb9j8ACihiX5dCdAIm5Ccp/bOZ3dBWaw31v1N4dED8dHGe8NxtQ+tshcJO/QS5
	 Y49iA4cp+Km7CBQA4LKjgVNlE7HdZcflH3x2/o7tfODgdtGZ3sghAuDoZCoqteL3nZ
	 hIk871DhA3ySDmONlW9Rf9j2fPVi/DYw6KpM6haJlN5ihzF4x/vqcCzafhIA20iYA4
	 BDf0GGY4hGLeg==
Received: by mercury (Postfix, from userid 1000)
	id 23927106057B; Wed, 25 Oct 2023 21:48:49 +0200 (CEST)
Date: Wed, 25 Oct 2023 21:48:49 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Stephen Boyd <sboyd@kernel.org>
Cc: conor+dt@kernel.org, heiko@sntech.de, kever.yang@rock-chips.com,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	robh+dt@kernel.org, zhangqing@rock-chips.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
	andy.yan@rock-chips.com
Subject: Re: [PATCH v4 0/4] rockchip: add GATE_LINK
Message-ID: <20231025194849.4esjw4w2trgalp55@mercury.elektranox.org>
References: <20231018070144.8512-1-zhangqing@rock-chips.com>
 <b0af9e04bafb07e8a73e8f242a4ff556.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <b0af9e04bafb07e8a73e8f242a4ff556.sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_124857_310566_0E414EBF 
X-CRM114-Status: GOOD (  15.33  )
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
Content-Type: multipart/mixed; boundary="===============7931229301218874591=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7931229301218874591==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tqfdiz36ofh6j432"
Content-Disposition: inline


--tqfdiz36ofh6j432
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Stephen,

On Mon, Oct 23, 2023 at 06:47:17PM -0700, Stephen Boyd wrote:
> Quoting Elaine Zhang (2023-10-18 00:01:40)
> > Recent Rockchip SoCs have a new hardware block called Native Interface
> > Unit (NIU), which gates clocks to devices behind them. These effectively
> > need two parent clocks.
> > Use GATE_LINK to handle this.
>=20
> Why can't pm clks be used here? The qcom clk driver has been doing that
> for some time now.=20
>=20
>  $ git grep pm_clk_add -- drivers/clk/qcom/

Maybe I'm mistaken, but as far as I can tell this is adding the
dependency on controller level and only works because Qualcomm
has multiple separate clock controllers. In the Rockchip design
there is only one platform device.

Note, that the original downstream code from Rockchip actually used
pm_clk infrastructure by moving these clocks to separate platform
devices. I changed this when upstreaming the code, since that leaks
into DT and from DT point of view there should be only one clock
controller.

Greetings,

-- Sebastian

--tqfdiz36ofh6j432
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmU5cR0ACgkQ2O7X88g7
+poZyA/+KGnTXYS/rnZLCMXb/+17hHTvzcgSIdn/BeQmRnEBHE9sjPFzD1KQ8Wy3
304qrkQt4azButXo31zUjB0creBEH1ZvhDV6tX8s7Gy+8mT2LmvvArVIWinZFnDj
YskCNEgiDFFDitOEh19nofsINcZO3YaHiVU1qUksXmvj9l350AD4vxsX6L+3f/lj
tF9RS81EzPZjyHci6j1LRttHnr8N8UBxGMZiSctcehrCcZPAYlrIfZh9NX1W5zRg
Rz2lhpPw22eh8Y07NHmiaDYvSWQTLQhBf4cAvBvNf/flzQ1V4U/Epaz3PJ7dob8h
xNZqNDn1/gEFUJeUtgsyXsZdnMnU3gnauiHlMU6jvAWo2fmh0MUJckysF/clUfBm
o05It58JOT1pjpHfIo7QRfK+NtW9z0Oi/YcsbxxzF0E9i7fuWd+tXgYK7ct0tGT2
dZo6eMm/RWQ7iUGgqvFoWhznuibG3vTyyJJ0n8hRySNtcrdUT6xsC7dnk7uzGyJn
U2afY2D+URGaEVX5h0xIL5dbPn0T2gnUmQoKeSdQgJHlCjoDUcOCkM7RTFr63x/6
k7ehuFax9yDUFfa83vK9TL1VsTPsiJoj9CFAjZEIL2HXlR2Iq2XbBCpweWIaA3Zz
gecnzHef2NW/Pi5znStuOQEcy0/HZAZq25N58364hewLcxFtrDE=
=xiVS
-----END PGP SIGNATURE-----

--tqfdiz36ofh6j432--


--===============7931229301218874591==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7931229301218874591==--

