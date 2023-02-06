Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72964C05027
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Feb 2023 14:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A+VpJxu/CCsyTUYb46YIrupQym+WbjlQXJiT6w+ToCE=; b=Qq7hppENtX5KLd
	wcf/Qb70CMYFU8mAmJS1+d6ggO6mr9sMwgC7rydeMaQNmxb0/Zx7l28+60HmUE2aD18NdIGVQNGgm
	C58ffw92fEcAjRDiHNUnaXnP3zkF85dGNF1u95UlSBewpYAEFy0TGiuw4JKFIn5wLYzH3wWmvaQL6
	9AyMQbyBz1Vv9XEKU3ISql6rINywAGTy1LUwN3iJIWs7gjxXbb3KQCmiyKqhdZaVdohEGjHiYL+Xu
	nhhYhfLg3uxAMi8dswwsN/RS1Rxh0tRnrSLTla16KMMp9xI87GEvt6j95xgEACMafE7a4g70XTItT
	YA1R9usqMJlz0BH0qBvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP27I-008iTX-Gv; Mon, 06 Feb 2023 14:05:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP27G-008iRr-38
	for linux-rockchip@lists.infradead.org; Mon, 06 Feb 2023 14:05:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pP275-0002Mb-7T; Mon, 06 Feb 2023 15:04:55 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pP26y-0001zb-QI; Mon, 06 Feb 2023 15:04:48 +0100
Date: Mon, 6 Feb 2023 15:04:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
	Dan Johansen <strit@manjaro.org>, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v3 0/3] drm/rockchip: dw_hdmi: Add 4k@30 support
Message-ID: <20230206140448.GB10447@pengutronix.de>
References: <20230118132213.2911418-1-s.hauer@pengutronix.de>
 <20230131080928.GG23347@pengutronix.de>
 <3C4B67628F8D73D6+63ea74ac-b8a2-45b1-5f92-8c7868906687@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3C4B67628F8D73D6+63ea74ac-b8a2-45b1-5f92-8c7868906687@radxa.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_060506_155764_99D69B84 
X-CRM114-Status: GOOD (  23.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Feb 01, 2023 at 09:23:56AM +0900, FUKAUMI Naoki wrote:
> hi,
> 
> I'm trying this patch series with 6.1.x kernel. it works fine on rk356x
> based boards (ROCK 3), but it has a problem on rk3399 boards (ROCK 4).
> 
> on rk3399 with this patch, I can see large noise area (about one third right
> side of the screen) at 4k@30. 1080p works fine as same as before.
> 
> can someone reproduce this problem on rk3399?

Ok, I could easily reproduce the problem here.

The RK3399 has two VOPs, vopb(ig) and vopl(ittle). Only the former can
do 4k@30 while the latter can only do 1080p. Unfortunately vopl is used
by default. We can force using vopb by disabling vopl in the device tree
and get a good 4k@30 picture then. The other possibility I found is to
use the other CRTC with modetest. I have no idea how we could set the
default to vopb.

I guess a first step would be to limit the maximum resolution of vopl
to what the hardware can do. We would likely end up with 1080p by
default then for the applications.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
