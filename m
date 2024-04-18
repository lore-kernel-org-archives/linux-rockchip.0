Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0A76C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 15:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PsMi5TYsybALg4O6uE9uN/XbVt+bzoIQRu9KDnkP6Dc=; b=VxiPODih4CC3VpJIpHU60cehSU
	ng9jwYMgYFCX5WazOTaxLy5q1HXmtsoAelNncXBSygV/IwKHlPsIDpUC5rvagAHv6MV3QoxAa7v1a
	tvOqw1OXV//nVkNu2J8wMu0fSarzQgLgpXHIJaxuV+YvtGZhAvgwFh5LXgsqW02hhCIJSFaeb1ruG
	1GdWSGVO2Xi5HXkGGsernEfvxQ0mdfcsIZcYZAyoMCDGb31ThGy6QQEyfHkbT2YbaC1ckCGEuqmXo
	8oQSpM1aNG6iEyTyYvo7bxbJLXzNYpTod1WOUgiAkWUQSUXhtg39g4Lhoyl6jFBTEleggyaMAHhNB
	8+4YIt2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxU8M-00000002uOP-15k0;
	Thu, 18 Apr 2024 15:57:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxU8H-00000002uLt-2qp9;
	Thu, 18 Apr 2024 15:57:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0E1436189F;
	Thu, 18 Apr 2024 15:57:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DE17C113CC;
	Thu, 18 Apr 2024 15:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713455824;
	bh=NuLhSfmYURyeA4KyKnBJ8GgZw3mwTQhoH5JrHj17W2U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HC8VKVm5hRy2IWpiv+a8i3bjGGmhEFdfpcgke+gWkBdnKp/GfF5li0yOqubX0m3bt
	 dPTnBjB0ibYwUMXtA2qBD04QQf5EYFdGid5NPHouU9RvlXo+XwuXwUw8wOytI5JqR6
	 5pNPmDYJhJYEswFyq/7AUHJIjxUqIvis0irOFtW1D9pBQJYQ5OblC72B43UYRj0bxK
	 Deli09g5qDv4VpnClB9wlI3cSXOhCANJ1AjMl1xnZnomcAIOEm2vAHSCNM5+6OX+cM
	 r8mxMVYUwJvZpel05v/cxU1PtG1fTuh0LCjX1s2Oq2/ESfT0i3W9u6nX3eyJ5od/Fi
	 yB4TX5eQPHC0A==
Date: Thu, 18 Apr 2024 16:57:00 +0100
From: Conor Dooley <conor@kernel.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: correct the model name
 for Radxa ROCK 3A
Message-ID: <20240418-skinless-aptitude-245665a7c757@spud>
References: <20240418130120.67663-1-amadeus@jmu.edu.cn>
 <d00953aab0f1c978e3720885a6844caa@manjaro.org>
 <20240418-drove-boasting-d189ee3e22e0@spud>
 <7fec3e2f4e16b1aca6cd08e1882bd885@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <7fec3e2f4e16b1aca6cd08e1882bd885@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_085705_779345_04E8AE69 
X-CRM114-Status: GOOD (  19.65  )
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
Content-Type: multipart/mixed; boundary="===============1193277689600005551=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1193277689600005551==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="e6Eqyn2mnOtnO6RB"
Content-Disposition: inline


--e6Eqyn2mnOtnO6RB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 18, 2024 at 05:46:30PM +0200, Dragan Simic wrote:
> Hello Conor,
>=20
> On 2024-04-18 17:37, Conor Dooley wrote:
> > On Thu, Apr 18, 2024 at 05:21:18PM +0200, Dragan Simic wrote:
> > > On 2024-04-18 15:01, Chukun Pan wrote:
> > > > According to https://radxa.com/products/rock3/3a,
> > > > the name of this board should be "Radxa ROCK 3A".
> > > > Also update compatible to match the model name.
> > > >
> > > > Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
> > > > Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> > >=20
> > > Looking good to me.  I'll send the remaining naming cleanup patches
> > > a bit later.
> >=20
> > What remaining patches?
>=20
> The same naming cleanups need to be performed for the Radxa
> ROCK 5 boards. [1]  I had some more cleanups for the ROCK 4
> boards in mind, but I'll drop them after your NAK. [2]
>=20
> Though, I'm not really sure why the NAK?  Those names aren't
> used anywhere, neither in the Linux kernel, nor in U-Boot.

There may well be other users outside of those two projects that are
actually looking at it - I don't think that adding a hyphen is worth
disrupting anyone for, it seems perfectly clear without it what board
this is.

--e6Eqyn2mnOtnO6RB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZiFCzAAKCRB4tDGHoIJi
0qZRAQDvp1WMjeZQ5UkpdXHldOb66YBev1YO2u1XU0t6ffUyzgEAkK6CFkop9QIu
mtkvqS5obGem7DzXQW/A9taovKtQTQw=
=VAgQ
-----END PGP SIGNATURE-----

--e6Eqyn2mnOtnO6RB--


--===============1193277689600005551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1193277689600005551==--

