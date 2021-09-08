Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CB6FC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 05:01:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 381DB6109F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 05:01:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 381DB6109F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLaml5lxw5pLO7MHGrP9oZ1wLnlZaQQaKYh/jUQALpo=; b=IIyo751WdaH/9q
	wXv1C+I9Q/wmByjBfIOCvKJ2ZA+50Vab6sTxaXdhmg2V3Wa8lx3fJzwauTHAcg+353x6frij9qpMA
	BtkOsBC5+xyDdtofZlI6QUNZV2EGbSXhONAwYv+8OCuRmvLVPepOZaoMPxrgie7mE7M4+mlUqHMXi
	+v7bTKkQEMig6tH7kekrj1r0rFibWKysy9triW22eGevG1ed4qakNSSWAvXGLc+RQtOVfc5Zp9qhU
	oTXMoHXtEibeZhJHB727iPzvvd+YKz1+Fdpv7vqGxgdS+th3IcnqYmR5lZ7fUxY4BIbOmtG9wSztE
	DgYUH2cs5YaiPbhXcLPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNpht-005MrL-Q6; Wed, 08 Sep 2021 05:01:09 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNphq-005MqG-I1
 for linux-rockchip@lists.infradead.org; Wed, 08 Sep 2021 05:01:08 +0000
Received: by mail-lj1-x231.google.com with SMTP id s3so1336352ljp.11
 for <linux-rockchip@lists.infradead.org>; Tue, 07 Sep 2021 22:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=59SJITlNj+Ou6NpeOcti6W+PeG703q0PmtIG/+riV2I=;
 b=ewqoX5GR0GQDQStexYRcZ8xnE1vXQfU8hhosIS3fUSkXLkIpSJm68doabddqprhh6s
 2un8bUilB5SbvudD8sEsLBDLuXPA6oKuScLLAFTn6dZQfGgeyvqp3aOEbzmMo4G8F9if
 l6bgH2wRzBpW2pgxKleFAF0tQY07wiPiIZkTM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=59SJITlNj+Ou6NpeOcti6W+PeG703q0PmtIG/+riV2I=;
 b=UFigZgKlIYWWS5U2+APfOe6xVwdR3zIiCYrFf71O74BIzxiQ/0+ut4pE9JTJrttE1D
 U4RWDxvr7AqiGG6dM/rgJTFe71bB+SrqVACQ8f4ieITc+XRYSsKj6XZ0HsFbqlfYmbwX
 lXrir1i3pcsZw+IB8Y+Z/nwiPk5VgFjaUVNFvjWDcUuMCxhd79ZeqSFMTPQsbT4AQ1QY
 c9SKJCboHztOoWXg3rFDFI3gcfY+4v7HGjtQxU+Yeo80GIeNT3RSDE5XdUjdxoFvx2fF
 J0rd51PtXgTs9BkScq++FafoiLdB17g/rzIg+tbVzpYN9wqHnOUuRtobLvH1QIV5oAmv
 KD2A==
X-Gm-Message-State: AOAM532mf0WVy1CjXRjcjMALbDwn+DSnXpGo5N/YXRuMmDOQqpGHgQOx
 6QpY/c8T1//WxgQxFMLP//CdiLoT5v3u52ukjl8MNQ==
X-Google-Smtp-Source: ABdhPJx2VlFdtpsSPoyhBFFN0IDcYDzg5MRbDu1Cbvp0StYf9spI1uDQnWfI7uro2VByekXzT80q+7ymVwXak9jRAMw=
X-Received: by 2002:a2e:7d17:: with SMTP id y23mr1314834ljc.392.1631077263834; 
 Tue, 07 Sep 2021 22:01:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210907094628.RESEND.1.If29cd838efbcee4450a62b8d84a99b23c86e0a3f@changeid>
In-Reply-To: <20210907094628.RESEND.1.If29cd838efbcee4450a62b8d84a99b23c86e0a3f@changeid>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 8 Sep 2021 13:00:52 +0800
Message-ID: <CAGXv+5E1Kk3PYK1GBatfBVnaEVfGCLvb5P-dN9S05LawAfimjw@mail.gmail.com>
Subject: Re: [RESEND PATCH 1/2] clk: rockchip: rk3399: expose PCLK_COREDBG_{B,
 L}
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, 
 Douglas Anderson <dianders@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
 linux-rockchip@lists.infradead.org, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_220106_665571_836ED924 
X-CRM114-Status: GOOD (  22.59  )
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

