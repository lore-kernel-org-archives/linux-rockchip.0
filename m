Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 379B8C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 18:06:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C89E3610FF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 18:06:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C89E3610FF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q8hTrFK5edlE2HMUZq+WQHpOR0WEBNclX5QbgPYx1qE=; b=Hj38netTIxuy2V
	AUh1qE+Om76D8+LvWYrzj8dSSOXxJTyWhy0WoKWaWjyOy5DiL3E3DPSz1ThBo6/V2RJ0pIsZV6plb
	9TOckJg5wbemGscYWlkX9lNI40vdgJ8ISVD6e2SbCfgDtvmbyz2zRz2KHdpSmtoDYiwLaZqDJ03MZ
	t/RuVEMBxb5oxafshRp9VmHgnvB1etak7rVXG6Z498I3Bp5kyBcAepSSt6TUulWEfCeUJhrrQmL1n
	D3EMKnYCwDXlRFxkWJTLs26C5LWmCesnlzkkjRMEqCRrh/Iw4DKtg4CZ8KJ6GvxZhJpCJMTuSUDXa
	vLwSiYC6yslC419NUmuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mO1xS-007MZr-8e; Wed, 08 Sep 2021 18:06:02 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mO1xP-007MZW-KY
 for linux-rockchip@lists.infradead.org; Wed, 08 Sep 2021 18:06:01 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="200759710"
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="200759710"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 11:05:58 -0700
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="479275700"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 11:05:56 -0700
Received: from andy by smile with local (Exim 4.95-RC2)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1mO1xI-001KkT-RU; Wed, 08 Sep 2021 21:05:52 +0300
Date: Wed, 8 Sep 2021 21:05:52 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, airlied@linux.ie, heiko@sntech.de,
 hjc@rock-chips.com, zhangqing@rock-chips.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] drm/rockchip: Update crtc fixup to account for
 fractional clk change
Message-ID: <YTj7gE0CQ9ASeBVF@smile.fi.intel.com>
References: <20210908135356.18689-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210908135356.18689-1-macroalpha82@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_110559_741786_984B1346 
X-CRM114-Status: GOOD (  42.92  )
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

