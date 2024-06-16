Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD74AC27C77
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jun 2024 08:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uf/yJ3S467mCdgwKdEVpm2jNkEeFkBFkFmc9PeRsQVM=; b=EOTL1m2GWi8AgQERZfn2PlL0qk
	QzuN0FA4gRDRFZx1XULV05TotbkT1Agef2bCdG4BDOGZrTVsVKoY92Oh+/1/0FY7lUmet3zEsABrI
	aR60d9/HTbMV71I81VlC/kH+QuNakbT664DS5HGfKGNx7pDhLEy/NDM34cDx3xtNTQzPdE+oQCPyT
	2pBOIgHRiixMom0d913oUYWjp6ZyGRnnAdbe1hRnFMWV+ZU11SFq/CHrIVAdOGYGFn8sEpEL0n1qX
	AaEIIhAGT7lFHIpN6bu7thxqSjeMjodwZ+6SwSL9aV7M2cTmeqtn9gbY3qz6DSCBxXGGWCxBDQ6yS
	SPENmd2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIlR9-00000007AbD-3m4b;
	Sun, 16 Jun 2024 08:40:31 +0000
Received: from out-170.mta1.migadu.com ([95.215.58.170])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIlR6-00000007AZj-39pc
	for linux-rockchip@lists.infradead.org;
	Sun, 16 Jun 2024 08:40:30 +0000
X-Envelope-To: linux-kernel@vger.kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1718527225;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mNi+PH5RLD8itRn2E7pfwYYjUwdKdnKZfifQMNUnJqs=;
	b=YXkojlq5by40U31tFBjqxq/nApInlzg7NQ9Z4bKdJ6DN1iO80ZMTh2XQYaBljkldMgRgrk
	GDuQjOAZSvwcKokqN403t3N5OT8XVLIX9QEK81TLScI0o4oJYO2HOdc5uU29BZ2vTyIxrB
	qrwo4fJE0djRRUnIS/zKPJUZty6/DqlPOYKWr+6O9XMOg/j2jbbnwuA5hFA/1+q3YS/Pks
	bUIaupqS3tLMymFwoIOa3cCzjwuxE06SZIeCqURbyNcyeVLunDDYYLr+WNEfAYyuO8Jesp
	M9u87B2dPbjTJW/PO8MjPxHo5Da/GQCg3Rs5pjAZMTutPJchGM3a8pnO5ehltw==
X-Envelope-To: detlev.casanova@collabora.com
X-Envelope-To: mchehab@kernel.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: heiko@sntech.de
X-Envelope-To: gregkh@linuxfoundation.org
X-Envelope-To: sebastian.reichel@collabora.com
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: alchark@gmail.com
X-Envelope-To: cristian.ciocaltea@collabora.com
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: linux-media@vger.kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-staging@lists.linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Sun, 16 Jun 2024 10:40:13 +0200
Message-ID: <5087685.q4sLEYJVHI@bagend>
Organization: Connecting Knowledge
In-Reply-To: <5969581.LvFx2qVVIh@arisu>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <3333233.eAoTOS8U2s@bagend> <5969581.LvFx2qVVIh@arisu>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_014029_145471_9CCCB2A5 
X-CRM114-Status: GOOD (  16.75  )
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
Content-Type: multipart/mixed; boundary="===============5597168770251316319=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5597168770251316319==
Content-Type: multipart/signed; boundary="nextPart1990021.sKJYiLvgGz";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart1990021.sKJYiLvgGz
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Sun, 16 Jun 2024 10:40:13 +0200
Message-ID: <5087685.q4sLEYJVHI@bagend>
Organization: Connecting Knowledge
In-Reply-To: <5969581.LvFx2qVVIh@arisu>
MIME-Version: 1.0

On Saturday, 15 June 2024 21:44:32 CEST Detlev Casanova wrote:
> > So is this just an (unfortunate) use of the same words or is that wiki
> > page just wrong ... or better yet: does rkvdec2 support RK356x too?
> 
> Yes, the vdpu34x decoder on rk356x socs should be supported by this driver
> but I don't have boards to test that unfortunately.
> 
> This might also be used on future rockchip releases like the rk3576. But
> they all have their own adaptations. If you can test it on rk3568 based
> hardware, I'll happily add a compatible for it.

It would be great if you'd add a compatible for it.
I don't have rk3568 based HW, but I do have rk3566 based HW and AFAIK those 
are the same when it comes to the 'video' stuff.
--nextPart1990021.sKJYiLvgGz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZm6k7QAKCRDXblvOeH7b
blJqAP92iJCMOhayMHvD+XK8tlKapsot0g/Sv96s1CPReip9CgD8DvR1XoZ6FF1z
JeqgYTTZPYzljJdmx1CrAs8vEW6LKwI=
=aEUC
-----END PGP SIGNATURE-----

--nextPart1990021.sKJYiLvgGz--





--===============5597168770251316319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5597168770251316319==--




