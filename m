Return-Path: <SRS0=vNfy=OA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.9 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1C43C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Sep 2021 22:03:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B499B611C3
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Sep 2021 22:03:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B499B611C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5j113fYCjOdzhRS/eEJNcHRAmbUEV6acXZu5cHG2u9c=; b=h+DQ6yH0c7UJXl
	yeteMhIfA5Cb25XRBpZ14R1Rmw3MtgsxQK4vVos4u3GNjmAa+9973mhRysQytZD2vK9S9BMcgUDzg
	V+sBCsFzNbql4tml9V7KXqvvKlVH962Aun5fqD8mCIeNggAnmq6YD21PSCPPZx1lub90deWa4tDUy
	IvlriJj/YHgX8bJvrqnEx2X8D/5YRc273/gXHQao4bsDEh9rJQDPk4WvNUBt+3RKMGVXEqO7e5h52
	PVm13NOuvLWJa+EvpfE1aUssyxDBKvEnHxzLJHZt+oQ0s/FPURhAk31Bzyj1HHqxe+PIXS2nS0s1A
	PMvNA4ZiGuKk9NqHq/NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOocY-00DvF1-RI; Fri, 10 Sep 2021 22:03:42 +0000
Received: from mail-bn8nam11olkn2034.outbound.protection.outlook.com
 ([40.92.20.34] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOocV-00DvDz-RB
 for linux-rockchip@lists.infradead.org; Fri, 10 Sep 2021 22:03:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YFUlhHtoKLS4RMy+EGdByatRzdvXKSy7ajhBkO61uXu+gLdnFw/sIJM/GtqubsgCodb0UOKh3eo8ZxbXkhZSeqYKekgGx8cx5bCxPM3n68UXAod5t/GZpd1EzQWGPbYtLjuY1uzUHHv9dgEw65offJUV2+uD90B00KGKSccDpEXK5nMDcRuyN7a5UnIshz1eJ7iTxY825Wt9ZLIOi0yC4ZiP4bNLVnFxfu7yDni1B4YDwWirURgeYmXVY7n82ekgVoSdKvvhpiTjgJ6BHr0yp3t+myOheqQDNse14iAVa4PVTCaauO9EWCc2Nh3lEVMP6kItjT09p//cWFIDh2mo0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=mvzMgOehlPovymBYJJd3YHaUN4y9xADbWCKviN8BNz4=;
 b=Ve739x0CmrWDAqF+0zWZIClm4ff56RX0mPFqLH/rcDoKgZEVBSFdpxCQdXO5dSi+f42wGFkX8Zm8J6rT0ydNOFjVmdQX21odKMOgC15mDVTd6+lVsFOq4tamON29g1lfZUPwZ+OLrACf99NUAgENtHRKrC3ftszltuDS3wBf8saWApLC2pNBkOg5zrVBvyuH7tDJICIECmwqDbWqmff9MMVMtxRvcomGpU2zKlXQRWVK0hw0F11DMmsRQmc1WUkXEh9oRLJm2s/YprLoeklb2MWlajdS4W5ne+UKAdoSr6J9bDY1npbwnKNrr2AAJ5aOvD7bVEt00vMEetoAXH15Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mvzMgOehlPovymBYJJd3YHaUN4y9xADbWCKviN8BNz4=;
 b=plHWvrImEiUknMXF4pEBfXEWW2bqmDm2P5mVxFV8tU9Bgm0xqW8KmvzdyP7scnJLhoAWCwNBsqQbYKdVRHIkM5brkUfdahnjrdAeBFDIWCh8EXRv/Ps2gamXLB4BFnXBJx6+jlNaNFGpOor0khvlUgrtRCcLLozgdQqiZlFF7LicqVn/0vunA+hryadQiMe1s2WVYfFUg9Tm1IKphvHDEap0nODIqTsCRPnUTUIh//XakwUbzYaoxI4eCL9fVYTQTipY9t/NLdyx2mNYTHWLaahe6hpebHtnBVYPj0f9epfLixEPjKfTMmaN6xbmJIRo5uNd75yA0RJceAWhhaKDDg==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by SN6PR06MB3855.namprd06.prod.outlook.com (2603:10b6:805:24::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Fri, 10 Sep
 2021 22:03:31 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::ecff:6fcc:9321:2810]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::ecff:6fcc:9321:2810%6]) with mapi id 15.20.4500.017; Fri, 10 Sep 2021
 22:03:31 +0000
Date: Fri, 10 Sep 2021 17:03:28 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, airlied@linux.ie, heiko@sntech.de,
 hjc@rock-chips.com, zhangqing@rock-chips.com
Subject: Re: [PATCH] drm/rockchip: Update crtc fixup to account for
 fractional clk change