On Wed, Sep 08, 2021 at 08:53:56AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> After commit 928f9e268611 ("clk: fractional-divider: Hide
> clk_fractional_divider_ops from wide audience") was merged it appears
> that the DSI panel on my Odroid Go Advance stopped working. Upon closer
> examination of the problem, it looks like it was the fixup in the
> rockchip_drm_vop.c file was causing the issue. The changes made to the
> clk driver appear to change some assumptions made in the fixup.
> 
> After debugging the working 5.14 kernel and the no-longer working
> 5.15 kernel, it looks like this was broken all along but still
> worked, whereas after the fractional clock change it stopped
> working despite the issue (it went from sort-of broken to very broken).
> 
> In the 5.14 kernel the dclk_vopb_frac was being requested to be set to
> 17000999 on my board. The clock driver was taking the value of the
> parent clock and attempting to divide the requested value from it
> (17000000/17000999 = 0), then subtracting 1 from it (making it -1),
> and running it through fls_long to get 64. It would then subtract
> the value of fd->mwidth from it to get 48, and then bit shift
> 17000999 to the left by 48, coming up with a very large number of
> 7649082492112076800. This resulted in a numerator of 65535 and a
> denominator of 1 from the clk driver. The driver seemingly would
> try again and get a correct 1:1 value later, and then move on.
> 
> Output from my 5.14 kernel (with some printfs for good measure):
> [    2.830066] rockchip-drm display-subsystem: bound ff460000.vop (ops vop_component_ops)
> [    2.839431] rockchip-drm display-subsystem: bound ff450000.dsi (ops dw_mipi_dsi_rockchip_ops)
> [    2.855980] Clock is dclk_vopb_frac
> [    2.856004] Scale 64, Rate 7649082492112076800, Oldrate 17000999, Parent Rate 17000000, Best Numerator 65535, Best Denominator 1, fd->mwidth 16
> [    2.903529] Clock is dclk_vopb_frac
> [    2.903556] Scale 0, Rate 17000000, Oldrate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1, fd->mwidth 16
> [    2.903579] Clock is dclk_vopb_frac
> [    2.903583] Scale 0, Rate 17000000, Oldrate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1, fd->mwidth 16
> 
> Contrast this with 5.15 after the clk change where the rate of 17000999
> was getting passed and resulted in numerators/denomiators of 17001/
> 17000.
> 
> Output from my 5.15 kernel (with some printfs added for good measure):
> [    2.817571] rockchip-drm display-subsystem: bound ff460000.vop (ops vop_component_ops)
> [    2.826975] rockchip-drm display-subsystem: bound ff450000.dsi (ops dw_mipi_dsi_rockchip_ops)
> [    2.843430] Rate 17000999, Parent Rate 17000000, Best Numerator 17018, Best Denominator 17017
> [    2.891073] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
> [    2.891269] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
> [    2.891281] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
> 
> After tracing through the code it appeared that this function here was
> adding a 999 to the requested frequency because of how the clk driver
> was rounding/accepting those frequencies. I believe after the changes
> made in the commit listed above the assumptions listed in this driver
> are no longer true. When I remove the + 999 from the driver the DSI
> panel begins to work again.
> 
> Output from my 5.15 kernel with 999 removed (printfs added):
> [    2.852054] rockchip-drm display-subsystem: bound ff460000.vop (ops vop_component_ops)
> [    2.864483] rockchip-drm display-subsystem: bound ff450000.dsi (ops dw_mipi_dsi_rockchip_ops)
> [    2.880869] Clock is dclk_vopb_frac
> [    2.880892] Rate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1
> [    2.928521] Clock is dclk_vopb_frac
> [    2.928551] Rate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1
> [    2.928570] Clock is dclk_vopb_frac
> [    2.928574] Rate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1
> 
> I have tested the change extensively on my Odroid Go Advance (Rockchip
> RK3326) and it appears to work well. However, this change will affect
> all Rockchip SoCs that use this driver so I believe further testing
> is warranted. Please note that without this change I can confirm
> at least all PX30s with DSI panels will stop working with the 5.15
> kernel.

To me it all makes a lot of sense, thank you for deep analysis of the issue!
In any case I think we will need a Fixes tag to something (either one of
clk-fractional-divider.c series or preexisted).

Anyway, FWIW,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 21 +++------------------
>  1 file changed, 3 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index ba9e14da41b4..bfef4f52dce6 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -1169,31 +1169,16 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
>  	 *
>  	 * - DRM works in in kHz.
>  	 * - Clock framework works in Hz.
> -	 * - Rockchip's clock driver picks the clock rate that is the
> -	 *   same _OR LOWER_ than the one requested.
>  	 *
>  	 * Action plan:
>  	 *
> -	 * 1. When DRM gives us a mode, we should add 999 Hz to it.  That way
> -	 *    if the clock we need is 60000001 Hz (~60 MHz) and DRM tells us to
> -	 *    make 60000 kHz then the clock framework will actually give us
> -	 *    the right clock.
> -	 *
> -	 *    NOTE: if the PLL (maybe through a divider) could actually make
> -	 *    a clock rate 999 Hz higher instead of the one we want then this
> -	 *    could be a problem.  Unfortunately there's not much we can do
> -	 *    since it's baked into DRM to use kHz.  It shouldn't matter in
> -	 *    practice since Rockchip PLLs are controlled by tables and
> -	 *    even if there is a divider in the middle I wouldn't expect PLL
> -	 *    rates in the table that are just a few kHz different.
> -	 *
> -	 * 2. Get the clock framework to round the rate for us to tell us
> +	 * 1. Get the clock framework to round the rate for us to tell us
>  	 *    what it will actually make.
>  	 *
> -	 * 3. Store the rounded up rate so that we don't need to worry about
> +	 * 2. Store the rounded up rate so that we don't need to worry about
>  	 *    this in the actual clk_set_rate().
>  	 */
> -	rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
> +	rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000);
>  	adjusted_mode->clock = DIV_ROUND_UP(rate, 1000);
>  
>  	return true;
> -- 
> 2.25.1
> 

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
