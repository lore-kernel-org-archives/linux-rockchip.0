Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35E05C54EE9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 14:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDSPu5T9JrGCYhVN/Qw9aNjuI1qvLLrxdS3BLq/l16E=; b=oIzlkFhjen1Ryp
	MNaZw9JKU1O8+CCTBQAHTBo7gCc3D4SBWfrRYuotVPQUaP2ZPa99nmnuV0pJ6QLKRblwKeyF8JURd
	d0yOwukt7jvzUm2NihTkuF3ok0mQ18SUJGZLCcajcdPIdrQH9DKCspBG1K82DJPdGSV44ptyVv+dD
	oKPc9LQ3QzQ77/gWpxisgkltc/FdHb5sUPq/sCL7i30qqmilSa0i1Ux3ORCdVuhjwmxVU0sLTEL4z
	Tv2gKWf/zTWn96k5zcKkmPzp0Kwz7TTUDJFO6BfB8vVgR1yXNhtgq2N23NrkO+5E9XgfFAIplds84
	ePFiWEVInZcqv/1H1VDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZYlG-006SEL-Q5; Sat, 17 Sep 2022 14:25:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZYl6-006S5v-KH; Sat, 17 Sep 2022 14:25:30 +0000
Received: from [88.128.88.164] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oZYkz-0001LQ-HZ; Sat, 17 Sep 2022 16:25:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH v5 4/6] clk: rockchip: Add clock controller support for RV1126 SoC.
Date: Sat, 17 Sep 2022 16:25:20 +0200
Message-ID: <1760564.3VsfAaAtOV@phil>
In-Reply-To: <CA+VMnFxy5QsoQ=0=qDxhPE=9KxDr_OKSWi9_7tONk0EA12NLFQ@mail.gmail.com>
References: <20220915163947.1922183-1-jagan@edgeble.ai> <2597191.BddDVKsqQX@phil> <CA+VMnFxy5QsoQ=0=qDxhPE=9KxDr_OKSWi9_7tONk0EA12NLFQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220917_072528_696413_5342B4DD 
X-CRM114-Status: GOOD (  27.45  )
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

Hi Jagan,

Am Samstag, 17. September 2022, 13:58:43 CEST schrieben Sie:
> On Sat, 17 Sept 2022 at 12:25, Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Am Donnerstag, 15. September 2022, 18:39:45 CEST schrieb Jagan Teki:
> > > Clock & Reset Unit (CRU) in RV1126 support clocks for CRU
> > > and CRU_PMU blocks.
> > >
> > > This patch is trying to add minimal Clock-Architecture Diagram's
> > > inferred from [1] authored by Finley Xiao.
> > >
> > > [1] https://github.com/rockchip-linux/kernel/blob/develop-4.19/drivers/clk/rockchip/clk-rv1126.c
> > >
> > > Cc: linux-clk@vger.kernel.org
> > > Cc: Michael Turquette <mturquette@baylibre.com>
> > > Cc: Stephen Boyd <sboyd@kernel.org>
> > > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > ---
> > > Changes for v5:
> > > - add platform-drivers
> >
> > [...]
> >
> > > +static void __init rv1126_pmu_clk_init(struct device_node *np)
> > > +{
> > > +     struct rockchip_clk_provider *ctx;
> > > +     void __iomem *reg_base;
> > > +
> > > +     reg_base = of_iomap(np, 0);
> > > +     if (!reg_base) {
> > > +             pr_err("%s: could not map cru pmu region\n", __func__);
> > > +             return;
> > > +     }
> > > +
> > > +     ctx = rockchip_clk_init(np, reg_base, CLKPMU_NR_CLKS);
> > > +     if (IS_ERR(ctx)) {
> > > +             pr_err("%s: rockchip pmu clk init failed\n", __func__);
> > > +             return;
> > > +     }
> > > +
> > > +     rockchip_clk_register_plls(ctx, rv1126_pmu_pll_clks,
> > > +                                ARRAY_SIZE(rv1126_pmu_pll_clks),
> > > +                                RV1126_GRF_SOC_STATUS0);
> > > +
> > > +     rockchip_clk_register_branches(ctx, rv1126_clk_pmu_branches,
> > > +                                    ARRAY_SIZE(rv1126_clk_pmu_branches));
> > > +
> > > +     rockchip_register_softrst(np, 2, reg_base + RV1126_PMU_SOFTRST_CON(0),
> > > +                               ROCKCHIP_SOFTRST_HIWORD_MASK);
> > > +
> > > +     rockchip_clk_of_add_provider(np, ctx);
> > > +}
> > > +
> > > +CLK_OF_DECLARE(rv1126_cru_pmu, "rockchip,rv1126-pmucru", rv1126_pmu_clk_init);
> >
> > this one and the one below should go away I think.
> >
> > Can you check if that is the case, then I can just drop the two
> > CLK_OF_DECLARE lines.
> 
> I think these are unneeded, it worked w/o these when I built a static.

great to hear that, then I'll drop those 


> but others are still included.
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/clk/rockchip/clk-rk3568.c#n1636
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/clk/rockchip/clk-rk3568.c#n1679

very likely. As I want to test such changes on hardware, I'm not
removing them just now but will try to look at that once I'm back
home from LPC/ELCE.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
