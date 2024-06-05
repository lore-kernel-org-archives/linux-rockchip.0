Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E5FCC27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 17:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lH5NQPx1IPy87cfCt6USPYJiVVcq5/fYAM31fliKVh8=; b=C9DxKi4T9DhKA7OSStglYCTOE1
	xDtrDRLAOdJBrjS77IzcUc1r68LNT8Xq+iolbF4HCtauCfSzGaR4h0aHdtXYPt7suhiDeKnzoFoWw
	DtIflL0qh7IvXlCiwv5D2EEZSOuZtB/JmUPXAipM7K1S6MbNRuDp0eQ20Zdr7C77+Ybe2cIBvUl3O
	lDd+5tYSys9Q9N5NSacLBah7cQr2MVEc/LjAFZUY4psGc5anzryjI7Iayb4P0PYT3bCI0kQnWG6CV
	As01HtFiKs9jL+cL+BMBpBea/gtAbHo4at9xyF0wwgzzPLKZQxf8L6I7mfFi46a9r6qxzK4i34/yN
	oDOqvAxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEuuO-000000072rH-0ms0;
	Wed, 05 Jun 2024 17:58:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEuuI-000000072oP-2tiH;
	Wed, 05 Jun 2024 17:58:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E9D4A61917;
	Wed,  5 Jun 2024 17:58:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DC1AC3277B;
	Wed,  5 Jun 2024 17:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717610321;
	bh=keC2lawUTxN8qMiU8ZtJ51LD9NWntFOVEDK230C1enw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LbrbNbvVXXHECGmADFNhod5fCtSnM3hZbObZkGlAUAMme9xOr+GVYecofVQbYoNpD
	 yVulcscXlrwMMzDU7nZ3GxYLccMV8a1mBDWxIKUn5LrM473WLjZKsKIqjLCicclKSp
	 WDTSs/lMxJ2geKR2jypoFPmcpzOTeESq7vhNk67XwZN6nh/DO+bmBASEJ+FjelxHXe
	 tV/m/HlaGFyRBA759uuceU+IvGbtEE7FUz5L7o7kiRuveNer3cNRp3eIy4AAhmHk9X
	 j0DHTL3unoKePbHwEcWnKjysQAOzs5Q/QA12yd1ibEOY5HBjwdgJKOtKCLkfSksA5E
	 +rgJZ/l49U4Gw==
Date: Wed, 5 Jun 2024 18:58:37 +0100
From: Conor Dooley <conor@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: clock: rk3128: Add HCLK_SFC
Message-ID: <20240605-crummy-racoon-fadc5a6f5d25@spud>
References: <20240605172154.193047-1-knaerzche@gmail.com>
 <20240605172154.193047-2-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240605172154.193047-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_105842_826324_EA2CC31A 
X-CRM114-Status: GOOD (  13.21  )
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
Content-Type: multipart/mixed; boundary="===============7985478939633629135=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7985478939633629135==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Jhcpyezfc1K/YZWx"
Content-Disposition: inline


--Jhcpyezfc1K/YZWx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 05, 2024 at 07:21:52PM +0200, Alex Bee wrote:
> Add a clock id for SFC's AHB clock.
>=20
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
> NB: I've added the new id at the top of existing HCLK's, since adding it =
at
> the bottom would change CLK_NR_CLKS and therefore the ABI and there is
> plenty of "free" ids between PCLK_MIPIPHY and HCLK_SPDIF.

We've removed a bunch of things like "CLK_NR_CLKS" from bindings before
and advocate against adding them. Patches like this being the reason
why..

--Jhcpyezfc1K/YZWx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmCnTQAKCRB4tDGHoIJi
0iXBAQDAyWnbRnsZhrLj+spS8XzSH/DX4oU5zCvnbqJwnIpxsQEAqgE20hAT8Y/L
N1uBiZLsRadqYKCRLFSYPPIccMzAzgE=
=EBT7
-----END PGP SIGNATURE-----

--Jhcpyezfc1K/YZWx--


--===============7985478939633629135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7985478939633629135==--

