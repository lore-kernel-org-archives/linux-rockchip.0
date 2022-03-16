Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45BC6C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Mar 2022 09:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3rWk+Fs0LVjzOVybjUOyxaK79QfOYVdt5o9Gg17BKbQ=; b=1YRt/g7HoIUZQr
	WACwur4/1+vqcLTIW7YBg+0sKunoGGgs7da22Q2tWAEswLlXy4wOFDz38ZUKxH4o1n49G0zYfZqTr
	GBJOkb0uZb+WEoOPBLQvLvsuZw1V92Klkz1xNuMRfAGfj+GjtO8q7YP+/WlHybUh4MzpztvIH5rQE
	9zk8wiEPaUrQ3C0VKkl9dCjo30E7GLKLFkm8o/tunPXgdnwU/Qv6kCcRGpuIERWcNJzqjj5YFOf1m
	OX1N/stx0TSFtjP4UTbf30LgyCM15EvRLKgkm1LTZ8G+V+TE1P85sIZ78xchB1zWc7fGbtz7lTQKd
	gjqno/iZYTQtTfTfeCaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUPia-00CHgl-Jl; Wed, 16 Mar 2022 09:13:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUPiP-00CHeN-Nf
 for linux-rockchip@lists.infradead.org; Wed, 16 Mar 2022 09:13:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nUPiC-0006To-24; Wed, 16 Mar 2022 10:12:56 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nUPi9-0005kX-PB; Wed, 16 Mar 2022 10:12:53 +0100
Date: Wed, 16 Mar 2022 10:12:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: "elaine.zhang" <zhangqing@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v8 09/24] drm/rockchip: dw_hdmi: Add support for niu clk
Message-ID: <20220316091253.GQ405@pengutronix.de>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-10-s.hauer@pengutronix.de>
 <4712e128-8a14-e361-0819-911dc3453372@collabora.com>
 <20220314081834.GK405@pengutronix.de>
 <96e3682c-51ff-6af2-ca07-6ea1b952dd70@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96e3682c-51ff-6af2-ca07-6ea1b952dd70@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:40:05 up 95 days, 16:25, 82 users,  load average: 0.18, 0.25, 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_021309_790903_6C24AD2F 
X-CRM114-Status: GOOD (  38.09  )
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

On Mon, Mar 14, 2022 at 08:54:27PM +0300, Dmitry Osipenko wrote:
> On 3/14/22 11:18, Sascha Hauer wrote:
> > On Sun, Mar 13, 2022 at 12:07:56AM +0300, Dmitry Osipenko wrote:
> >> On 3/11/22 11:33, Sascha Hauer wrote:
> >>> The rk3568 HDMI has an additional clock that needs to be enabled for the
> >>> HDMI controller to work. This clock is not needed for the HDMI
> >>> controller itself, but to make the SoC internal bus logic work. From the
> >>> reference manual:
> >>>
> >>>> 2.8.6 NIU Clock gating reliance
> >>>>
> >>>> A part of niu clocks have a dependence on another niu clock in order to
> >>>> sharing the internal bus. When these clocks are in use, another niu
> >>>> clock must be opened, and cannot be gated.  These clocks and the special
> >>>> clock on which they are relied are as following:
> >>>>
> >>>> Clocks which have dependency     The clock which can not be gated
> >>>> -----------------------------------------------------------------
> >>>> ...
> >>>> pclk_vo_niu, hclk_vo_s_niu       hclk_vo_niu
> >>>> ...
> >>> The clock framework does not support turning on a clock whenever another
> >>> clock is turned on, so this patch adds support for the dependent clock
> >>> to the HDMI driver. We call it "NIU", which is for "Native Interface
> >>> Unit"
> >>
> >> This still doesn't make sense to me. You're saying that "pclk_vo_niu,
> >> hclk_vo_s_niu" depend on "hclk_vo_niu", but HDMI doesn't use pclk_vo, it
> >> uses pclk_hdmi.
> > 
> > pclk_hdmi_host is a child clock of pclk_vo:
> > 
> >      aclk_vo                  2        2        0   300000000          0     0  50000         Y
> >         aclk_hdcp             0        0        0   300000000          0     0  50000         N
> >         pclk_vo               2        3        0    75000000          0     0  50000         Y
> >            pclk_edp_ctrl      0        0        0    75000000          0     0  50000         N
> >            pclk_dsitx_1       0        0        0    75000000          0     0  50000         N
> >            pclk_dsitx_0       1        2        0    75000000          0     0  50000         Y
> >            pclk_hdmi_host     1        2        0    75000000          0     0  50000         Y
> >            pclk_hdcp          0        0        0    75000000          0     0  50000         N
> >         hclk_vo               2        5        0   150000000          0     0  50000         Y
> >            hclk_hdcp          0        0        0   150000000          0     0  50000         N
> >            hclk_vop           0        2        0   150000000          0     0  50000         N
> 
> It was unclear that the pclk_hdmi is the child of pclk_vo by looking at
> the clk driver's code, thank you!
> 
> Won't be better if the implicit clk dependency would be handled
> internally by the RK clk driver?

I have considered handling something like coupled clocks in the clock
framework, but I have not yet considered handling this internally in the
Rockchip clock driver.

I just had a quick look at the driver. While it sounds like an easy task
to enable gate A whenever gate B is enabled I haven't found a good way to
integrate that into the clk driver. It seems to me that it's not easier
to implement in the clk driver than it is to implement it in the clk
framework where it could be used by others as well.

> For example, by making the common gate
> shared/refcounted. Have you considered this variant? Then we won't need
> to change the DT bindings.

For the DT bindings it is just an additional clock. Should we have a
better way to handle that case in the future we could simply ignore the
additional clock. I wouldn't bother too much about this.

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
