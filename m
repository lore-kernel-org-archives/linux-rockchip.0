Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42FF0E77188
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Dec 2024 14:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1wuOltjdtHG8VGmK5R7fLRQLeVlb043aC6v9bXMITJc=; b=D0MVgkgKDjcNWDDDNRgetVPNgW
	2wJb+r91fpV/wRlLi+Svljnql2BYI+HGUSmlgDcLsj2Qx4odJvKH9DD0z80pN2uwlTE/xI1KF4B4w
	kiL5fViU/nuSqcbOxsIymlwM3Dd0ZUxfsfaxneORvJ5jgL2uBznL8ehCei1HUYiL22U41Kj1mTzFp
	gvDB21wKkt4qBPbMollZdmOF/iEkDfmC98DELYNvbfhDsv4trf0fRVsWhaUdkDS5jUjOhBaQhPhHm
	Ns+NCkvAHJzukNz0lYO91LywZ8bN6hHJssWj8pGKuH28GeH6SkkGxVdeb4kqv65w3OS+gPOWs3K5W
	hjsc2ruA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPNJw-00000008Pq1-2d1U;
	Sun, 22 Dec 2024 14:52:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPNJj-00000008Pno-1IVE
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Dec 2024 14:52:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 95ABD5C4A54;
	Sun, 22 Dec 2024 14:51:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0606C4CECD;
	Sun, 22 Dec 2024 14:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734879146;
	bh=1qs5ohTuPnKA1L9/JYtkkCFMLAgz1ArxNv+IC5GImAI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PsPCDuwfl+IX6ydypwbUMUMg9bv6rGb7scmuthhHCM4uiyFa9L6pbUSCUvIs2BMen
	 FPQ0G+34SBTJauOHnmFqB2Y7517N9bp313jqwo2BkQ5Xhbc78mBPWSXwbtZMm07tia
	 K4DXIK0CVXAzGaz3J4NBbM5AvHPbTA22lMsEgUdOVPMzHsmpcJp9N3SDy+o0N+YU1c
	 aV/TUR78bZp4UcoKhyxc+u6FykF3OECjPn2apie4exRWA7Qj7E81rCSQv/MlxO4Osi
	 T/P59IvV9Q75xbE55R6RvRUwoyiLN+/eWxQ9fGDhNc39naWL5KGOf8FEowZsC/MWGQ
	 nKYO1uZiSJ68A==
Date: Sun, 22 Dec 2024 14:52:21 +0000
From: Conor Dooley <conor@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org
Subject: Re: [PATCH 02/38] clk: rockchip: add dt-binding header for rk3562
Message-ID: <20241222-plaster-tidings-d0078a7a007e@spud>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220103825.3509421-3-kever.yang@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20241220103825.3509421-3-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241222_065227_406207_66A711D1 
X-CRM114-Status: UNSURE (   7.34  )
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
Content-Type: multipart/mixed; boundary="===============8031869873097657298=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8031869873097657298==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sFzoiXaeTkH6r4ws"
Content-Disposition: inline


--sFzoiXaeTkH6r4ws
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Dec 20, 2024 at 06:37:48PM +0800, Kever Yang wrote:
> +#define CLK_NR_CLKS			(CLK_PKA_CRYPTO_S + 1)

The number of clocks should not be defined in the binding.


--sFzoiXaeTkH6r4ws
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ2gnpQAKCRB4tDGHoIJi
0k7CAP9UU021ZHo5su6kFO8Lh4rZvIM2qOTHtVt5NZYDX8s6HwD/clPFaPQbjYKh
Isf6ybumVFu0AyKL/5mSiCQmXWv5DgA=
=5x3J
-----END PGP SIGNATURE-----

--sFzoiXaeTkH6r4ws--


--===============8031869873097657298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8031869873097657298==--

