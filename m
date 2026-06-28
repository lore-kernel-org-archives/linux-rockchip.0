Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04DCFC43458
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jun 2026 19:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ELUSkyyRSzErH2qqZQUd4GFyUcAcIsSseW5tguaGtAM=; b=AR3Pv99Pfs0kspl7Sx7ML99ro6
	/fLpmTOFKCSSEwZiQFheWUIWPLP8mKthLOG/jWWnrv0W4T+mvD579b8GpbOW2x1vSX+74qUq0ZHHF
	3QY0J4Rd9WdoYf8ZemcuUuUGGsGLavs84oAnXJv5OS/5+B5fVdbMU055QRp9GpC3ZCS+4nUmRvLYL
	v6JtbZGNzjwPi4VwOXAMytth8Xu/MdZK5FVZkb0fw6z4MPb0TQairLonKjSnOpjgzCtz0oMGpmAr3
	aEJZ8X98EoAmhaqx7EtseKqlBEWunrEu180zPerKRl2Dej0mILAS08ah+KeAaXUvgp6B/cj6os7yx
	u2Gc0Ylw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdv2e-0000000DJf9-28rH;
	Sun, 28 Jun 2026 19:19:44 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdv2d-0000000DJeo-0BO9;
	Sun, 28 Jun 2026 19:19:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 599E640B4C;
	Sun, 28 Jun 2026 19:19:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 712A81F000E9;
	Sun, 28 Jun 2026 19:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782674382;
	bh=4HtBsgoo1pkoyz9U7bxXdbavwf4UmaCm5JaH3qpl05w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QaFpI/4sCso+xnOrHQuqjFzj/MK2wIM0gjspGR22goiAf1aEaBymN5YvtdztwMWsP
	 X8DuFWyQZEDYuHuv7X0jAoch3aoG8PslcRnQx1WKz5TORoHyjqwzUbAy3wGo5BXY+6
	 9JTq6kgkgjPx4QgVyidS/1r2HHBSRl72yjFAS5u/QbdCVNL2LAHGDH/5hNpKtmUuDC
	 wMuo/iXA78vNKz66xObpa8OjYJkxYO1mAef6yI+o/zfdvBWb7dwkzWlRDFTgy/c2KO
	 U/W//yVJHGLW0RmDcgF0QjYORG9izEUf04rYzEPd8xIjs9gPUuQOFe7lvuMMNNoltv
	 a97t65VOO/CYA==
Date: Sun, 28 Jun 2026 20:19:37 +0100
From: Conor Dooley <conor@kernel.org>
To: Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Message-ID: <20260628-retinal-ungreased-4c6d45e3596a@spud>
References: <20260627102633.86222-1-hrushirajg23@gmail.com>
 <20260627102633.86222-2-hrushirajg23@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260627102633.86222-2-hrushirajg23@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1968699072635511508=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1968699072635511508==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g0JoW9tTpk32mUpy"
Content-Disposition: inline

--g0JoW9tTpk32mUpy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--g0JoW9tTpk32mUpy
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakFzyAAKCRB4tDGHoIJi
0l9bAQCTqBDKp1DNzljiIyEyzuzlDZi8AwRwZlgHSHmC225+qgD+INSm2SlDd3W1
wMikkhDKqyY6H+ca0h44jK5+HqnxOAk=
=YnMO
-----END PGP SIGNATURE-----

--g0JoW9tTpk32mUpy--


--===============1968699072635511508==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1968699072635511508==--

