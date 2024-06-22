Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45677C27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 12:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UHjwYU/h0MyIMauVViPTRyziAhOi25Bo/QhlfH662OI=; b=jDgc8BncZLOfnVC78Vs+0Eb34H
	CXSQ11CKFh5aenqaiRv7dA6H10XqxYEoJF6cVGZ7/WYIzhnfsEy7upvGFcEq7e9hPZRgqfLyuGIZt
	EwKODZWhJASoAJoMDrY3cYBlkdPm0BJz9UEoETBGbLC7FMeVfaQ6aag/EmYetYBmmOzgZjvbFwWeu
	Ob0G2GALQDYUeOGwX8CJx46ABgxlsdsnNJTNPFsC78YyNin0yiSWCGzXN1YOvFRB5WH/BGZwC6BFE
	BBprladytZ4hyjPe1+mW0r3LcnA9XVO0NzQbJkE2CrEJxGVKA/+r/9vcv3agJqmn0ibGF897/7sJV
	WBcBQNuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKzV3-0000000C1wk-3E4p;
	Sat, 22 Jun 2024 12:05:45 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKzUy-0000000C1vM-38IE;
	Sat, 22 Jun 2024 12:05:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D281DCE0931;
	Sat, 22 Jun 2024 12:05:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 567D1C3277B;
	Sat, 22 Jun 2024 12:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719057938;
	bh=F/HLmJ2OBhyGpSULyV0Nh9eCof/TATNsIly3LECh6ok=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nKO7LBZTR0tKVxgEsvQAUoeYdlosxGN3h1igYU2mkQJCzQNsGUiFKc7+5xOb/0WM0
	 MmB/4V+MP0ZbhkWoZJiDN728uTNvZuEImxrwmEB4BanE1pyzKIvkfM+KWVQkXOx664
	 81xUm8L71rQmpdiDqc2mCaafgsYYmdgj05+cUp+k3pmPxRsKiGXJgtuwvuTZiFi+qz
	 dOSiqG1xAWRxoThDk4SlzqIyae4rSYYOhHZMRQEH5xdeKatxtd6VqUe2tsAMgV2d3Q
	 Cll3SALUIsjPqpgExFnK00qbpMD4rE15mQE+E1ZO60vwurYfDHR5fh5aeRy+mcbpZP
	 LoGcaKM8hKFsA==
Date: Sat, 22 Jun 2024 13:05:34 +0100
From: Conor Dooley <conor@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: vendor-prefixes: Add Neardi Technology
Message-ID: <20240622-algebra-fifteen-10e9ba3a44ca@spud>
References: <20240621134030.243646-1-knaerzche@gmail.com>
 <20240621134030.243646-2-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240621134030.243646-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_050540_981995_48E731BB 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============1603715289274214607=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1603715289274214607==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0AAtk5XzKyJNFG7G"
Content-Disposition: inline


--0AAtk5XzKyJNFG7G
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 21, 2024 at 03:40:27PM +0200, Alex Bee wrote:
> Add vendor prefix for Shanghai Neardi Technology Co., Ltd.
> (http://neardi.com/)
>=20
> Signed-off-by: Alex Bee <knaerzche@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--0AAtk5XzKyJNFG7G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZna+DgAKCRB4tDGHoIJi
0rnGAQCgzpNSudyZd5E3mPkcnUrBMAM9a3S3F0D8rb7Ed92cOwEA8v4ZtzZ4oLUW
5F4zzsYfQr44x7LrENvf5e/EcBNs2wo=
=9SoF
-----END PGP SIGNATURE-----

--0AAtk5XzKyJNFG7G--


--===============1603715289274214607==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1603715289274214607==--

