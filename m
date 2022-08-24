Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAB08C00140
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 07:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QyAHAw96tuAYrntpDBm7XLKDU+EfV5fUTfQBXoA9GYg=; b=xk3zSebqK9+Ed1
	w03ocRQ2CeMr8zOQTWicfgEIMlU1Lc2xN/FpZbJsyaiyo0SbB9AUxBhZihttgYc9Z9xSexF7klNL1
	sfBjaRUbAcc6ijWLL6JFu1PtQiSnGPCFaNFeWKOY37PPkg0zRpz+ahiEOQMNoGD/kBeLzv09423H7
	144DTs7uR+HETH2xYeXpUY5G9fp11LxcDC9J8+qcyPcYLwIMUgEYx+FdphzvUH9KR1s84Ce0gOH71
	OXYan3wcNx7e9KJTkxofWZQPEtWbnPYXBbJvvpB/QYO5R1eUsgod5nTBfqb2JR5UGh9iWOrg+x4iV
	5LnbjcSasqdI977ylexw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQkX4-00B4mk-Aj; Wed, 24 Aug 2022 07:10:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQkX1-00B4jl-2f
	for linux-rockchip@lists.infradead.org; Wed, 24 Aug 2022 07:10:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oQkWt-0001pu-7m; Wed, 24 Aug 2022 09:10:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oQkWs-0007nA-I0; Wed, 24 Aug 2022 09:10:22 +0200
Date: Wed, 24 Aug 2022 09:10:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
	kernel@pengutronix.de,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 0/2] drm/rockchip: dw_hdmi: Add 4k@30 support
Message-ID: <20220824071022.GP17485@pengutronix.de>
References: <20220822152017.1523679-1-s.hauer@pengutronix.de>
 <ef70b8b7-c1ff-a6b9-077b-83ea48c66c24@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ef70b8b7-c1ff-a6b9-077b-83ea48c66c24@wolfvision.net>
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
X-CRM114-CacheID: sfid-20220824_001031_137352_BE842704 
X-CRM114-Status: GOOD (  21.34  )
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

On Wed, Aug 24, 2022 at 07:43:03AM +0200, Michael Riesch wrote:
> Hi Sascha,
> 
> Can you Cc: linux-rockchip list to get more feedback?

Yes, will do that next time.

> 
> On 8/22/22 17:20, Sascha Hauer wrote:
> > This series adds support for 4k@30 to the rockchip HDMI controller. This
> > has been tested on a rk3568 rock3a board. It should be possible to add
> > 4k@60 support the same way, but it doesn't work for me, so let's add
> > 4k@30 as a first step.
> > 
> > Sascha
> > 
> > Sascha Hauer (2):
> >   drm/rockchip: dw_hdmi: relax mode_valid hook
> >   drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
> 
> Great stuff, thanks!
> 
> On a Radxa ROCK3 Model A with a HP 27f 4k monitor
> 
> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

Thanks

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
