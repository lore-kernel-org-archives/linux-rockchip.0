Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9171CC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 11:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXro1RQiOghY/6Csnns32OQgJ2sZKx0NeUXHIdfBZE0=; b=bCb8Jo7z/Oj766
	u1+nPZZ0I9C9pgKOnd7uqIZWorW6SqeFkSds+eBlxy9r01qrUTq/XOT22Eb4D+TBGj3L9NN3g3Bdb
	hQg/9oPKFkKSRWFH9RSed91woStHy3hHWZChc7dnOGvZuVezQoWQfHSUI9cfH/PEdJR3iIn9IaSkp
	pcmYW3iYNasUKgwDbTMGWaFsAaXXIXLl48vgwZzrR/27I57QWdZQq1GZsOGa149TCzDcefMZfR08I
	NOV8DQHeuAv9BSOasKC94FilDgWnaAWebuABim/txfkM4IpW6jXEvBt++In84MaO1m4x2o+rPESmm
	oGyOLa4kqe7IHaDQI7og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD2W5-00FH8V-I0; Thu, 27 Jan 2022 11:00:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD2Vl-00FH0x-IU
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 11:00:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nD2Vf-0001FG-CL; Thu, 27 Jan 2022 12:00:11 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nD2Vd-0005aU-8V; Thu, 27 Jan 2022 12:00:09 +0100
Date: Thu, 27 Jan 2022 12:00:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 linux-rockchip@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 27/27] drm: rockchip: Add VOP2 driver
Message-ID: <20220127110009.GK23490@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-28-s.hauer@pengutronix.de>
 <6588D77C-D3CB-4FB0-8B00-5EDD6ABD6923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6588D77C-D3CB-4FB0-8B00-5EDD6ABD6923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:50:02 up 47 days, 19:35, 82 users,  load average: 0.37, 0.46, 0.32
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_030017_657220_4AE13151 
X-CRM114-Status: GOOD (  21.83  )
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

On Thu, Jan 27, 2022 at 10:17:13AM +0100, Piotr Oniszczuk wrote:
> Sascha,
> 
> FYI 
> small report regarding 4k modes support in v4:
> 
> -on rk3399 it gives me 4k screen where right vertical 1/3 part of screen is garbage
> -on rk3566 my samsung 4k monitor has black screen and cycle of OSD msgs: HDMI2 connected; HDMI2 disconnected; ....

Same here on my rk3568, also with a samsung monitor. Was it 4k@60Hz or
4k@30Hz? If the former, could you give 4k@30Hz a try? That mode works
well here.

> 
> I would suggest split v4 into 2 separated series:

Yeah, splitting up the series makes sense. At the moment I have it all
in one series to ease others testing it.

Sascha

> 
> -VOP2 support
> -HDMI 4k modes support
> 
> BTW: getting well working 4k HDMI modes on rk3399 was real story for me.
> There is many different series of patches to address this - but all have some subtle issues for me (i.e. 4k HDMI modes works but i.e. Qt is failing with DRM atomic commits in EGLFS)
> I developed well working [1] giving me reliable 4k on rk3399 (including working Qt DRM drawing in EGLFS mode) 
> Maybe it will be somehow helpful to get 4k modes solution for rk3566 _and_ rk3399 (on single kernel binary)?
> 
> [1] https://github.com/warpme/minimyth2/blob/master/script/kernel/linux-5.16/files/0730-drm-rockchip-add-4k-videomodes-support.patch

At least there are patches in it that I have in my series as well and
keep popping up everywhere like "drm/rockchip: dw_hdmi: Use
auto-generated tables" and "drm/rockchip: dw_hdmi: Set cur_ctr to 0
always"

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