On Wed, Sep 8, 2021 at 12:46 AM Brian Norris <briannorris@chromium.org> wrote:
>
> We have DT IDs for PCLK_COREDBG_L and PCLK_COREDBG_B, but we don't
> actually expose them.
>
> In exposing these clocks (and attaching them to the coresight debug
> driver), the AMBA bus may start to disable them. Because no CPU driver
> owns these clocks (e.g., cpufreq-dt doesn't enable() them -- and even if
> it did, it's not early enough -- nor does arch/arm64/kernel/smp.c), the
> common clock framework then feels the need to disable the parents
> (including the CPU PLLs) -- which is no fun for anyone.
>
> Thus, mark the CPU clocks as critical as well.

I think this part should be done regardless, and could be a separate patch
added before exposing the COREDBG clks.

Either way,

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> Resending, because I missed the mailing lists on the first version.
>
>  drivers/clk/rockchip/clk-rk3399.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
> index 62a4f2543960..53ed5cca335b 100644
> --- a/drivers/clk/rockchip/clk-rk3399.c
> +++ b/drivers/clk/rockchip/clk-rk3399.c
> @@ -481,7 +481,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
>         COMPOSITE_NOMUX(0, "atclk_core_l", "armclkl", CLK_IGNORE_UNUSED,
>                         RK3399_CLKSEL_CON(1), 0, 5, DFLAGS | CLK_DIVIDER_READ_ONLY,
>                         RK3399_CLKGATE_CON(0), 5, GFLAGS),
> -       COMPOSITE_NOMUX(0, "pclk_dbg_core_l", "armclkl", CLK_IGNORE_UNUSED,
> +       COMPOSITE_NOMUX(PCLK_COREDBG_L, "pclk_dbg_core_l", "armclkl", CLK_IGNORE_UNUSED,
>                         RK3399_CLKSEL_CON(1), 8, 5, DFLAGS | CLK_DIVIDER_READ_ONLY,
>                         RK3399_CLKGATE_CON(0), 6, GFLAGS),
>
> @@ -531,7 +531,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
>         GATE(ACLK_GIC_ADB400_CORE_B_2_GIC, "aclk_core_adb400_core_b_2_gic", "armclkb", CLK_IGNORE_UNUSED,
>                         RK3399_CLKGATE_CON(14), 4, GFLAGS),
>
> -       DIV(0, "pclken_dbg_core_b", "pclk_dbg_core_b", CLK_IGNORE_UNUSED,
> +       DIV(PCLK_COREDBG_B, "pclken_dbg_core_b", "pclk_dbg_core_b", CLK_IGNORE_UNUSED,
>                         RK3399_CLKSEL_CON(3), 13, 2, DFLAGS | CLK_DIVIDER_READ_ONLY),
>
>         GATE(0, "pclk_dbg_cxcs_pd_core_b", "pclk_dbg_core_b", CLK_IGNORE_UNUSED,
> @@ -1514,7 +1514,10 @@ static const char *const rk3399_cru_critical_clocks[] __initconst = {
>         "aclk_vio_noc",
>
>         /* ddrc */
> -       "sclk_ddrc"
> +       "sclk_ddrc",
> +
> +       "armclkl",
> +       "armclkb",
>  };
>
>  static const char *const rk3399_pmucru_critical_clocks[] __initconst = {
> @@ -1549,9 +1552,6 @@ static void __init rk3399_clk_init(struct device_node *np)
>         rockchip_clk_register_branches(ctx, rk3399_clk_branches,
>                                   ARRAY_SIZE(rk3399_clk_branches));
>
> -       rockchip_clk_protect_critical(rk3399_cru_critical_clocks,
> -                                     ARRAY_SIZE(rk3399_cru_critical_clocks));
> -
>         rockchip_clk_register_armclk(ctx, ARMCLKL, "armclkl",
>                         mux_armclkl_p, ARRAY_SIZE(mux_armclkl_p),
>                         &rk3399_cpuclkl_data, rk3399_cpuclkl_rates,
> @@ -1562,6 +1562,9 @@ static void __init rk3399_clk_init(struct device_node *np)
>                         &rk3399_cpuclkb_data, rk3399_cpuclkb_rates,
>                         ARRAY_SIZE(rk3399_cpuclkb_rates));
>
> +       rockchip_clk_protect_critical(rk3399_cru_critical_clocks,
> +                                     ARRAY_SIZE(rk3399_cru_critical_clocks));
> +

Looking at the bigger picture, maybe it's time to convert CLK_IGNORE_UNUSED
and rockchip_clk_protect_critical() to CLK_IS_CRITICAL?

ChenYu

>         rockchip_register_softrst(np, 21, reg_base + RK3399_SOFTRST_CON(0),
>                                   ROCKCHIP_SOFTRST_HIWORD_MASK);
>
> --
> 2.33.0.153.gba50c8fa24-goog
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
