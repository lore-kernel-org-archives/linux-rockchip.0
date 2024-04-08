Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CEFFCD1296
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Apr 2024 17:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kcr4+zp3Ev+SQV1lUY/aQn27kFyX2N+06fEiwN2RLNc=; b=Yp+2BzU1UhyyOFb8O0ZakgJLAQ
	r3cfPZzOFt9C/1844zWIuYQIrVI2sMIAHExGwofB4Klk9VkSHOVqXSDw7dMcJX6/R5Vfstn/XeCTe
	BK4Pdd68HZn9SKGYsk5GkELHo4NqOUmG8HIpEnuhHQbtau0TNwXlAgOuV1h6UkmR6ZzrpC0jgCZVN
	h6TGX8ZGQQVN8kuKtE0tP7W82xk068tSWqNqWQTD9kcWg26ovNWdLTBox1Fg4sS6Drf1uqKL2YFVl
	U4tCu9PLTyrn19plyy8sqc/u9dIOZDT34m/GmANufm2J91HNhxiIK3YNEtK45TtXLotii777NBr6H
	4xMbDqaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtsQE-0000000GHhW-1C15;
	Mon, 08 Apr 2024 17:04:42 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtsPw-0000000GHbi-1m1u;
	Mon, 08 Apr 2024 17:04:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B8B66CE140E;
	Mon,  8 Apr 2024 17:04:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC845C433F1;
	Mon,  8 Apr 2024 17:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712595862;
	bh=dy3oPXhtT+DA8A9ZwN7rVbw8cVMFMCW5FtsQNnUysX8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sta3/99x+vUdccGZVczBTBP2IyoYbfDmqeeDUdY7Igf2g9XzJMbYpi1zPYOhZwnoq
	 9foZTZRBqSHD5TRDoiePadF4JgdwjTSO6Bs0pgQ0OKy0lLDyKLnf9qOAtowOOxGgYV
	 EydTrUD4xfnyaU0vi6OsqNjuQnWHCcnW0KDMiYlr+vD+k4yqqWkKTT3kicerOKnSSh
	 ZeoT0sKIcvA4rejXW1WnXiIiZRqolPMoIbhqALDOI8FLeTdjJA/lANXcrIaIRgJo0i
	 tYI+rs1wULoLQdbI8DAPdDpBAtz1ZabgSuX60NEav5/D7AP7GRh2gpYSvNFhuNLAy7
	 Wb/eoFp9E73dQ==
Date: Mon, 8 Apr 2024 18:04:16 +0100
From: Conor Dooley <conor@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Wu <david.wu@rock-chips.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] dt-bindings: net: rockchip-dwmac: use rgmii-id in example
Message-ID: <20240408-handpick-scouting-b04de6bec84a@spud>
References: <20240408-rockchip-dwmac-rgmii-id-binding-v1-1-3886d1a8bd54@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20240408-rockchip-dwmac-rgmii-id-binding-v1-1-3886d1a8bd54@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_100430_849697_3596A141 
X-CRM114-Status: GOOD (  11.18  )
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
Content-Type: multipart/mixed; boundary="===============8848280909354536863=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8848280909354536863==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="whOycmADd1NrPPmb"
Content-Disposition: inline


--whOycmADd1NrPPmb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 08, 2024 at 08:44:10AM +0200, Sascha Hauer wrote:
> The dwmac supports specifying the RGMII clock delays, but it is
> recommended to use rgmii-id and to specify the delays in the phy node
> instead [1].
>=20
> Change the example accordingly to no longer promote this undesired
> setting.
>=20
> [1] https://lore.kernel.org/all/1a0de7b4-f0f7-4080-ae48-f5ffa9e76be3@lunn=
=2Ech/
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--whOycmADd1NrPPmb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZhQjkAAKCRB4tDGHoIJi
0vZaAQCzEUq832WzZ37GUbKIrB0V8uvvHYrxPBDcsr17McinxAEA4If1pTgFZfkX
zWzresFYoT+wuXAVCB7RoeelxHJHWg4=
=8IjP
-----END PGP SIGNATURE-----

--whOycmADd1NrPPmb--


--===============8848280909354536863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8848280909354536863==--

