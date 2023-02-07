Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E832AC636D4
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Feb 2023 09:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9Z+g/o49Tb3ubCgvc4R266wl7/zYZPWdMH97l+0bYU=; b=dtL6e2iksqaFJu
	DVZ3f+bYK9VsQNUzjyDDMVT7fn/ChmG74tbgvBv6O3r7094BIlgB5wogIlYB8rp0rBalhdBz2dOHO
	A9Eq93L1nEdb3xN9KprPqqoJ6Ix0k98slvhjJaEPTBd3HW/f17SUk/jf4T5knV93aKXW2LuPTI+/1
	slpiBmOXdfaR7mQ1rkR0F6fUDYH1zodN9csg5Cbxh0fUDqNBy5ze9yILtkM6kSF5siy4ei6GAfqhf
	OJBksUDq724n3huHjaVyxZ7EB9T02kNFho3pmlTD1EGmCK9jc2GfKbqPu4nNZLSIZQgerC9qDjvKo
	HC/WRZm3A05sbvXDz5pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPKSY-00BWYh-1P; Tue, 07 Feb 2023 09:40:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPKSV-00BWXm-2O
	for linux-rockchip@lists.infradead.org; Tue, 07 Feb 2023 09:40:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPKSR-0002q8-SK; Tue, 07 Feb 2023 10:40:11 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPKSP-0003tK-2n; Tue, 07 Feb 2023 10:40:09 +0100
Date: Tue, 7 Feb 2023 10:40:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Dan Johansen <strit@manjaro.org>
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, Robin Murphy <robin.murphy@arm.com>,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v4 1/4] drm/rockchip: vop: limit maximium resolution to
 hardware capabilities
Message-ID: <20230207094009.GE10447@pengutronix.de>
References: <20230207084452.1069656-1-s.hauer@pengutronix.de>
 <20230207084452.1069656-2-s.hauer@pengutronix.de>
 <33d2fe54-7d29-67da-f4c9-9ff084937f11@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33d2fe54-7d29-67da-f4c9-9ff084937f11@manjaro.org>
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
X-CRM114-CacheID: sfid-20230207_014015_131244_FB5982FD 
X-CRM114-Status: GOOD (  24.66  )
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

On Tue, Feb 07, 2023 at 10:16:57AM +0100, Dan Johansen wrote:
> 
> Den 07.02.2023 kl. 09.44 skrev Sascha Hauer:
> > The different VOP variants support different maximum resolutions. Reject
> > resolutions that are not supported by a specific variant.
> > 
> > This hasn't been a problem in the upstream driver so far as 1920x1080
> > has been the maximum resolution supported by the HDMI driver and that
> > resolution is supported by all VOP variants. Now with higher resolutions
> > supported in the HDMI driver we have to limit the resolutions to the
> > ones supported by the VOP.
> > 
> > The actual maximum resolutions are taken from the Rockchip downstream
> > Kernel.
> 
> So just so I understand it, this will allow only up to 1080p on rk3399 or
> will it change something that allows higher resolutions, but with lower
> clock/pixel rates?

This patch is not about bandwidth limitations, only limitations in the
maximum resolution.

The RK3399 has two VOPs, VOPB and VOPL. The latter can only do 1080p
whereas the former can do up to 4k@30. This patch limits the allowed
resolutions to what the VOP can do. So when your application chooses
VOPB you should see 4k@30 as long as your monitor supports it.

In my testing weston has chosen VOPB and thus shows 4k@30, but I can't
tell if it does so because weston is smart enough, or just happens to
default to the VOPB.

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
