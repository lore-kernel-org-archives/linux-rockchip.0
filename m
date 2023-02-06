Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E3B5C636D4
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Feb 2023 16:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4krdTrQw1Wrcler//sKqTEeHP2mVwPsrXufb3UaUvZ4=; b=mLcLSUvntiNyb8
	E2uGZNOjDRam0U7PE0Hkb1qP9GMzmHFsBgIaMGgP44Be3sh8Ppp9MX9uK+ArEQSu+n0MhW/0At2xK
	A4vxRzo5mfRWZNratsPEZC2meDKsQFVT6OAa1U4CJSRmMlUo8MVkWVzoHMBB4/weExH9eLxufHaD7
	5uoS9lEfBoKGcdcJVNi0i+JSZG45tPsCjbrROGvixqqsHSX7RpCQ2cTSe8MO4biN9Q8wyl2xvflEc
	KmNc/IkoTb0WcYTUeA4EzbOjq1KCFVVYkzHUulMsrwgFH31i6FALANXw3E0+hUxlvhOsHOM3kuflz
	30epwX6Vc/GoGm8HQ1Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP46T-009EFS-KE; Mon, 06 Feb 2023 16:12:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP3k2-0093NQ-7O
	for linux-rockchip@lists.infradead.org; Mon, 06 Feb 2023 15:49:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pP3js-00012d-K6; Mon, 06 Feb 2023 16:49:04 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pP3jf-0007Ia-HV; Mon, 06 Feb 2023 16:48:51 +0100
Date: Mon, 6 Feb 2023 16:48:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
	Dan Johansen <strit@manjaro.org>, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v3 0/3] drm/rockchip: dw_hdmi: Add 4k@30 support
Message-ID: <20230206154851.GD10447@pengutronix.de>
References: <20230118132213.2911418-1-s.hauer@pengutronix.de>
 <20230131080928.GG23347@pengutronix.de>
 <3C4B67628F8D73D6+63ea74ac-b8a2-45b1-5f92-8c7868906687@radxa.com>
 <20230206140448.GB10447@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206140448.GB10447@pengutronix.de>
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
X-CRM114-CacheID: sfid-20230206_074914_334327_CB5EC49B 
X-CRM114-Status: GOOD (  32.82  )
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

On Mon, Feb 06, 2023 at 03:04:48PM +0100, Sascha Hauer wrote:
> On Wed, Feb 01, 2023 at 09:23:56AM +0900, FUKAUMI Naoki wrote:
> > hi,
> > 
> > I'm trying this patch series with 6.1.x kernel. it works fine on rk356x
> > based boards (ROCK 3), but it has a problem on rk3399 boards (ROCK 4).
> > 
> > on rk3399 with this patch, I can see large noise area (about one third right
> > side of the screen) at 4k@30. 1080p works fine as same as before.
> > 
> > can someone reproduce this problem on rk3399?
> 
> Ok, I could easily reproduce the problem here.
> 
> The RK3399 has two VOPs, vopb(ig) and vopl(ittle). Only the former can
> do 4k@30 while the latter can only do 1080p. Unfortunately vopl is used
> by default. We can force using vopb by disabling vopl in the device tree
> and get a good 4k@30 picture then. The other possibility I found is to
> use the other CRTC with modetest. I have no idea how we could set the
> default to vopb.
> 
> I guess a first step would be to limit the maximum resolution of vopl
> to what the hardware can do. We would likely end up with 1080p by
> default then for the applications.

I did that, but the result is not what I expected. Discarding a mode in
the connector means it won't show up in the connectors list of modes.
Discarding it in the CRTC though means the mode is still exposed by the
connector, but actually trying to use it then fails.

This means when discarding the mode in the CRTC the screen stays black.

I am not sure where I should go from here.

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
