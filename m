Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EECDEC28D13
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Aug 2022 11:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tur9GUp9FgKmw7m8JmmDSRQGxt9AWa1mlbMWZ7LLJxA=; b=KqKfyO/nzkmtun
	+ybjt6wcG1JLF5i7HfNRs0Pi6TNvJkJY8/Tj4EV+O9nF88R8H/LiMHpTc0ZQz+edTil1bkPA3+A/G
	V2wLqxAdWG/kpR+d38tBFK2+CVXPezce28iheeEkDBQE9IvmY4127wBHzkfV74+g0aEZQPSD5duQ4
	SZKGl3GywAavsFqUmYjcrEJf4bG70f75pdp8ZlFJRNSBjZ+jYDSGXZs2KMweTPPGdsP93liOT85U2
	8rc3VD36zIEFkXqs66s76P15qKNhFCV/m1IZ4C2Fa8jVxftDu0VXN30jhwRKdNqw9Xo1S9NRPeTED
	FSKaYa+dNsA+F4XsHeXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRBDy-00Coix-EL; Thu, 25 Aug 2022 11:40:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRBDv-00CoQj-NY
	for linux-rockchip@lists.infradead.org; Thu, 25 Aug 2022 11:40:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oRBDn-00051w-PA; Thu, 25 Aug 2022 13:40:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oRBDl-0007yp-RE; Thu, 25 Aug 2022 13:40:25 +0200
Date: Thu, 25 Aug 2022 13:40:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Murphy <robin.murphy@arm.com>
Cc: dri-devel@lists.freedesktop.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sandy Huang <hjc@rock-chips.com>, kernel@pengutronix.de,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] drm/rockchip: dw_hdmi: relax mode_valid hook
Message-ID: <20220825114025.GR17485@pengutronix.de>
References: <20220822152017.1523679-1-s.hauer@pengutronix.de>
 <20220822152017.1523679-2-s.hauer@pengutronix.de>
 <a279a697-6960-c517-8984-335aa207126a@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a279a697-6960-c517-8984-335aa207126a@arm.com>
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
X-CRM114-CacheID: sfid-20220825_044035_785872_6D1EDE3A 
X-CRM114-Status: GOOD (  27.80  )
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

On Wed, Aug 24, 2022 at 05:07:50PM +0100, Robin Murphy wrote:
> On 2022-08-22 16:20, Sascha Hauer wrote:
> > The driver checks if the pixel clock of the given mode matches an entry
> > in the mpll config table. The frequencies in the mpll table are meant as
> > a frequency range up to which the entry works, not as a frequency that
> > must match the pixel clock. Return MODE_OK when the pixelclock is
> > smaller than one of the mpll frequencies to allow for more display
> > resolutions.
> 
> Has the issue been fixed that this table is also used to validate modes on
> RK3328, which doesn't even *have* the Synopsys phy? Last time I looked, that
> tended to lead to complete display breakage when the proper phy driver later
> decides it doesn't like a pixel clock that mode_valid already said was OK.
> 
> The more general concern is that these known-good clock rates are good, but
> others may not be even when nominally supported, which I suspect is the
> dirty secret of why it was implemented this way to begin with. I would
> really really love this patch so my RK3399 board can drive my 1920x1200
> monitor at native resolution, but on the other hand my RK3288 box generates
> such a crap 154MHz clock for that mode that - unless that's been improved in
> the meantime too - patch #2 might be almost be considered a regression if it
> means such a setup would start defaulting to an unusably glitchy display
> instead of falling back to 1920x1080 which does at least work perfectly
> (even if the slightly squished aspect ratio is ugly).

I could limit the change to rk3568 only. Would that be an option?
Not sure if I should rk3399 as well then as this would work, at least in
your setup.

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
