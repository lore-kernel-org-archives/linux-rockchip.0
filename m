Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BB3EC001DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 20:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2aarUQtDRKt65mbTy5d6HxILCdXx/di3T5JsSOltTq8=; b=AGZ29rA63uAiUkyo+IQtkuMtPn
	HHG8dUPNh1kbH0MM5HYjmRpL2CzhH8kkxQgf2NUWxJZSInBdZ97y8PBlHvWZbLWCN/7BqP55azTlG
	4jttgVtrsSF+QQAI4/vVbw+L3AJX9F92jJckEwMMc3uAcLemJBN0w/E4M77W9G/oOdfcJo9O2GexI
	jU5wiA7NBGEx9ssSL9AQvHfBI1URJxsvWdQ1Q7rY4KeWtjbGbOukUViwF1wMpY3cOhjmQl30LKQf0
	5DZTG9OeCBMU52qhQR3/A9FgfgqTWK1hnTRWI423nY/GdLnybGK59lOodiW9Ktl3RtTTM078rnl0u
	jwfQ/e2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qK3F7-004Kh3-1w;
	Thu, 13 Jul 2023 20:48:53 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qK3F4-004Kfp-2S;
	Thu, 13 Jul 2023 20:48:52 +0000
Received: from mercury (unknown [185.209.196.239])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id ADD4D6606F26;
	Thu, 13 Jul 2023 21:48:46 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689281326;
	bh=OcYFg80FiQXynB8AOmmfLHMia5l9zQRIc4M4oNHCCPQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SmEjX7wwDg1T7xyRkZTH6scmpUO7OEgEcmq0L3WLdLSAXzNigwOW+qZmu/E834qc1
	 I+xUXtoQJ1xYs3VDXk/rw4KEEE3JaRxn6DbyME0IqkKEB10tpBA5+F5hnTnjF651Ps
	 j8Q+rBLHsPPXYMQJuEAQc38cyFdsoknat6P8iiU6/AD5UwW84iXDDehcPAFXNuXJBl
	 FgW/LIjaqLzM81n8RRyw4ne0O4crSvzpHgt/391HBte6xalv5tGz0yyZmfBo9QsTz+
	 xEtcNvm7rffbr3Y78JCj/PxRqBPPFEcm6pjhFia+E7VTf4yz1jE8WEajYb/BdyrKzV
	 QJG3PW1nl7XRA==
Received: by mercury (Postfix, from userid 1000)
	id 3F8701067026; Thu, 13 Jul 2023 22:48:44 +0200 (CEST)
Date: Thu, 13 Jul 2023 22:48:44 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Serge Semin <fancer.lancer@gmail.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v2 0/3] RK3588 PCIe2 support
Message-ID: <20230713204844.c4j4lebzj54uj7no@mercury.elektranox.org>
References: <20230713171851.73052-1-sebastian.reichel@collabora.com>
 <9408492.EvYhyI6sBW@phil>
MIME-Version: 1.0
In-Reply-To: <9408492.EvYhyI6sBW@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_134850_923263_B0A2F400 
X-CRM114-Status: GOOD (  13.13  )
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
Content-Type: multipart/mixed; boundary="===============0262212516536646135=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0262212516536646135==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hhtmfkturvoriibr"
Content-Disposition: inline


--hhtmfkturvoriibr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Heiko,

On Thu, Jul 13, 2023 at 10:09:29PM +0200, Heiko Stuebner wrote:
> Am Donnerstag, 13. Juli 2023, 19:18:48 CEST schrieb Sebastian Reichel:
> > This adds PCIe v2 support for RK3588. The series has been tested with
> > the onboard RTL8125 network card on Rockchip RK3588 EVB1 (&pcie2x1l1)
> > and Radxa Rock 5B (&pcie2x1l2).
>=20
> Didn't Rob write that he applied patches 1-3 of the v1 series? [0]
> or did I miss further communication somehow?
> [0] https://lore.kernel.org/r/20230626193238.GA3553158-robh@kernel.org

Rob wrote, that he de-applied the first patch:

https://lore.kernel.org/all/CAL_Jsq+=3DkBrujhLW_KNRWpj+DQJbnXrA=3DRS3La5ekb=
Jtji+xiQ@mail.gmail.com/

It seems the second one was also dropped, since I rebased on top of
6.5-rc1, which only had patch 3/4.

FWIW the remaining dt-bindings fix issues that also exist for
RK356x, so I guess there is no strict dependency. It might be
acceptable to merge the DTS patch already, so that we finally
get working network on Rock 5B. That would temporarily introduce
DT warnings though (RK3588 is currently warning-free).

-- Sebastian

--hhtmfkturvoriibr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSwYyUACgkQ2O7X88g7
+prwJw//fJvsOiZqmRLQCwHeAGrD2LyT4A7QztkN1O2quTtN95PU0c+5GlvuZ9v6
wf0NDGFH8kn4GF06H4D+n8CnNufts9SsLAntG9IJgoFlBAG2EboRq6c/j4nFiltf
2PyjwW3U/GOWxeYpehMdCRjn3zZclX7Ea1t2Acq6j8dUFWtk9wc7M/HaH1Podkio
Py6+toD6THxB84u5fYEZb0r7EjduQSX+OQfgpsKUmAmoN0d5cTtkaM76+27P/Py0
JMMx186BCkalMiODWI6XyJkekR6+Xe2rzB20ec/XHAho9VcYw4/xdzT0jOMUxqZU
NaV7eRkzwv0gNU3ICzmLuJ/g+jU7b4ERU8/MCDoS7fxbGsyAWVzFUEMNd0viROIZ
AT27WDPrbFN5DZkzYNWqQjFofhF5lDEW0knAcViHD1CcZIqFJz8w08W4bL6fMQWi
SspJIuNDdXfid7qiV8uMt1iNI588ExZBXluk5wJTdnHleWuQOgRTPCq7+kaHw9lA
evNqYdLrwWDTXgHX91oNUnvNna9GE11oBTte9JBSDjvwiENzW4P/HqKho7X8l5ZL
bYTAEZ/UzUgwFV5d2NIeDV6ClOJmL3XBsxakqrM9iHPhZVkI4xlpzedH0u28F0LF
nKd3MIYuSd1KNU/fJlnL/3cmRFJ4FCamVfd6JeOzL+KdRh1SU4c=
=EKgh
-----END PGP SIGNATURE-----

--hhtmfkturvoriibr--


--===============0262212516536646135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0262212516536646135==--

