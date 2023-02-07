Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DC8AC636CD
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Feb 2023 12:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VeTP4xRkJ++Mjj9z+TDjq/McwPQrumi/CmjLCITWM9Y=; b=uZKzbghwUzovON
	dZzx6S5cq+N/FKYG3dHrpW85zHbPRdOTegbNtK3EufCzy+8psbvUXE0lFgUXbWxJIt3T8/zPZ8T8v
	pZlNUA3RiGLf/TLd7hjWqsSS5FICLJHJ3WYm+4jVW37qlxYtSx7Tbp3zYG7Fv7z4zyVwxUYWT6dA4
	pluhCN0A4MXxI5F5cGb/Kppzv0rzlY4fvuAIULtxi5wSmgcUEPJ3gxDEGt3HdNkFI974pd93V2//W
	8dvIoj+DJoPMeY4kOfuhZW7MbPV3AkeWJ2xtIJ4659LFuZ5ragCa2tN0408pdz0qxpVjukXt371AZ
	0TjPvBxxLvmJMRrvn6xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPNRR-00C9qu-Na; Tue, 07 Feb 2023 12:51:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPNRL-00C9oY-QF
	for linux-rockchip@lists.infradead.org; Tue, 07 Feb 2023 12:51:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPNRG-0004jP-SF; Tue, 07 Feb 2023 13:51:10 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPNRD-000822-79; Tue, 07 Feb 2023 13:51:07 +0100
Date: Tue, 7 Feb 2023 13:51:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: dri-devel@lists.freedesktop.org, Dan Johansen <strit@manjaro.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v4 4/4] drm/rockchip: dw_hdmi: discard modes with
 unachievable pixelclocks
Message-ID: <20230207125107.GG10447@pengutronix.de>
References: <20230207084452.1069656-1-s.hauer@pengutronix.de>
 <20230207084452.1069656-5-s.hauer@pengutronix.de>
 <0bec1f06-9fad-60ad-19eb-3d54135031f7@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0bec1f06-9fad-60ad-19eb-3d54135031f7@kwiboo.se>
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
X-CRM114-CacheID: sfid-20230207_045115_864858_D26A9A3D 
X-CRM114-Status: GOOD (  29.59  )
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

On Tue, Feb 07, 2023 at 11:01:26AM +0000, Jonas Karlman wrote:
> Hi Sascha,
> 
> On 2023-02-07 09:44, Sascha Hauer wrote:
> > The Rockchip PLL drivers are currently table based and support only
> > the most common pixelclocks. Discard all modes we cannot achieve
> > at all. Normally the desired pixelclocks have an exact match in the
> > PLL driver, nevertheless allow for a 0.1% error just in case.
> > 
> > Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> > Tested-by: Dan Johansen <strit@manjaro.org>
> > Link: https://lore.kernel.org/r/20230118132213.2911418-4-s.hauer@pengutronix.de
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > index feba6b9becd6c..725952811752b 100644
> > --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > @@ -256,10 +256,14 @@ dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
> >  {
> >  	struct rockchip_hdmi *hdmi = data;
> >  	const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
> > -	int pclk = mode->clock * 1000;
> > +	int rpclk, pclk = mode->clock * 1000;
> >  	bool exact_match = hdmi->plat_data->phy_force_vendor;
> >  	int i;
> >  
> > +	rpclk = clk_round_rate(hdmi->ref_clk, pclk);
> > +	if (abs(rpclk - pclk) > pclk / 1000)
> > +		return MODE_NOCLOCK;
> 
> The ref_clk is optional and rk3228/rk3328 dts do not supply a ref or vpll clock.

That's a bit unfortunate as we can't do this check then on these SoCs.

The clock is likely actually there in the system and maybe even in the
clock driver, just not wired up to the HDMI. I don't know which one it
is though, so I am afraid there's not much I can do about it other than
just skipping the check when the clock is not there.

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
