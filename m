Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3196FCD4F47
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 May 2026 16:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8E//p8Q+8m9ajp9aOi2TEbkX0vDaBM8JR0NkyMWsnw=; b=Rysf+r/FaxbGRV
	lp70dGIOqNkhxl9FPuzHLY5Tyb3VX67ER/ycMTJVhWkjonKs15KjPR2iiGLpsqLEiie9kPuMwPnZI
	JVkOFzClRsD88IPcN63PSs9FqwXjfJQiohlgFBxl6bXVKHTyeV+RxfO0lJS/Wk4y6DEvOfIrSxWDt
	//So5R4YOw4wd/Dva9R6skX9N1qnGTGotnMyHZ6uFi/NwuOlyNQcKctFQXysD39KBuaA9isfs0Zyf
	z0mmPhl/FefOVMA9lHcHzT4qd/aTID5Nim3yCsVRIgk2BZ85rn+gIw77H2QeKdHWLPhN5bFcxJ6/L
	h2SXlXAo4U+60Uxw2w0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOelR-0000000D3d4-0USO;
	Sun, 17 May 2026 16:54:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOelO-0000000D3bz-2IV0;
	Sun, 17 May 2026 16:54:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A4293416A7;
	Sun, 17 May 2026 16:54:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEE6BC2BCB0;
	Sun, 17 May 2026 16:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779036888;
	bh=rl8/+H7UrkvD6Wm6GXhI3VO843IjVdH5GorUML886+s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JsbuppPfeqHH826a2rLBZNT3CPj7ruSwlDcOIGBAMfxGU0LFwgx2/s+KvhkULmoY0
	 hyccBDN6SGggxgqY8GCkNqjMwJZ9va5Q1N3NBASYSJpnBtrjcSDOVo0RLgW9g78nIj
	 BJzZSnp4D1aNaNNENmFUit0Fd5u2FagM0CS2EtbQMWMD4wHj5d5byfx1QD7vP81eg4
	 EqNlosfLq58w3zL8FXfGeDAI5fM5ke012FrHi6w0loU111sRbhVyedtdPTt7wsNQiE
	 /ZXLzavaTaJsqsl+B48Wh43rpbgslHByU9QG5hF+V7LD5pixVnEOUwqpyyAZnylaw2
	 /OhcjcWFm6lhw==
Date: Sun, 17 May 2026 22:24:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] phy: rockchip: inno-hdmi: Add configure() and
 validate() ops
Message-ID: <agny1ER5j6om9hIT@vaman>
References: <20260515195512.1757363-1-jonas@kwiboo.se>
 <20260515195512.1757363-2-jonas@kwiboo.se>
 <d69b500b-0473-496d-b17e-c60ce9839e0c@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d69b500b-0473-496d-b17e-c60ce9839e0c@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_095450_628726_56C554FE 
X-CRM114-Status: GOOD (  27.14  )
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

On 15-05-26, 23:04, Jonas Karlman wrote:
> Hi,
> 
> On 5/15/2026 9:55 PM, Jonas Karlman wrote:
> > The commit 10ed34d6eaaf ("phy: Add HDMI configuration options")
> > introduced a way for HDMI PHYs to be configured through the generic
> > phy_configure() function.
> > 
> > This driver derives the TMDS character rate from the pixel clock and the
> > PHY bus width setting. However, no in-tree consumer of this PHY has ever
> > called phy_set_bus_width() to change the TMDS character rate as only
> > 8-bit RGB output is supported by the HDMI display driver.
> > 
> > Add configure() and validate() ops to allow consumers to configure the
> > TMDS character rate using phy_configure(). Fallback to the deprecated
> > way of using the PHY bus width to configure the TMDS character rate.
> > 
> > A typical call chain during DRM modeset on a RK3328 device:
> > 
> >   dw_hdmi_rockchip_encoder_atomic_check():
> >   - inno_hdmi_phy_validate(): pixclock 148500000 tmdsclock 594000000
> > 
> >   dw_hdmi_rockchip_encoder_atomic_mode_set():
> >   - inno_hdmi_phy_configure(): pixclock 148500000
> >     - inno_hdmi_phy_validate(): pixclock 148500000 tmdsclock 594000000
> > 
> >   vop_crtc_atomic_enable():
> >   - inno_hdmi_phy_rk3328_clk_set_rate(): rate 594000000 tmdsclk 594000000
> >   - inno_hdmi_phy_rk3328_clk_set_rate(): pixclock 594000000 tmdsclock 594000000
> >   - inno_hdmi_phy_rk3328_clk_recalc_rate(): pixclock 594000000 vco 594000000
> > 
> >   dw_hdmi_rockchip_encoder_enable():
> >   - inno_hdmi_phy_power_on(): Inno HDMI PHY Power On
> >   - inno_hdmi_phy_rk3328_clk_set_rate(): rate 594000000 tmdsclk 594000000
> > 
> > Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> > ---
> > Changes in v3:
> > - Change validate() ops to only validate tmdsclock
> > - Add comments about expected consumer usage
> > - Update commit message with a typical call chain
> > Changes in v2:
> > - Add validate() ops to validate that the TMDS rate is supported
> > - Split out parts that remove the old workaround into a separate patch
> > 
> > Patch "drm/rockchip: dw_hdmi: Configure HDMI PHY in atomic_mode_set()"
> > at [1] adds phy_validate() and phy_configure() calls for this HDMI PHY.
> > 
> > [1] https://lore.kernel.org/dri-devel/20260510183114.1248840-10-jonas@kwiboo.se/
> > ---
> >  drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 60 ++++++++++++++++++-
> >  1 file changed, 59 insertions(+), 1 deletion(-)
> 
> [snip]
> 
> > +static int inno_hdmi_phy_validate(struct phy *phy, enum phy_mode mode,
> > +				  int submode, union phy_configure_opts *opts)
> > +{
> > +	const struct pre_pll_config *cfg = pre_pll_cfg_table;
> > +	unsigned long tmdsclock;
> > +
> > +	if (!(mode == PHY_MODE_HDMI && submode == PHY_HDMI_MODE_TMDS))
> > +		return -EINVAL;
> > +
> > +	if (!opts->hdmi.tmds_char_rate || opts->hdmi.tmds_char_rate > 594000000)
> > +		return -EINVAL;
> 
> Sashiko reasoning log pointed out that a consumer of phy_validate() or
> phy_configure() can make a call with opts=NULL, so I may likely send a
> v4 of this series to fix such possible NULL pointer dereference here.

Yes please

> 
> Or is that something that possible should be checked before phy core
> calls the .validate()/.configure() ops?

The opts is an optional argument depending upon the mode to be valid. So
we cant do that in the core...

> 
> Multiple other phy .configure() ops seem to dereference opts members
> without any type of opts NULL check. (next-20260508)

We should fix these


PS: Any reason why you are sending encypted emails?

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
