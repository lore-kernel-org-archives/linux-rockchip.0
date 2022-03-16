Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 761D4C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Mar 2022 07:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOyQnK2+rBTp1TIsPP4wL6PacQEmRjoUkBz0iXkmfys=; b=EDOkDgjUjPt97c
	ZZrHVZ6B/+7w+s+Bded98qHx4QPXkxNcYGZdvOD8spxCZr+bF+5Fygonw1JdYO74Xg39HQip1s5zd
	2K8FlPHf+ImknqCpPXvh2N1E2p4iF5PsBhYqoyf175e6BRdonVcY4Fvz3eO0P+GbMXeSFCgAUpy2V
	HNUFywnuagL2IUNOp7lRN2PrY4xCO0A06rBbdF98co1MpoKquqxAP70Q3SScZhgW/73LwssRoAiqg
	Y4EGH1u2Nrj2dPlGTbRmLzwiOOau2v/nk4tVeWGZGFaaqpvQmdYPrSe8FTR7vj9pAvlxHy+FdyuoK
	WK28pHXSgVCIttnGCT2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUOGh-00ByeC-Ko; Wed, 16 Mar 2022 07:40:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUOGN-00ByWV-4o
 for linux-rockchip@lists.infradead.org; Wed, 16 Mar 2022 07:40:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nUOGJ-0003j1-OH; Wed, 16 Mar 2022 08:40:03 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nUOGH-0007Ye-1L; Wed, 16 Mar 2022 08:40:01 +0100
Date: Wed, 16 Mar 2022 08:40:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v8 22/24] drm: rockchip: Add VOP2 driver
Message-ID: <20220316074001.GP405@pengutronix.de>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-23-s.hauer@pengutronix.de>
 <9ec29d9b-8197-98fb-c612-5c842e4212c4@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9ec29d9b-8197-98fb-c612-5c842e4212c4@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:35:30 up 95 days, 16:21, 82 users,  load average: 0.45, 0.47, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_004007_205407_FF4CC873 
X-CRM114-Status: GOOD (  33.12  )
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

On Tue, Mar 15, 2022 at 02:46:35PM +0800, Andy Yan wrote:
> Hi Sascha:
> 
> On 3/11/22 16:33, Sascha Hauer wrote:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > 
> > The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> > It replaces the VOP unit found in the older Rockchip SoCs.
> > 
> > This driver has been derived from the downstream Rockchip Kernel and
> > heavily modified:
> > 
> > - All nonstandard DRM properties have been removed
> > - dropped struct vop2_plane_state and pass around less data between
> >    functions
> > - Dropped all DRM_FORMAT_* not known on upstream
> > - rework register access to get rid of excessively used macros
> > - Drop all waiting for framesyncs
> > 
> > The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> > board. Overlay support is tested with the modetest utility. AFBC support
> > on the cluster windows is tested with weston-simple-dmabuf-egl on
> > weston using the (yet to be upstreamed) panfrost driver support.
> 
> Do we need some modification to test AFBC by weston-simple-dma-egl ?

By default weston-simple-dma-egl uses DRM_FORMAT_XRGB8888 which in the
panfrost driver ends up as PIPE_FORMAT_B8G8R8_UNORM and
panfrost_afbc_format() returns PIPE_FORMAT_NONE for that. Change the
format to DRM_FORMAT_ABGR8888 using weston-simple-dma-egl -f 0x34324241.
This ends up as PIPE_FORMAT_R8G8B8A8_UNORM in panfrost_afbc_format()
which is a supported format.

> 
> I have a buildroot system with weston-10.0.9 and mesa 21.3.5.
> 
> After launch weston, I run weston-simple-dmabuf-egl, but from the output
> 
> of sys/kernel/debug/dri/0/state, the weston is still use Smart0-win0, which
> is
> 
> a non-AFBC window.
> 
> Do i need to modify the vop2 driver to set one Cluster window as primary
> plane?

I never used a Cluster window as primary plane.

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
