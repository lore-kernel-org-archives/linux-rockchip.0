Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A99D4CDB47F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 16:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EjLdV9nLpT/mdDfs5tsedLahudC5pD0n38I4mXQ2aG0=; b=lRRJ7YwZ578R+cR7iupD1GYeO7
	d8LYtatjMmsptBa67qKVeDSoOjmZjq3MRcLd1vRZpuR+GqEDPmlf5y+ML+wTxMB0PdTcNOmxiG4MA
	tYvnLUak+823IbGVnEj6T9bP+DdNjeRYEDMvliQCdv+5147NUEOWU+gFjXFgbJqQdKoZ/uajoM/yr
	5lWvzq4Oe4VyOqUNWzDVZBHxHHAYBqnJ3aCG/pxgOefLWnlgWN8ywAXV6GSTDb22/2DRtii5zIxNJ
	NJwi6SbcyhzfTq0xFbuDF6nb6PtspFDz35+R0/uFVbn3qhAgvwKED2p0XLm0zuuezD4jbSRNKsFLv
	ZS7MQZjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcQbf-000000086yF-1Usq;
	Wed, 24 Jun 2026 16:37:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcQbe-000000086xN-04Cm;
	Wed, 24 Jun 2026 16:37:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D5A9E42D5E;
	Wed, 24 Jun 2026 16:37:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 519681F00A3A;
	Wed, 24 Jun 2026 16:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782319060;
	bh=SyfHu/I2XIYsJdezOUmVizfnPBrz+gMGazU/SwA/7p0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ozhULR+v+tD/EkyTxdaXnoHIxjSg2eEDAx2Fb3JzrUPKQSUCuaLW9ryVA1/TT4YRL
	 t3oAm1wuAaYkPl083ZmrCaNNycX6mrrEJsfKI6XkgQ+MLCXcVKTKDNZRHxvmh/Y5CG
	 UDTdmjmN6k26engKIkk5nWYK4uqYLBrYODRhRliIgknc7F7mFPHfyKHtnC9Q+v1nHK
	 e61/0PUA6BL4edyh7IsFB5pjbj6jEeZQnCLSkwAn2fZUTkSW2wcISKoK0iPlFtboB0
	 A71iuN6NTG7RnI62xhptpGQ5zGbxYrmGmsr7AB5emgy0pRqYHunZIRxgNY3B1D25ma
	 YybFPgObmMnpA==
Date: Wed, 24 Jun 2026 17:37:35 +0100
From: Conor Dooley <conor@kernel.org>
To: Yanan He <grumpycat921013@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	David Wu <david.wu@rock-chips.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 2/7] dt-bindings: arm: rockchip: Add Alientek DLRV1126
Message-ID: <20260624-catering-hacksaw-5f5bbe02dec5@spud>
References: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
 <20260624-rv1126-alientek-dlrv1126-v1-2-5aef608a3f64@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260624-rv1126-alientek-dlrv1126-v1-2-5aef608a3f64@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3247127049019829683=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3247127049019829683==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7R3iGmzIl153QvNt"
Content-Disposition: inline


--7R3iGmzIl153QvNt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--7R3iGmzIl153QvNt
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajwHzwAKCRB4tDGHoIJi
0hN+AP4pHYjmTYkx8NmigTz4jNMzRk/K1+zEkTRcxRZH3NYuzgEAvcdfNlPvw9o/
FbZgTWC2paNK/w1CV6+u3VrqW6MGuws=
=IXtP
-----END PGP SIGNATURE-----

--7R3iGmzIl153QvNt--


--===============3247127049019829683==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3247127049019829683==--

