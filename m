Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C9CDC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 19:46:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1DC661B64
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 19:46:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B1DC661B64
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGUVQ0vt1i0rrQnD3eyCeloPEabG8+icSOvML6httEc=; b=pZY0ipKbN/9U/G
	cwli7dB0cyx1+zVzVSFdjcv9ZDeYFKp+CFhuq6RejQxC0R8ZbgGG3r6TH57GGtwe5hQc7VQeYpI5Y
	yDk1VmebEsev2c/pL84ZnnLcrhK4NXxaGG/Y9EbuA6Xv7/aRV+fESmBi2bG2zyaV8v/TS9ELrnk/F
	hdoINfusqRJHCUi75AEUNsg8SeywKWHuG/H9o1NDyIfGhIUE0+nnpuhJNJcYhHSV5TZlD0A4Rf+Ei
	rLUns1bMNKI88ox8Bk4mJ+b6or7DMeqmHnbDWSmVZkMi4ksQIqK5HkH/eoq92O+n2yN59lffgfOfr
	wX4MBDLytTYap2BIn3zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnQsW-006Bc9-RU; Wed, 17 Nov 2021 19:45:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnQsT-006Bb6-Hb
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 19:45:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnQsQ-0002ub-VJ; Wed, 17 Nov 2021 20:45:50 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnQsN-0002t0-Lm; Wed, 17 Nov 2021 20:45:47 +0100
Date: Wed, 17 Nov 2021 20:45:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 12/12] drm: rockchip: Add VOP2 driver
Message-ID: <20211117194547.GN6556@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-13-s.hauer@pengutronix.de>
 <7182753.rMVL1d3Icj@archbook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7182753.rMVL1d3Icj@archbook>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 20:43:02 up 272 days, 23:06, 125 users,  load average: 0.13, 0.21,
 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_114553_609372_8DF5EC24 
X-CRM114-Status: GOOD (  33.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, Nov 17, 2021 at 07:05:33PM +0100, Nicolas Frattaroli wrote:
> On Mittwoch, 17. November 2021 15:33:47 CET Sascha Hauer wrote:
> > The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> > It replaces the VOP unit found in the older Rockchip SoCs.
> > 
> > This driver has been derived from the downstream Rockchip Kernel and
> > heavily modified:
> > 
> > - All nonstandard DRM properties have been removed
> > - dropped struct vop2_plane_state and pass around less data between
> >   functions
> > - Dropped all DRM_FORMAT_* not known on upstream
> > - rework register access to get rid of excessively used macros
> > 
> > The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> > board. Overlay support is tested with the modetest utility. AFBC support
> > is still present in the driver, but currently untested due to the lack
> > of suitable image sources. Also the driver has been tested with weston
> > using pixman and (yet to be upstreamed) panfrost driver support.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> 
> Hi Sascha,
> 
> thank you very much for your work on this! I gave it a try tonight,
> and unfortunately it appears to currently always attempt to use
> 1920x1080p60 as the mode regardless of the monitor. For example,
> on an old 720p monitor I had laying around:
> 
> 	[  225.732342] rockchip-drm display-subsystem: [drm] Update mode to 1920x1080p60, type: 11 for vp0, output 0x00000800  HDMI0
> 
> This results in a broken picture (all white with occasional glitches).
> Somebody else observed the same behaviour on a 1440p monitor.

Unfortunately all my monitors I have here have exactly 1920x1080p60, so
I didn't notice. Anyway, when I try another mode like 1280x1024 which
should be supported as well then my monitor responds with "out of
range", so something is indeed fishy here.

I'll have a look into it.

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
