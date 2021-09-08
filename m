Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614F0C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 07:55:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E431F61165
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 07:55:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E431F61165
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jos3FpPc7R2GkJxeT1jrDYXdbJ+sAvGXuqTDF74rnEA=; b=bT+ZCyw02ZlSeH
	zgNwv5OBqEr8XjdEr9kwHWbOAKerrizo16be/6ExYw8D06SbhisCZHH5tmD4mlVy7n4hpniPoO/Uk
	zY8kxuvq3bY/V3IY6nFQqvFv2k4qNIz7XUbnfj/KK31n2BiVcdQUijR7fuFoYiWprjWN17Rs4o7Bm
	JhYH1M9l7uIJ7cXILzayTtTw+09xHQYIZuzYJ1dVTlHvNar+M5dCGHxrGt7Z4PBn2jpM+v5jbORcp
	ek8NQJZW3wQhKLFr0sd+CetAlmnUPSoh7EM3u/5lU6atLTaW9VMCEBWcPASBaNDY+da9rgZb6O919
	DTqPdye1r2SE3JU1Y0lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNsQe-00612r-CA; Wed, 08 Sep 2021 07:55:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNs4T-005ubd-2s; Wed, 08 Sep 2021 07:32:38 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mNs4M-0005B3-8u; Wed, 08 Sep 2021 09:32:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>, Chen-Yu Tsai <wenst@chromium.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [RESEND PATCH 1/2] clk: rockchip: rk3399: expose PCLK_COREDBG_{B,
 L}
Date: Wed, 08 Sep 2021 09:32:29 +0200
Message-ID: <4746858.5FAZtBfuxM@diego>
In-Reply-To: <CAGXv+5E1Kk3PYK1GBatfBVnaEVfGCLvb5P-dN9S05LawAfimjw@mail.gmail.com>
References: <20210907094628.RESEND.1.If29cd838efbcee4450a62b8d84a99b23c86e0a3f@changeid>
 <CAGXv+5E1Kk3PYK1GBatfBVnaEVfGCLvb5P-dN9S05LawAfimjw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_003237_193110_3FA4BE86 
X-CRM114-Status: GOOD (  29.34  )
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

Am Mittwoch, 8. September 2021, 07:00:52 CEST schrieb Chen-Yu Tsai:
> On Wed, Sep 8, 2021 at 12:46 AM Brian Norris <briannorris@chromium.org> wrote:
> >
> > We have DT IDs for PCLK_COREDBG_L and PCLK_COREDBG_B, but we don't
> > actually expose them.
> >
> > In exposing these clocks (and attaching them to the coresight debug
> > driver), the AMBA bus may start to disable them. Because no CPU driver
> > owns these clocks (e.g., cpufreq-dt doesn't enable() them -- and even if
> > it did, it's not early enough -- nor does arch/arm64/kernel/smp.c), the
> > common clock framework then feels the need to disable the parents
> > (including the CPU PLLs) -- which is no fun for anyone.
> >
> > Thus, mark the CPU clocks as critical as well.
> 
> I think this part should be done regardless, and could be a separate patch
> added before exposing the COREDBG clks.

yep ... especially as this is sort of hidden right now, with it not
being part of the patch subject but only appearing as the last
line of the patch message ;-)

So I'd also vote for a separate patch.


Heiko

> 
> Either way,
> 
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> 
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > ---
> > Resending, because I missed the mailing lists on the first version.
> >
> >  drivers/clk/rockchip/clk-rk3399.c | 15 +++++++++------
> >  1 file changed, 9 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
> > index 62a4f2543960..53ed5cca335b 100644
> > --- a/drivers/clk/rockchip/clk-rk3399.c
> > +++ b/drivers/clk/rockchip/clk-rk3399.c
> > @@ -481,7 +481,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
> >         COMPOSITE_NOMUX(0, "atclk_core_l", "armclkl", CLK_IGNORE_UNUSED,
> >                         RK3399_CLKSEL_CON(1), 0, 5, DFLAGS | CLK_DIVIDER_READ_ONLY,
> >                         RK3399_CLKGATE_CON(0), 5, GFLAGS),
> > -       COMPOSITE_NOMUX(0, "pclk_dbg_core_l", "armclkl", CLK_IGNORE_UNUSED,
> > +       COMPOSITE_NOMUX(PCLK_COREDBG_L, "pclk_dbg_core_l", "armclkl", CLK_IGNORE_UNUSED,
> >                         RK3399_CLKSEL_CON(1), 8, 5, DFLAGS | CLK_DIVIDER_READ_ONLY,
> >                         RK3399_CLKGATE_CON(0), 6, GFLAGS),
> >
> > @@ -531,7 +531,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
> >         GATE(ACLK_GIC_ADB400_CORE_B_2_GIC, "aclk_core_adb400_core_b_2_gic", "armclkb", CLK_IGNORE_UNUSED,
> >                         RK3399_CLKGATE_CON(14), 4, GFLAGS),
> >
> > -       DIV(0, "pclken_dbg_core_b", "pclk_dbg_core_b", CLK_IGNORE_UNUSED,
> > +       DIV(PCLK_COREDBG_B, "pclken_dbg_core_b", "pclk_dbg_core_b", CLK_IGNORE_UNUSED,
> >                         RK3399_CLKSEL_CON(3), 13, 2, DFLAGS | CLK_DIVIDER_READ_ONLY),
> >
> >         GATE(0, "pclk_dbg_cxcs_pd_core_b", "pclk_dbg_core_b", CLK_IGNORE_UNUSED,
> > @@ -1514,7 +1514,10 @@ static const char *const rk3399_cru_critical_clocks[] __initconst = {
> >         "aclk_vio_noc",
> >
> >         /* ddrc */
> > -       "sclk_ddrc"
> > +       "sclk_ddrc",
> > +
> > +       "armclkl",
> > +       "armclkb",
> >  };
> >
> >  static const char *const rk3399_pmucru_critical_clocks[] __initconst = {
> > @@ -1549,9 +1552,6 @@ static void __init rk3399_clk_init(struct device_node *np)
> >         rockchip_clk_register_branches(ctx, rk3399_clk_branches,
> >                                   ARRAY_SIZE(rk3399_clk_branches));
> >
> > -       rockchip_clk_protect_critical(rk3399_cru_critical_clocks,
> > -                                     ARRAY_SIZE(rk3399_cru_critical_clocks));
> > -
> >         rockchip_clk_register_armclk(ctx, ARMCLKL, "armclkl",
> >                         mux_armclkl_p, ARRAY_SIZE(mux_armclkl_p),
> >                         &rk3399_cpuclkl_data, rk3399_cpuclkl_rates,
> > @@ -1562,6 +1562,9 @@ static void __init rk3399_clk_init(struct device_node *np)
> >                         &rk3399_cpuclkb_data, rk3399_cpuclkb_rates,
> >                         ARRAY_SIZE(rk3399_cpuclkb_rates));
> >
> > +       rockchip_clk_protect_critical(rk3399_cru_critical_clocks,
> > +                                     ARRAY_SIZE(rk3399_cru_critical_clocks));
> > +
> 
> Looking at the bigger picture, maybe it's time to convert CLK_IGNORE_UNUSED
> and rockchip_clk_protect_critical() to CLK_IS_CRITICAL?
> 
> ChenYu
> 
> >         rockchip_register_softrst(np, 21, reg_base + RK3399_SOFTRST_CON(0),
> >                                   ROCKCHIP_SOFTRST_HIWORD_MASK);
> >
> > --
> > 2.33.0.153.gba50c8fa24-goog
> >
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
