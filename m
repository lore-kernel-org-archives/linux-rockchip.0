Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB57BC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Mar 2022 14:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7yfUBQjhRjXPktsInDukySXHwqO/Avx/Ji94qDOo2w=; b=weKUKO32pZ+w3r
	gZRy+ta1ms2GHhmhZUhMy5eUbP7V5v6skEmHXjjBScCywHBLpa8pD7tfoLigeeN3ERc6KHd5xCVPm
	zdOHNo7u8JVVT7tIU1+mwQ03CvEclFk9cPiJ0ATGC9vk09V9DC2A+AiHqkV15+hysJBrsqrkmVSCu
	V/4kQf8obnYJHlUJ/3H/BbG607IwP3rpnDCLehdpyjtXGQUz6CBa/SsGK/+nOwkGbg+elU+X2NQOA
	KqntoLqnw5I7sS0LgE3AkzKnvTmYbCbnQmtY1PLGdGrXmY2TbAZxW5GyFuy3Hhm0/Z0oKhU1LCgne
	FEv8m7HSV/o4pocv7ZrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUUgK-00DGwD-51; Wed, 16 Mar 2022 14:31:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUUgG-00DGuc-NW
 for linux-rockchip@lists.infradead.org; Wed, 16 Mar 2022 14:31:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nUUg7-0003gP-0G; Wed, 16 Mar 2022 15:31:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nUUg5-0000Uv-6F; Wed, 16 Mar 2022 15:31:05 +0100
Date: Wed, 16 Mar 2022 15:31:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 kernel@pengutronix.de, "elaine.zhang" <zhangqing@rock-chips.com>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Peter Geis <pgwipeout@gmail.com>, Andy Yan <andy.yan@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v8 09/24] drm/rockchip: dw_hdmi: Add support for niu clk
Message-ID: <20220316143105.GS405@pengutronix.de>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-10-s.hauer@pengutronix.de>
 <4712e128-8a14-e361-0819-911dc3453372@collabora.com>
 <20220314081834.GK405@pengutronix.de>
 <96e3682c-51ff-6af2-ca07-6ea1b952dd70@collabora.com>
 <20220316091253.GQ405@pengutronix.de>
 <4c04da9c-f9c9-7375-df1a-4661807549dd@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c04da9c-f9c9-7375-df1a-4661807549dd@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:27:04 up 95 days, 23:12, 91 users,  load average: 0.07, 0.10, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220316_073116_777579_0A51ACB7 
X-CRM114-Status: GOOD (  50.06  )
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

On Wed, Mar 16, 2022 at 04:01:49PM +0300, Dmitry Osipenko wrote:
> On 3/16/22 12:12, Sascha Hauer wrote:
> > On Mon, Mar 14, 2022 at 08:54:27PM +0300, Dmitry Osipenko wrote:
> >> On 3/14/22 11:18, Sascha Hauer wrote:
> >>> On Sun, Mar 13, 2022 at 12:07:56AM +0300, Dmitry Osipenko wrote:
> >>>> On 3/11/22 11:33, Sascha Hauer wrote:
> >>>>> The rk3568 HDMI has an additional clock that needs to be enabled for the
> >>>>> HDMI controller to work. This clock is not needed for the HDMI
> >>>>> controller itself, but to make the SoC internal bus logic work. From the
> >>>>> reference manual:
> >>>>>
> >>>>>> 2.8.6 NIU Clock gating reliance
> >>>>>>
> >>>>>> A part of niu clocks have a dependence on another niu clock in order to
> >>>>>> sharing the internal bus. When these clocks are in use, another niu
> >>>>>> clock must be opened, and cannot be gated.  These clocks and the special
> >>>>>> clock on which they are relied are as following:
> >>>>>>
> >>>>>> Clocks which have dependency     The clock which can not be gated
> >>>>>> -----------------------------------------------------------------
> >>>>>> ...
> >>>>>> pclk_vo_niu, hclk_vo_s_niu       hclk_vo_niu
> >>>>>> ...
> >>>>> The clock framework does not support turning on a clock whenever another
> >>>>> clock is turned on, so this patch adds support for the dependent clock
> >>>>> to the HDMI driver. We call it "NIU", which is for "Native Interface
> >>>>> Unit"
> >>>>
> >>>> This still doesn't make sense to me. You're saying that "pclk_vo_niu,
> >>>> hclk_vo_s_niu" depend on "hclk_vo_niu", but HDMI doesn't use pclk_vo, it
> >>>> uses pclk_hdmi.
> >>>
> >>> pclk_hdmi_host is a child clock of pclk_vo:
> >>>
> >>>      aclk_vo                  2        2        0   300000000          0     0  50000         Y
> >>>         aclk_hdcp             0        0        0   300000000          0     0  50000         N
> >>>         pclk_vo               2        3        0    75000000          0     0  50000         Y
> >>>            pclk_edp_ctrl      0        0        0    75000000          0     0  50000         N
> >>>            pclk_dsitx_1       0        0        0    75000000          0     0  50000         N
> >>>            pclk_dsitx_0       1        2        0    75000000          0     0  50000         Y
> >>>            pclk_hdmi_host     1        2        0    75000000          0     0  50000         Y
> >>>            pclk_hdcp          0        0        0    75000000          0     0  50000         N
> >>>         hclk_vo               2        5        0   150000000          0     0  50000         Y
> >>>            hclk_hdcp          0        0        0   150000000          0     0  50000         N
> >>>            hclk_vop           0        2        0   150000000          0     0  50000         N
> >>
> >> It was unclear that the pclk_hdmi is the child of pclk_vo by looking at
> >> the clk driver's code, thank you!
> >>
> >> Won't be better if the implicit clk dependency would be handled
> >> internally by the RK clk driver?
> > 
> > I have considered handling something like coupled clocks in the clock
> > framework, but I have not yet considered handling this internally in the
> > Rockchip clock driver.
> > 
> > I just had a quick look at the driver. While it sounds like an easy task
> > to enable gate A whenever gate B is enabled I haven't found a good way to
> > integrate that into the clk driver. It seems to me that it's not easier
> > to implement in the clk driver than it is to implement it in the clk
> > framework where it could be used by others as well.
> > 
> >> For example, by making the common gate
> >> shared/refcounted. Have you considered this variant? Then we won't need
> >> to change the DT bindings.
> > 
> > For the DT bindings it is just an additional clock. Should we have a
> > better way to handle that case in the future we could simply ignore the
> > additional clock. I wouldn't bother too much about this.
> 
> To me that NIU quirk should be internal to the clk h/w module, so it
> doesn't feel nice to mix the clk h/w description with the HDMI h/w
> description.
> 
> On the other hand, making clk driver to handle this case indeed will
> take some effort as I see now. For example, clk driver of NVIDIA Tegra
> has concept of shared gates, but bringing it to the RK clk driver will
> be quite messy.
> 
> Alright, let's work around the clk limitation like you're suggesting. I
> agree that it shouldn't really be a problem to deprecate the extra clock
> later on.
> 
> I have last questions..
> 
> 1. Previously you said that the PD driver takes care of enabling all the
> clocks it can find in the device by itself on RPM-resume, then why HDMI
> driver needs to enable the clock explicitly?

The PD driver only does so when the device has pm_runtime enabled.
Currently that's not the case for the hdmi driver. That could be changed
of course, but I am not convinced that it's a good idea that the PD
driver messes with the consumers clocks. It would also make the PD
driver mandatory which it currently not is.

> 
> 2. You added clk_prepare_enable(), but there is no corresponding
> clk_disable_unprepare(), AFAICS. Why?

Because I missed it ;)

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
