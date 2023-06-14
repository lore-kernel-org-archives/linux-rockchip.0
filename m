Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07F4FEB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 15:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=niDNwju4aMghZQ09k4gdUwB3ITt1l7nwrsjBRuWfmjw=; b=SUfwcmCBh2Lg6XSfbcdJrO/i0d
	uiRZj+KXaWzKXXjchINf0BBW0MVcaKCyxWsZDxVuWBmeTXKkLAPA5N3z9IjG8L+AOxvzO88fTSmei
	ZcGzAF7Dfppz7Fi+NmOYRzGWlhnKwiG5xTMNOfRk6kwXc18W2mSXcfWRc/UekcR7uy7ZHZCcuPIOi
	nkgKc+g/hSo7nwNSycZREQ+ohWXELLJ2YiDewidrpX8VAsD54pNY4RCiiye2f7Cd2vy+8ktC0Dr+d
	2L+rxnWCIjVQs6msUj+j0m98tMxQNgLChoR4GKHFTzHgj4Xn95xroigXBiUvynX+kwFY+dHSmxXJA
	oy5BdcSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9SPC-00C4ft-02;
	Wed, 14 Jun 2023 15:27:30 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9SP8-00C4ey-1G;
	Wed, 14 Jun 2023 15:27:27 +0000
Received: from mercury (dyndsl-091-248-213-214.ewe-ip-backbone.de [91.248.213.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 43DED6606F4F;
	Wed, 14 Jun 2023 16:27:24 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686756444;
	bh=GZ8Sf33JazmMkxEGjgJU5duB85Yb8pBBWqBGBBUZx94=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RaegutL4WL1b4gvUQkqIFcNre+qhwMQ6dYMcSeoDrwpk72yLm3RDAJR8IspFh0KtL
	 mYkkP3sFKEzhd3NuSc8cmgyEad5uXGDqg/6qjPGATCJ5Sjeneo69n8ET9HhtFSm1tS
	 ZBOEAjj0w8rARWE1/u0Q27E7pWDWi73CaRVM4zhrmHJm+cPqkqu6veTins9FaEqetE
	 FPZMcNqPGCq612IIKU4UQm2fSXzEf9DgHGWl11E83BSyfbaZE/P/5ICfrDLzn/MSFh
	 n9FofDXAfTomszqDsWqPcnIKrZwsNvgZhpp72DJhUVx2jnJt+yNWuIKdOpS2/YI/ZF
	 uKyQ8sKw3U2zA==
Received: by mercury (Postfix, from userid 1000)
	id 604561060A61; Wed, 14 Jun 2023 17:27:21 +0200 (CEST)
Date: Wed, 14 Jun 2023 17:27:21 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 00/25] Add perf support to the rockchip-dfi driver
Message-ID: <20230614152721.eep5ip726ump2kpe@mercury.elektranox.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230614134034.3p3p75a3jophi2eu@mercury.elektranox.org>
MIME-Version: 1.0
In-Reply-To: <20230614134034.3p3p75a3jophi2eu@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_082726_560638_BD04414C 
X-CRM114-Status: GOOD (  14.62  )
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
Content-Type: multipart/mixed; boundary="===============5019007998684882285=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5019007998684882285==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zyjzybui6e7gqjye"
Content-Disposition: inline


--zyjzybui6e7gqjye
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 14, 2023 at 03:40:34PM +0200, Sebastian Reichel wrote:
> I tested the series on RK3588 EVB1. The read/write byts looks
> sensible. Sometimes cycles reads unrealistic values, though:
>=20
> 18446744070475110400      rockchip_ddr/cycles/

I have seen this going off a few times with and without memory
pressure. If it's way off, it always seems to follow the same
pattern: The upper 32 bits are 0xffffffff instead of 0x00000000
with the lower 32 bits containing sensible data.

-- Sebastian

--zyjzybui6e7gqjye
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSJ3FQACgkQ2O7X88g7
+pp2JA//SCpiw2slHYpTU8N4bPFSUT9ITBtddLnikjBs/LlWM9rDQV08dDBqnR1o
Eyyn11zHNQ49a145uEWthUM/j04gSR7n698ALsIJiCwEhglNB9maSJGFC2KjUISi
XqPkAcMfTXFuxWiRjuxGdcByP1XGbt2PUEmOL3ttATV4fsa+CBOqSRRCRFubufQ0
AVaDyNljEyMtvan5cgEq29iWXLL5LvQD15XZVWYiqhq0I8TTvZ/meQSTY7n2566G
WuYHXFWBnUQ/UhfKcTm1EHp+E43xPjaW+OTocMcijL4CqKXdj53rITNTZl0yBb5r
lvDlndiH2c9tgrxWtxGaEisdoeUEkc15N/OXubemWTXAnNF9Er5cImnP6H2zgc3r
IZNgiZnxcbqVcbXRsMvv6G9x2rgR1qrT7a8gfW+6XeKiTXMxhgfCyX12n++IMUWf
pfBezTJ9p4wa4sUW7xSNd7HL0AU0Lmb9LVDD1rFuNOEYKgeaOW+n5x3PIfjcqjgJ
1+HCmYklpAAdki85cEUZEuyf7D7C84j27uUUuOnlO670JpxQKvYndt022J69zZB0
UO3iDHemOx8Vwg8gkIcmCwsm7gopQOfhD4DjmOYQ6JddnuwwXlnOXRTLnBm9pzBw
hNPrd7KmbNw1nqhTDXc7OIT7iwOVmvJm5lj1GJ1m0gCnA8ZhVjg=
=xSXO
-----END PGP SIGNATURE-----

--zyjzybui6e7gqjye--


--===============5019007998684882285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5019007998684882285==--

