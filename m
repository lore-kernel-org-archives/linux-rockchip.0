Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DBEEC001DC
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 19:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+e/d2KTMCf6G1Y6bvd6ANrBNDZRgurl/NAq8MvxBJ4E=; b=vsdSH+XziJnEW/ZJv5gQcYbTMp
	jvSJxjlbvXjDteivFZeykRcAylhNtiPe7o0k+78bI0Wo/9nKxAZS0WwuDFst4jFBVa+XgbWZgNMA7
	UvcM9qmqdfTwokBTG4PUzI76opbDBOITF9d2Nek3Q2V8VnVpgmH9wyhd4maCOm+W2rtHqP/mkkhfW
	sk/UXnj8rSyGmaCgwznXCZswUNtWuKUpjXgKxVu2gnc0fg388sai17NkA+zAnuXhyR/jvffFLrN3Q
	cu6mPWnp44yAyboucVdlJ+i/ZfKPgl7lbv+eoSOBecDc3jZSaMPh4IX2p0O/tRx5X62GxMkBf0j+z
	xJHvLrHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qK28t-004F9x-2p;
	Thu, 13 Jul 2023 19:38:23 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qK28o-004F8n-2m;
	Thu, 13 Jul 2023 19:38:22 +0000
Received: from mercury (unknown [185.254.75.28])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 40D93660704B;
	Thu, 13 Jul 2023 20:38:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689277095;
	bh=LCTHlbt9t3lIo/yJabi6ZxoDAc2P6YaDBhZi4GtjP58=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VgICHNlTWBb3DvnETMeo90SwdkRHWdjCiK+w2oRIUIUu1mkG75UswADjjq/uJirWt
	 Bl6uIZl1DuZxUjQgfedKFdzU/httYdFOS69tf3NddCHkJApfDQhHeBpth1jgqs6jAw
	 fXrNzaS97mzBwPb13lzZJhtSW2SAM5hjEg4spPk2DJUkiYe+QRkmBOFrNCsdvbuPRF
	 2nS0aG55sqgFk2lOlLhqcpDj5NmJ3/8ik5GhiB6BPXeiVXFmyD77Jr5wUat0jjNRwl
	 l7WFAGZgI6XG1BQXbOa3i93rzS6Ea3Cfi+azHQiVQk6CoU6XpJgu6v1pjflT58ytCq
	 icQ/UGivvUIKQ==
Received: by mercury (Postfix, from userid 1000)
	id 745D01062E2E; Thu, 13 Jul 2023 21:38:12 +0200 (CEST)
Date: Thu, 13 Jul 2023 21:38:12 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
	Peter Geis <pgwipeout@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Vincent Legoll <vincent.legoll@gmail.com>
Subject: Re: [PATCHv2 1/2] clk: rockchip: rk3588: make gate linked clocks
 ignore unused
Message-ID: <20230713193812.px7q4sdfdppuywsg@mercury.elektranox.org>
References: <20230403193250.108693-1-sebastian.reichel@collabora.com>
 <20230403193250.108693-2-sebastian.reichel@collabora.com>
 <CA+VMnFz4USPcXmQMyUB9n5EVmvQrJARDvnpO7iBrXZ8q2xcyAA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+VMnFz4USPcXmQMyUB9n5EVmvQrJARDvnpO7iBrXZ8q2xcyAA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_123819_187562_2EABE503 
X-CRM114-Status: GOOD (  24.10  )
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
Content-Type: multipart/mixed; boundary="===============8100221551240707904=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8100221551240707904==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ckdtegxpm7vrxvpt"
Content-Disposition: inline


--ckdtegxpm7vrxvpt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Jagan,

On Thu, Jul 13, 2023 at 08:25:03PM +0530, Jagan Teki wrote:
> On Tue, 4 Apr 2023 at 01:03, Sebastian Reichel
> <sebastian.reichel@collabora.com> wrote:
> [...]
> > + * Recent Rockchip SoCs have a new hardware block called Native Interf=
ace
> > + * Unit (NIU), which gates clocks to devices behind them. These effect=
ively
> > + * need two parent clocks.
> > + *
> > + * Downstream enables the linked clock via runtime PM whenever the gat=
e is
> > + * enabled. This implementation uses separate clock nodes for each of =
the
> > + * linked gate clocks, which leaks parts of the clock tree into DT.
> > + *
> > + * The GATE_LINK macro instead takes the second parent via 'linkname',=
 but
