Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB2C3ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 11:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGfJl5bEeaSZoHtvOaO+HH9jub9RaDi6MRtEfvexlTU=; b=2g5FRHYLxUC64r
	5uBFswk1C3pyCxpuM/Q1EGNNySBGABi/KPEsv+tuZQM8jpBUr3ReLvnbR0IshM99rAeVMW257rOrj
	xy2Z40htFwltyGSn4wQjhkjsAjAYmi7KXAG6H8S3fIlJMl6GqBI666hkXmfHjXFmy7YsDy5rKHf4o
	9b7q+Pb46PwFqInzpq/4geBHKK1p9VUDEq0rcuavF0Iptf4rQSCOo97RRLi0Mh1yg9oBLK+8WKD08
	bpyVsEgMbzgZSeMb6EKiY/Apg36/cRxXjtvKPFNGY6W0ZB3IL58m+d1irPN/+b/UmGPU0PmSzt71x
	razQZslseAJb3NR9vZMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZWTM-005dy1-OZ; Sat, 17 Sep 2022 11:59:00 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZWTK-005duy-3z
	for linux-rockchip@lists.infradead.org; Sat, 17 Sep 2022 11:58:59 +0000
Received: by mail-io1-xd29.google.com with SMTP id v128so19455088ioe.12
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Sep 2022 04:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=XZ1Uh1+5dTaLUb0vMwEMEszjMWYRNaJYiRkr2CgeSSA=;
        b=V3+LYjFN77EFt5eECaZ95tU8gQSMYKzwNHiMq/3i/3hbynjfzMUe3cEMHKA96CWTKP
         FouV6l78t0MrZk/BWOeOSYi67SfCo2Qq7sLQv5BD4+yJAVJFLNiVCGt8TJn3mq/jBWjn
         Z2pgO43IpqNBzVDXD/yCFcRBxHqQ2/xKtp2oh7axzkHSm9h1zz+q9qXk3O/LFwTZtden
         GA/TZxhB62mN86mFvXJ9uH0tsWxi2OBQ1CDKp94x36ZzMcRjTQKGv4gXmwTsmiu/mlDQ
         1K3BSc7GqAc3dk2xGgT4AtkXuiPTFMQBm/LAgbVeyl5jW+etU2P4oTkJ8pSgv9lVjbIk
         ORFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=XZ1Uh1+5dTaLUb0vMwEMEszjMWYRNaJYiRkr2CgeSSA=;
        b=MkhghzisCvZVqvYnTIsGEOUQ5gbU5JEZ8Q8pe4YDPiCLTiq2Y1VhpXgAHFjxGs/OcT
         0OeR0fw3MzyIlcWezS1Gi+S2UUIZ6M+WbD587t+4v5dZIEi/QIYS+Cnb8HoHYp1194ym
         z4pP5olAoRtaCc0s7klQ2hz9tukGUJeuD2ooR+psRs0puuyKTPg5DyTNg9xLsALJ4bA6
         spL5BY68TPHljg+6AjQPEmcnqBfFNnN5j59QVCDrXn3PaQu2BX9RdNO+0XLib56zETjv
         S1YXJrIsf+953HQCZGJFg1/khoWLGt5TjPxGLC0bWUUD0jIWt9Xz0zBAcU7L0JCSYpO9
         lmtQ==
X-Gm-Message-State: ACrzQf1F8XYkI/hbgofmamxEtz9En1LcIat+QVD0ST9zO2vTjjohC84X
	4XBtAYelGgA9zu8RK2tBcmfMuejCzMK86hQQilIC4g==
X-Google-Smtp-Source: AMsMyM5KUKpYHWJDJD9OvDgdx2SuCgV5lD4PYjboe3umSXshDobbChgVmv5S4e6ctrLJzIER5UVKwHAx2uqJXhXYQ2k=
X-Received: by 2002:a05:6638:3d09:b0:357:34bc:7ec8 with SMTP id
 cl9-20020a0566383d0900b0035734bc7ec8mr4422053jab.238.1663415934842; Sat, 17
 Sep 2022 04:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220915163947.1922183-1-jagan@edgeble.ai> <20220915163947.1922183-5-jagan@edgeble.ai>
 <2597191.BddDVKsqQX@phil>
In-Reply-To: <2597191.BddDVKsqQX@phil>
From: Jagan Teki <jagan@edgeble.ai>
Date: Sat, 17 Sep 2022 17:28:43 +0530
Message-ID: <CA+VMnFxy5QsoQ=0=qDxhPE=9KxDr_OKSWi9_7tONk0EA12NLFQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/6] clk: rockchip: Add clock controller support for
 RV1126 SoC.
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Finley Xiao <finley.xiao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220917_045858_379331_F99A1E80 
X-CRM114-Status: GOOD (  20.45  )
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

On Sat, 17 Sept 2022 at 12:25, Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Donnerstag, 15. September 2022, 18:39:45 CEST schrieb Jagan Teki:
> > Clock & Reset Unit (CRU) in RV1126 support clocks for CRU
> > and CRU_PMU blocks.
> >
> > This patch is trying to add minimal Clock-Architecture Diagram's
> > inferred from [1] authored by Finley Xiao.
> >
> > [1] https://github.com/rockchip-linux/kernel/blob/develop-4.19/drivers/clk/rockchip/clk-rv1126.c
> >
> > Cc: linux-clk@vger.kernel.org
> > Cc: Michael Turquette <mturquette@baylibre.com>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> > Changes for v5:
> > - add platform-drivers
>
> [...]
>
> > +static void __init rv1126_pmu_clk_init(struct device_node *np)
> > +{
> > +     struct rockchip_clk_provider *ctx;
> > +     void __iomem *reg_base;
> > +
> > +     reg_base = of_iomap(np, 0);
> > +     if (!reg_base) {
> > +             pr_err("%s: could not map cru pmu region\n", __func__);
> > +             return;
> > +     }
> > +
> > +     ctx = rockchip_clk_init(np, reg_base, CLKPMU_NR_CLKS);
> > +     if (IS_ERR(ctx)) {
> > +             pr_err("%s: rockchip pmu clk init failed\n", __func__);
> > +             return;
> > +     }
> > +
> > +     rockchip_clk_register_plls(ctx, rv1126_pmu_pll_clks,
> > +                                ARRAY_SIZE(rv1126_pmu_pll_clks),
> > +                                RV1126_GRF_SOC_STATUS0);
> > +
> > +     rockchip_clk_register_branches(ctx, rv1126_clk_pmu_branches,
> > +                                    ARRAY_SIZE(rv1126_clk_pmu_branches));
> > +
> > +     rockchip_register_softrst(np, 2, reg_base + RV1126_PMU_SOFTRST_CON(0),
> > +                               ROCKCHIP_SOFTRST_HIWORD_MASK);
> > +
> > +     rockchip_clk_of_add_provider(np, ctx);
> > +}
> > +
> > +CLK_OF_DECLARE(rv1126_cru_pmu, "rockchip,rv1126-pmucru", rv1126_pmu_clk_init);
>
> this one and the one below should go away I think.
>
> Can you check if that is the case, then I can just drop the two
> CLK_OF_DECLARE lines.

I think these are unneeded, it worked w/o these when I built a static.
but others are still included.
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/clk/rockchip/clk-rk3568.c#n1636
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/clk/rockchip/clk-rk3568.c#n1679

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
