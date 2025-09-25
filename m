Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 069C5CAC5BA
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 19:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f43pqZZYD0z+J3+EzLDwv+DrYpTtg4SHmLc1n5fs7Ro=; b=rxlMsSVU96o5oy3snjF31WjKV3
	Z1qWd+KbmKoR0Q4BtV8h9Tc6OhHE+nZhB+0vWaHtDI/KcpM3hCcsKarI1Wkwm1dnAvE0AZP9pHBwU
	H+idhM3e46tuWkmS5iZ89kgkWbgvLpJkvcdXAIs/e5rbQLvl3qAqbEJGzepNCm3xjgIFSmu2G1HXF
	BSMV8rrV23ywbzcsQyCoyvYS9ng7ZOfJesNIQHm+lQE7dlnwxC52+HRSUbVaTq6DHf+lvdIL4fXm2
	FwCsbK48Tf1YwYtSMyF6muDo6RX6QVkmCpCmZpt97xTOakKWEaq67OeVBCzRHX9n8gAxl+RZkFZ/z
	C6qN9k3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1riw-0000000CM29-2srV;
	Thu, 25 Sep 2025 19:33:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1riu-0000000CM0P-42Xj;
	Thu, 25 Sep 2025 19:33:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 652286121B;
	Thu, 25 Sep 2025 19:33:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24BBEC4CEF0;
	Thu, 25 Sep 2025 19:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758828828;
	bh=EigWim/UCRyio9RFX5hRbRTRCkh1l+saIBXI4z48n2M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D5CP6iNPFDvReVrRJGzQGei305a35Ubk4kZ768shgeIOh6d/vQwmadmI5CfaanV4a
	 QNf9f9s2UAWX/scBvu3qbpzxzpBzQg+oPGWQE8XsKjI8VzQrzHKyaByw99JlWRdMtI
	 o9HNEX3lkNUw1MP5wAhlcGKSCehSRp4izvnBwXrEFZoCEfNT5weZAJgxkIWXGTRhW2
	 gh6sEcAEocM6FS+o191bVd9RwD62qYB2m8JhEd/zqkNotU605FD3qjFMwtWsg3CrXt
	 JXNwNjEDKAJkfdZkC/ekjuKH0O+8aaZiyLukPOdsEeu+B9gZOg1usAOA396EBMO5CE
	 EM473XJ6iAg1A==
Date: Thu, 25 Sep 2025 20:33:42 +0100
From: Conor Dooley <conor@kernel.org>
To: Liangbin Lian <jjm2473@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, quentin.schulz@cherry.de,
	kever.yang@rock-chips.com, naoki@radxa.com, honyuenkwun@gmail.com,
	inindev@gmail.com, ivan8215145640@gmail.com,
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org,
	pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org,
	jbx6244@gmail.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Message-ID: <20250925-renovate-willing-1913bce7d347@spud>
References: <20250925055906.83375-1-jjm2473@gmail.com>
 <20250925055906.83375-2-jjm2473@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250925055906.83375-2-jjm2473@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5427301328860536086=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5427301328860536086==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6q46uqyUhMhBcI7Y"
Content-Disposition: inline


--6q46uqyUhMhBcI7Y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--6q46uqyUhMhBcI7Y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaNWZFQAKCRB4tDGHoIJi
0tPbAQDluKdmaxZQBuZPp5RSMdINmjfLQvVz3r2Pj5NC9W1UuQEA2gaDbkOjgB94
m4r3xrc2DT2pFCg3SgfT6s7+3UdRtAM=
=ZY2/
-----END PGP SIGNATURE-----

--6q46uqyUhMhBcI7Y--


--===============5427301328860536086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5427301328860536086==--