> > + * ignores the information. Once the clock framework is ready to handl=
e it, the
> > + * information should be passed on here. But since these clocks are re=
quired to
> > + * access multiple relevant IP blocks, such as PCIe or USB, we mark al=
l linked
> > + * clocks critical until a better solution is available. This will was=
te some
> > + * power, but avoids leaking implementation details into DT or hanging=
 the
> > + * system.
> >   */
>=20
> Does it mean the clk-link topology in the downstream kernel can be
> reused the same as normal clock notation?

Yes.

> For example, I'm trying to add HCLK_VO1 directly to VO1 syscon instead
> of routing to pclk_vo1_grf(done downstream)
>       vo1_grf: syscon@fd5a8000 {
>                compatible =3D "rockchip,rk3588-vo-grf", "syscon";
>                reg =3D <0x0 0xfd5a8000 0x0 0x100>;
>              clocks =3D <&cru HCLK_VO1>;

You need PCLK_VO1 (which is currently not exposed; I somehow missed
it).

>       };
>=20
> This seems breaking syscon for vo1_grf and observed a bus error
> while accessing regmap.=20

I investigated the issue you are seeing some weeks ago when my
co-workers started to work on HDMI RX and TX. You are probably
just missing this patch:

https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/comm=
it/ecc6415344957fa88356cec10f8b75a9da603a7b

> I remember in one of the RKDC discussion that the double parenting
> of these clocks is mandatory while accessing associated IP blocks.

Yes, it is necessary.

> Any thoughts?

The upstream workaround/hack is to have the second parent always
enabled. This obviously wastes power, but means that the hardware
description in the DT is correct. Once the clock framework supports
two parents the kernel can be updated without touching the DT,
which is considered ABI.

Greetings,

-- Sebastian

--ckdtegxpm7vrxvpt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSwUpcACgkQ2O7X88g7
+prvUBAAmj/+1Y2EoNVM52dwbYtpsK+nyCPxZN7qF818FlAZMAPLUPGLEhy5h+oT
9yP7Tj2QaoM1WIRajoE/q3UshWnjsZWLRdDqeZsAcsaUfl24MrvzhiYdm/hce0jT
7pL5gW8LJ6apq194xsC64AcF7AOHRBqduoHmlSmBg8Jz3t+O530MGtMCxLf7wCJl
teEmkynSKx/BMYOORifhfoaoNtV5LgvDYjaBSrJ6IpZmCeMuKwmL4TR4xoUVFBaR
IVu8nsnFn3bRhZ85T9R3NgfriPj2BLLbIsDe+qD8blzCETH9vAhAWDpKzBFnJ0NZ
w8XcusaDX1vFOnzjaat/7OKxkguApB8eh/WLAZ1aXDZ0OwpntP3yMduoY5fmixKZ
OrHS2H6wAELKuNO3UOkLfGqEE60+z2A3HEqZA5ltZWud6+oPtRENVmYSjDzNaEjl
lRb/PFMYU6MVFiVtfxqgwKXMLqqIL/Pk3wfgY32FYvTrWkNiCSh0+AFBx8iVzCFI
kTfPuC5o+k+FN7wxqvLYfpgI6poZYs1CSFMLOzpof3/79aJN/NaFbTGW8bngnFIQ
CL2ycYNleFr91CYk83fQ7jbkR0VUd774yCH7FO8ytZjxl5uvecMEwBG3GAn+pZh7
Ns4kvC9k2SepoVw/FUj5ywI+DeizHMAkeR1Hjs5KP4A0nFESZqY=
=ytIK
-----END PGP SIGNATURE-----

--ckdtegxpm7vrxvpt--


--===============8100221551240707904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8100221551240707904==--