Message-ID: <SN6PR06MB534238C805B4C87B75069460A5D69@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20210908135356.18689-1-macroalpha82@gmail.com>
 <YTj7gE0CQ9ASeBVF@smile.fi.intel.com>
Content-Disposition: inline
In-Reply-To: <YTj7gE0CQ9ASeBVF@smile.fi.intel.com>
X-TMN: [DJhUmBmRmK01J4d4+43RjlHQmEnblWoi]
X-ClientProxiedBy: SN4PR0501CA0149.namprd05.prod.outlook.com
 (2603:10b6:803:2c::27) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20210910220328.GA4221@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wintermute.localdomain (76.183.134.35) by
 SN4PR0501CA0149.namprd05.prod.outlook.com (2603:10b6:803:2c::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.8 via Frontend
 Transport; Fri, 10 Sep 2021 22:03:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e74cd6c-8f32-49cf-a0c4-08d974a6d37a
X-MS-TrafficTypeDiagnostic: SN6PR06MB3855:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jYfmq+i/8g55Xird+VRfW6DGUUlWcnjJ2GLe6rKfCUw7Jt87bxoTF5cl5s1dBt/oFP5HmbN+VmtEyC5nxnt3YCSydj4xh6AxZDkgxJJk8LCS05bDDhKuJbGfr2huaIZC++jDmnTKRHEhck+BRyytsEBMay7klfHOx/f6sr39CIuKd1NP8p0uiRkSc/mYegSt8ch0Xig4PRG2xhKqg0ZRcgtMAz5zFyLRnATMsR5Rp/igcf/r+5YVvlZ5KSIhMbPcS8VEyYdk+7b3R6dyXtDB0n9tzpTKV7B4zOSCFXGOEUuxXav/PBE9uFjhN9PWLYTrmnk+FNyuMDTspbQOywhxVjSoUjoZ0EW5/SzY0SGYDfGBASeKV06Aposc57LNTSV+zerv18hNfZcc4yUEZowbOByozn/3y3+YrsczmsVvIexubAQo2SWsuRiYboZSWt/D
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: o38EidIiMrEtTKQSP8GSSmDLtYHM4pOBwmaLlUV2qVlnYhs7STw7B6FanPvg2MRd+phHgs0LtCZkoXHixjIU3nbRdW4aGamE+YSJ3V1pZosWx317BjmEjnP31ZLx7OfcyGj0lAHLx9AqzJc0KLBO9g==
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-94543.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e74cd6c-8f32-49cf-a0c4-08d974a6d37a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 22:03:31.7154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR06MB3855
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_150339_917380_358A0976 
X-CRM114-Status: GOOD (  50.64  )
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

On Wed, Sep 08, 2021 at 09:05:52PM +0300, Andy Shevchenko wrote:
> On Wed, Sep 08, 2021 at 08:53:56AM -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > After commit 928f9e268611 ("clk: fractional-divider: Hide
> > clk_fractional_divider_ops from wide audience") was merged it appears
> > that the DSI panel on my Odroid Go Advance stopped working. Upon closer
> > examination of the problem, it looks like it was the fixup in the
> > rockchip_drm_vop.c file was causing the issue. The changes made to the
> > clk driver appear to change some assumptions made in the fixup.
> > 
> > After debugging the working 5.14 kernel and the no-longer working
> > 5.15 kernel, it looks like this was broken all along but still
> > worked, whereas after the fractional clock change it stopped
> > working despite the issue (it went from sort-of broken to very broken).
> > 
> > In the 5.14 kernel the dclk_vopb_frac was being requested to be set to
> > 17000999 on my board. The clock driver was taking the value of the
> > parent clock and attempting to divide the requested value from it
> > (17000000/17000999 = 0), then subtracting 1 from it (making it -1),
> > and running it through fls_long to get 64. It would then subtract
> > the value of fd->mwidth from it to get 48, and then bit shift
> > 17000999 to the left by 48, coming up with a very large number of
> > 7649082492112076800. This resulted in a numerator of 65535 and a
> > denominator of 1 from the clk driver. The driver seemingly would
> > try again and get a correct 1:1 value later, and then move on.
> > 
> > Output from my 5.14 kernel (with some printfs for good measure):
> > [    2.830066] rockchip-drm display-subsystem: bound ff460000.vop (ops vop_component_ops)
> > [    2.839431] rockchip-drm display-subsystem: bound ff450000.dsi (ops dw_mipi_dsi_rockchip_ops)
> > [    2.855980] Clock is dclk_vopb_frac
> > [    2.856004] Scale 64, Rate 7649082492112076800, Oldrate 17000999, Parent Rate 17000000, Best Numerator 65535, Best Denominator 1, fd->mwidth 16
> > [    2.903529] Clock is dclk_vopb_frac
> > [    2.903556] Scale 0, Rate 17000000, Oldrate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1, fd->mwidth 16
> > [    2.903579] Clock is dclk_vopb_frac
> > [    2.903583] Scale 0, Rate 17000000, Oldrate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1, fd->mwidth 16
> > 
> > Contrast this with 5.15 after the clk change where the rate of 17000999
> > was getting passed and resulted in numerators/denomiators of 17001/
> > 17000.
> > 
> > Output from my 5.15 kernel (with some printfs added for good measure):
> > [    2.817571] rockchip-drm display-subsystem: bound ff460000.vop (ops vop_component_ops)
> > [    2.826975] rockchip-drm display-subsystem: bound ff450000.dsi (ops dw_mipi_dsi_rockchip_ops)
> > [    2.843430] Rate 17000999, Parent Rate 17000000, Best Numerator 17018, Best Denominator 17017
> > [    2.891073] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
> > [    2.891269] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
> > [    2.891281] Rate 17001000, Parent Rate 17000000, Best Numerator 17001, Best Denominator 17000
> > 
> > After tracing through the code it appeared that this function here was
> > adding a 999 to the requested frequency because of how the clk driver
> > was rounding/accepting those frequencies. I believe after the changes
> > made in the commit listed above the assumptions listed in this driver
> > are no longer true. When I remove the + 999 from the driver the DSI
> > panel begins to work again.
> > 
> > Output from my 5.15 kernel with 999 removed (printfs added):
> > [    2.852054] rockchip-drm display-subsystem: bound ff460000.vop (ops vop_component_ops)
> > [    2.864483] rockchip-drm display-subsystem: bound ff450000.dsi (ops dw_mipi_dsi_rockchip_ops)
> > [    2.880869] Clock is dclk_vopb_frac
> > [    2.880892] Rate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1
> > [    2.928521] Clock is dclk_vopb_frac
> > [    2.928551] Rate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1
> > [    2.928570] Clock is dclk_vopb_frac
> > [    2.928574] Rate 17000000, Parent Rate 17000000, Best Numerator 1, Best Denominator 1
> > 
> > I have tested the change extensively on my Odroid Go Advance (Rockchip
> > RK3326) and it appears to work well. However, this change will affect
> > all Rockchip SoCs that use this driver so I believe further testing
> > is warranted. Please note that without this change I can confirm
> > at least all PX30s with DSI panels will stop working with the 5.15
> > kernel.
> 
> To me it all makes a lot of sense, thank you for deep analysis of the issue!
> In any case I think we will need a Fixes tag to something (either one of
> clk-fractional-divider.c series or preexisted).

Would this work for a "fixes"?

commit 287422a95fe2 ("drm/rockchip: Round up _before_ giving to the
clock framework")

That's the commit that introduced this "bug", even though it wasn't a
problem until the new commit that changed the way fractional clocks
worked for rockchip.

Thank you.

> 
> Anyway, FWIW,
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 21 +++------------------
> >  1 file changed, 3 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > index ba9e14da41b4..bfef4f52dce6 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> > @@ -1169,31 +1169,16 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
> >  	 *
> >  	 * - DRM works in in kHz.
> >  	 * - Clock framework works in Hz.
> > -	 * - Rockchip's clock driver picks the clock rate that is the
> > -	 *   same _OR LOWER_ than the one requested.
> >  	 *
> >  	 * Action plan:
> >  	 *
> > -	 * 1. When DRM gives us a mode, we should add 999 Hz to it.  That way
> > -	 *    if the clock we need is 60000001 Hz (~60 MHz) and DRM tells us to
> > -	 *    make 60000 kHz then the clock framework will actually give us
> > -	 *    the right clock.
> > -	 *
> > -	 *    NOTE: if the PLL (maybe through a divider) could actually make
> > -	 *    a clock rate 999 Hz higher instead of the one we want then this
> > -	 *    could be a problem.  Unfortunately there's not much we can do
> > -	 *    since it's baked into DRM to use kHz.  It shouldn't matter in
> > -	 *    practice since Rockchip PLLs are controlled by tables and
> > -	 *    even if there is a divider in the middle I wouldn't expect PLL
> > -	 *    rates in the table that are just a few kHz different.
> > -	 *
> > -	 * 2. Get the clock framework to round the rate for us to tell us
> > +	 * 1. Get the clock framework to round the rate for us to tell us
> >  	 *    what it will actually make.
> >  	 *
> > -	 * 3. Store the rounded up rate so that we don't need to worry about
> > +	 * 2. Store the rounded up rate so that we don't need to worry about
> >  	 *    this in the actual clk_set_rate().
> >  	 */
> > -	rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000 + 999);
> > +	rate = clk_round_rate(vop->dclk, adjusted_mode->clock * 1000);
> >  	adjusted_mode->clock = DIV_ROUND_UP(rate, 1000);
> >  
> >  	return true;
> > -- 
> > 2.25.1
> > 
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
