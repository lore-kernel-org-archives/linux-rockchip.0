Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECAB1C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Apr 2022 08:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DA80TTvKS9EiqEf1ZdFaLvR3ehsrdjowRLhTv9BD+6Y=; b=gwqpVsOQv6kLde
	ZArDYrtN+UVrZGlZZxIcvY/Ojhp78Act8ZrL/LLn7cL8l8vOpamye8aRSFczD8lBCeUuWpX4I2VCB
	WCaz0tDg1GSDbabhuHHXc8Fdirllh1s3GYszk6CBUj2komFfMuQLp+r8ApUdfcbI9KF5vgvZ4i3Mu
	7KvMBQZl+DAfhfBYhwBY8PhnGsw+fgCzX4gB87bZTyb8cV+bgHV9H5EaCQzMm4gO8eifCvCYexEqN
	omlZGxR9yzL2zhKXcUlBHYekwIZkfy9jrs3A0+R+7gmUjG7Dfw7fpgAw/jyCC+DGn5EQg+gTg47B6
	KplQshGmEIZ6ARrsi8gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neubM-004U7N-Pd; Thu, 14 Apr 2022 08:13:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neubB-004U0v-Bm
 for linux-rockchip@lists.infradead.org; Thu, 14 Apr 2022 08:13:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neub8-0005xp-0N; Thu, 14 Apr 2022 10:13:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neub6-0002oL-38; Thu, 14 Apr 2022 10:13:00 +0200
Date: Thu, 14 Apr 2022 10:13:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alex Bee <knaerzche@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v10 12/24] drm/rockchip: dw_hdmi: drop mode_valid hook
Message-ID: <20220414081300.GI4012@pengutronix.de>
References: <20220408112238.1274817-1-s.hauer@pengutronix.de>
 <20220408112238.1274817-13-s.hauer@pengutronix.de>
 <8fac5d72-c635-521c-e7d1-a3980a4ed719@gmail.com>
 <20220411075357.GQ4012@pengutronix.de>
 <2b0f0eba-87fe-e2c4-d951-2b090b827ca6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2b0f0eba-87fe-e2c4-d951-2b090b827ca6@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:11:46 up 14 days, 20:41, 60 users,  load average: 0.48, 0.29, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_011305_436530_E8624D4F 
X-CRM114-Status: GOOD (  39.09  )
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

On Mon, Apr 11, 2022 at 07:00:51PM +0200, Alex Bee wrote:
> Am 11.04.22 um 09:53 schrieb Sascha Hauer:
> > On Sun, Apr 10, 2022 at 01:31:23PM +0200, Alex Bee wrote:
> >> Am 08.04.22 um 13:22 schrieb Sascha Hauer:
> >>> The driver checks if the pixel clock of the given mode matches an entry
> >>> in the mpll config table. The frequencies in the mpll table are meant as
> >>> a frequency range up to which the entry works, not as a frequency that
> >>> must match the pixel clock. The downstream Kernel also does not have
> >>> this check, so drop it to allow for more display resolutions.
> >>>
> >>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >>> ---
> >>>
> >> You're correct: That frequency is meant to be greater or equal. But I'm
> >> not sure if it makes sense to completely drop it - what happens for
> >> clocks rates > 600 MHz which might be supported by later generation
> >> sinks (HDMI 2.1 or later)?
> >> As these are not supported by the IPs/PHYs currently supported by that
> >> driver a reason a simple
> >>
> >>         int i;
> >>
> >>
> >>
> >>         for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
> >>
> >> -               if (pclk == mpll_cfg[i].mpixelclock) {
> >>
> >> +               if (pclk >= mpll_cfg[i].mpixelclock) {
> > 
> > Should be <=
> 
> Sure, sorry 'bout that.
> > 
> > No other user currently in the tree has this check.
> I dont't think that's true - it might not be checked against mpll table,
> but max pixelclocks are checked in meson_encoder_hdmi_mode_valid for
> amlogic, in sun8i_dw_hdmi_mode_valid_a83t and
> sun8i_dw_hdmi_mode_valid_h6 for allwinner and rcar_hdmi_mode_valid for
> rcar platform. There is no other point in rockchip dw-hdmi platform
> driver where this is currently checked.
> 
> > hdmi_phy_configure_dwc_hdmi_3d_tx() has this:
> > 
> >> 	/* PLL/MPLL Cfg - always match on final entry */
> >> 	for (; mpll_config->mpixelclock != ~0UL; mpll_config++)
> >> 		if (mpixelclock <= mpll_config->mpixelclock)
> >> 			break;
> >>
> >> 	for (; curr_ctrl->mpixelclock != ~0UL; curr_ctrl++)
> >> 		if (mpixelclock <= curr_ctrl->mpixelclock)
> >> 			break;
> >>
> >> 	for (; phy_config->mpixelclock != ~0UL; phy_config++)
> >> 		if (mpixelclock <= phy_config->mpixelclock)
> >> 			break;
> >>
> >> 	if (mpll_config->mpixelclock == ~0UL ||
> >> 	    curr_ctrl->mpixelclock == ~0UL ||
> >> 	    phy_config->mpixelclock == ~0UL)
> >> 		return -EINVAL;
> > 
> > This means we already have this check and others already in the generic
> > part of the dw-hdmi driver. Should we maybe do the above in
> > dw_hdmi_bridge_mode_valid() instead of doing it in the users?
> I guess that's not possible, due to the different kind of phys which are
> used for dw-hdmi. The checks you are refering to, are only done for dw
> hdmi tx phys, but not for "vendor phys" (like for RK3328 and RK3228, for
> example) - those have have own drivers which are handled only in dw-hdmi
> platform driver.
> Therefore this check should remain here for Rockchip also.

Ok, agreed. I'll keep the check for the next round and just replace
the == with <=.

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
