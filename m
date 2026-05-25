Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B550CD5BC9
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 May 2026 16:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=55CAAyuWWMxzQEICSLWmZkBfiSKM2gcQpDLpwHCHl8A=; b=NBgglOoixtFk0UVuz2THH3RKp9
	4opnYHimFeh1WxvBRQ9wFHkTY2g47VCY0xOi8ZFDGBWBE1JzOkMS49Ix6Y2gvb5z54AKpKfwJwpkP
	BScwSEJdNyZuAr70Yw5VkW2h3cDzQb5JbyX1DxTb7YC7amrpWp/mM2+BVsQeKU9/Wsaz/zRRXYuO1
	mKJBLyo5dnZgJ2yRO9+xzewH/lkaQ1NmzC2OaI6L9PM1XaSHHrExA0E3uDkZyBeo6S5K86chK+Ege
	yjJZ968GYhg/vB+B1PMkY/YcbpQi5kpQgM7JzCylxBruUcrV8oRUPw5SeM0KqHr8PNc6IhA1ojnxj
	/3DXJQCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRYP3-000000002nu-41AK;
	Mon, 25 May 2026 16:43:45 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRYP2-000000002nR-2SiZ
	for linux-rockchip@lists.infradead.org;
	Mon, 25 May 2026 16:43:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ADC036008A;
	Mon, 25 May 2026 16:43:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49BDB1F000E9;
	Mon, 25 May 2026 16:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779727423;
	bh=OgsDFyP42Vfjuq6OtI+aOC2Wv89vd3+bjandhQMxepc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fCu7yDOZyggX2FSu9uIyU4+X5Ymjl/iMEyoZv8QPH1Z3OXcUm6cVj28CSPbofYdLr
	 6Wqry44T1/Clwkp0BN0PiKHJUJ4Y25k8zM4vhNq56r9rfD20AEqN6603p92ljAkR6P
	 PJPJ5v77+6b+gpB7PX7+WpFThAmRejKMZjGzFgMRpEY5gZjj1I0vztjFmwUtvKstqH
	 6rH51B0E0CgZ5b0792IZZj3K/AxIhCNz1nwjvEUc1T8e8ocdrilHSGPUSflb4G1HDe
	 Ng+Hl56lVmKNybXf8qTJqwgQzZQbXqVExMnD30v3KGAiEcVCdJa4v7jBnc0y167rER
	 nv3Fodai6UA+g==
Date: Mon, 25 May 2026 17:43:39 +0100
From: Conor Dooley <conor@kernel.org>
To: Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, heiko@sntech.de, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-amarula@amarulasolutions.com, michael@amarulasolutions.com,
	dario.binacchi@amarulasolutions.com
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Axelera AI
Message-ID: <20260525-prototype-dingbat-1aa80f9a112e@spud>
References: <20260522174918.61523-1-patrick.barsanti@amarulasolutions.com>
 <20260522174918.61523-2-patrick.barsanti@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20260522174918.61523-2-patrick.barsanti@amarulasolutions.com>
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
Content-Type: multipart/mixed; boundary="===============2419304855809567359=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2419304855809567359==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yU57OYvm+3N+PKUP"
Content-Disposition: inline


--yU57OYvm+3N+PKUP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

With the changed company name
Acked-by: Conor Dooley <conor.dooley@microchip.com>

pw-bot: changes-requested

--yU57OYvm+3N+PKUP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahR8OwAKCRB4tDGHoIJi
0pziAP4xs1iS8eMho7n65WZfzFGlOikZNpNfbCAqCzQB4jjgYwD+KNZpr8CllB8D
wuCtPYseppNZoAc4eOeohE6q3dAU7AQ=
=5Eju
-----END PGP SIGNATURE-----

--yU57OYvm+3N+PKUP--


--===============2419304855809567359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2419304855809567359==--

