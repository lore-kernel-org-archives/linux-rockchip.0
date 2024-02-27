Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D089C5478C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 13:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dEY/ib1aCjoeZw6rFinrSlUeKApepV7OlClFLDM+RJo=; b=iA+j15uVApTQANrhp38jDCluUa
	wjDm1YKlrsYQoM+Z91pTOJvcmsglG2+b1mtK6WaH3JYHr7t5uhjyv3qhiESHcG3wShcHyKEx9Hkmx
	IYFdZZ8ZIFnylRIUNoNuEUMIdLepPuwLrsH9/JdPDC468CiRW13ArCs+PRZ0lX84iclsbnJtf+q26
	+DfSLrm7xYIzfOaRXDPgslpbeM6fgwZwbajDkoEVivdIo2yKUf/SnYcNQyudz2WuzdaWI4AEQYq7Z
	hEYcChovXnmMGHqWnFVoo2PpIx5jxa9MNTCIgGAWJHGR4jblodxXp1f69idlHbZL9xEauopN/uNP/
	h0m9J9Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rexwH-00000005U2N-1iCk;
	Tue, 27 Feb 2024 13:56:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rexwE-00000005U0O-2d8N
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Feb 2024 13:56:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rexw6-0007Sa-Qs; Tue, 27 Feb 2024 14:55:58 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rexw6-003DBt-5D; Tue, 27 Feb 2024 14:55:58 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rexw6-00CUO7-0D;
	Tue, 27 Feb 2024 14:55:58 +0100
Date: Tue, 27 Feb 2024 14:55:57 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: Add basic support for QNAP TS-433
Message-ID: <2ifrk72uv2j27eukuxeekeuluzf4bu5335qk73gaaykg7tcq4d@uhkutnknqqd2>
References: <cover.1709034476.git.ukleinek@debian.org>
 <170904127405.3703837.16422930909447111254.robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <170904127405.3703837.16422930909447111254.robh@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_055606_693318_E2E24D74 
X-CRM114-Status: GOOD (  12.88  )
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
Content-Type: multipart/mixed; boundary="===============6284404393633423399=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6284404393633423399==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iesqjog43iq3vvyl"
Content-Disposition: inline


--iesqjog43iq3vvyl
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Rob,

On Tue, Feb 27, 2024 at 07:45:06AM -0600, Rob Herring wrote:
> New warnings running 'make CHECK_DTBS=3Dy rockchip/rk3568-qnap-ts433.dtb'=
 for cover.1709034476.git.ukleinek@debian.org:
>=20
> arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: video-codec@fdea0400:=
 'interrupt-names' is a required property
> 	from schema $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
> arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dtb: i2s@fe420000: reset-n=
ames:0: 'm' is not one of ['tx-m', 'rx-m']
> 	from schema $id: http://devicetree.org/schemas/sound/rockchip,i2s-tdm.ya=
ml#

Yes, I saw these, too. But given that the added dts doesn't touch these
two nodes, I thought this to be a problem of rk3568.dtsi that I can
ignore for this series.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--iesqjog43iq3vvyl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXd6e0ACgkQj4D7WH0S
/k6skAf/dRZ20y6F1oQUou8Fu3bZZuCmLbZMoyvVb0SWNLJnVdwJWpAmv3LlO/Eo
KC2WS0L7PP0szwrhVa06ihiVlZ26d6AaKoLz0+98H3ZozTBqcauZY43RItjzpb6T
34wV14+1BpoadHtM536egD0FbHDcMANX9Yvt4uJ72VwAXNEFKElzzrhzmm0v0Cni
QHNtZL5NN6x3wxHURvudfxp6emU7AuzhsQcpnylWk338czdTV3vvb7780cKclzWD
v3G+Ru5KSKWN+ycp3xVw10bpT2z6Va7gfps3Rx+UKyCHksVlDX3KzbU3yIAQENOX
lkxCRZyEuDhVkS6AI+ZFAMfr20DaFQ==
=HVJi
-----END PGP SIGNATURE-----

--iesqjog43iq3vvyl--


--===============6284404393633423399==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6284404393633423399==--

