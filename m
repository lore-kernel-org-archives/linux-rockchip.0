Return-Path: <SRS0=igfw=CP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BB0C10DAA
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Sep 2020 22:42:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 992B120C09
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Sep 2020 22:42:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="vT9CTWAK"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 992B120C09
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uzD7E2+M4zuWsa6ikW7dYJIdqW1CIR+A+W4+c7Nu5Yw=; b=vT9CTWAKO0ftAv65C6yxvM3q8
	5xaXgTVIIcjmupiQaqRrvjBvi481O0JYjVoQzvJ9b5vquXl+FlRlO8e63mHb4M1kAY62c3bJeYPMh
	SqssGUU+0OuluCk8nH/xD5B0X1AKfXIyAN8diCI3sxO0Pm8fXg1ReRM1T5x3IsWNiXH+rEgZnUn7B
	p6BYy/gqQFNl5xhiH3jPrAHKwW9hDG38dNkgEZvE2+W7rEWEU9ZNm9PAVgrJ7Rj2khmNJYrXUcgLC
	qL/YqSXErgqPPGGyRdsYNCyoEsAqmgJNQypnG+1HUm4qM1ljsZvWuPEWxKE6ewE+TdNiP0E5BGfFi
	95U2d1e+g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kF3MX-00028Z-HZ; Sun, 06 Sep 2020 22:42:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kF3MU-00028E-Ie
 for linux-rockchip@lists.infradead.org; Sun, 06 Sep 2020 22:42:15 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kF3MT-0002bg-4F; Mon, 07 Sep 2020 00:42:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Elaine Zhang <zhangqing@rock-chips.com>
Subject: Re: [PATCH v3 5/6] clk: rockchip: fix the clk config to support
 module build
Date: Mon, 07 Sep 2020 00:42:12 +0200
Message-ID: <3695649.H3NGuQi1vT@diego>
In-Reply-To: <20200904074448.24753-1-zhangqing@rock-chips.com>
References: <20200904074405.24439-1-zhangqing@rock-chips.com>
 <20200904074448.24753-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200906_184214_640389_0B60D36F 
X-CRM114-Status: GOOD (  20.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, sboyd@kernel.org,
 mturquette@baylibre.com, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 xxx@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Elaine,

Am Freitag, 4. September 2020, 09:44:48 CEST schrieb Elaine Zhang:
> use CONFIG_COMMON_CLK_ROCKCHIP for Rk common clk drivers.
> use CONFIG_CLK_RKXX for Rk soc clk driver.
> Mark configuration to "tristate",
> to support building Rk SoCs clock driver as module.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> ---
>  drivers/clk/Kconfig           |  1 +
>  drivers/clk/rockchip/Kconfig  | 78 +++++++++++++++++++++++++++++++++++
>  drivers/clk/rockchip/Makefile | 42 ++++++++++---------
>  3 files changed, 101 insertions(+), 20 deletions(-)
>  create mode 100644 drivers/clk/rockchip/Kconfig
> 
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index 4026fac9fac3..b41aaed9bd51 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -373,6 +373,7 @@ source "drivers/clk/meson/Kconfig"
>  source "drivers/clk/mvebu/Kconfig"
>  source "drivers/clk/qcom/Kconfig"
>  source "drivers/clk/renesas/Kconfig"
> +source "drivers/clk/rockchip/Kconfig"
>  source "drivers/clk/samsung/Kconfig"
>  source "drivers/clk/sifive/Kconfig"
>  source "drivers/clk/sprd/Kconfig"
> diff --git a/drivers/clk/rockchip/Kconfig b/drivers/clk/rockchip/Kconfig
> new file mode 100644
> index 000000000000..53a44396bc35
> --- /dev/null
> +++ b/drivers/clk/rockchip/Kconfig
> @@ -0,0 +1,78 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# common clock support for ROCKCHIP SoC family.
> +
> +config COMMON_CLK_ROCKCHIP
> +	tristate "Rockchip clock controller common support"
> +	depends on ARCH_ROCKCHIP
> +	default ARCH_ROCKCHIP
> +	help
> +	  Say y here to enable common clock controller.

Maybe  "Say y here to enable common clock controller for Rockchip platforms."


> +
> +if COMMON_CLK_ROCKCHIP
> +config CLK_PX30
> +	tristate "Rockchip Px30 clock controller support"

2 Problems:
- order: you add the symbols allowing module builds before adding module
  infrastructure, so in a bisection build with patch6 not applied you
  probably end up with build errors?
- in patch6 you only add module infrastructure for rk3399, but here you
  declare all as tristate ... so what happens if someone selects to build
  the PX30 as module now?

Thanks
Heiko


> +	default y
> +	help
> +	  Build the driver for Px30 Clock Driver.
> +
> +config CLK_RV110X
> +	tristate "Rockchip Rv110x clock controller support"
> +	default y
> +	help
> +	  Build the driver for Rv110x Clock Driver.
> +
> +config CLK_RK3036
> +	tristate "Rockchip Rk3036 clock controller support"
> +	default y
> +	help
> +	  Build the driver for Rk3036 Clock Driver.
> +
> +config CLK_RK312X
> +	tristate "Rockchip Rk312x clock controller support"
> +	default y
> +	help
> +	  Build the driver for Rk312x Clock Driver.
> +
> +config CLK_RK3188
> +	tristate "Rockchip Rk3188 clock controller support"
> +	default y
> +	help
> +	  Build the driver for Rk3188 Clock Driver.
> +
> +config CLK_RK322X
> +	tristate "Rockchip Rk322x clock controller support"
> +	default y
> +	help
> +	  Build the driver for Rk322x Clock Driver.
> +
> +config CLK_RK3288
> +	tristate "Rockchip Rk3288 clock controller support"
> +	depends on ARM
> +	default y
> +	help
> +	  Build the driver for Rk3288 Clock Driver.
> +
> +config CLK_RK3308
> +	tristate "Rockchip Rk3308 clock controller support"
> +	default y
> +	help
> +	  Build the driver for Rk3308 Clock Driver.
> +
> +config CLK_RK3328
> +	tristate "Rockchip Rk3328 clock controller support"
> +	default y
> +	help
> +	  Build the driver for Rk3328 Clock Driver.
> +
> +config CLK_RK3368
> +	tristate "Rockchip Rk3368 clock controller support"
> +	default y
> +	help
> +	  Build the driver for Rk3368 Clock Driver.
> +
> +config CLK_RK3399
> +	tristate "Rockchip Rk3399 clock controller support"
> +	default y
> +	help
> +	  Build the driver for Rk3399 Clock Driver.
> +endif
> diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
> index 7c5b5813a87c..a99e4d9bbae1 100644
> --- a/drivers/clk/rockchip/Makefile
> +++ b/drivers/clk/rockchip/Makefile
> @@ -3,24 +3,26 @@
>  # Rockchip Clock specific Makefile
>  #
>  
> -obj-y	+= clk.o
> -obj-y	+= clk-pll.o
> -obj-y	+= clk-cpu.o
> -obj-y	+= clk-half-divider.o
> -obj-y	+= clk-inverter.o
> -obj-y	+= clk-mmc-phase.o
> -obj-y	+= clk-muxgrf.o
> -obj-y	+= clk-ddr.o
> -obj-$(CONFIG_RESET_CONTROLLER)	+= softrst.o
> +obj-$(CONFIG_COMMON_CLK_ROCKCHIP) += clk-rockchip.o
>  
> -obj-y	+= clk-px30.o
> -obj-y	+= clk-rv1108.o
> -obj-y	+= clk-rk3036.o
> -obj-y	+= clk-rk3128.o
> -obj-y	+= clk-rk3188.o
> -obj-y	+= clk-rk3228.o
> -obj-y	+= clk-rk3288.o
> -obj-y	+= clk-rk3308.o
> -obj-y	+= clk-rk3328.o
> -obj-y	+= clk-rk3368.o
> -obj-y	+= clk-rk3399.o
> +clk-rockchip-y += clk.o
> +clk-rockchip-y += clk-pll.o
> +clk-rockchip-y += clk-cpu.o
> +clk-rockchip-y += clk-half-divider.o
> +clk-rockchip-y += clk-inverter.o
> +clk-rockchip-y += clk-mmc-phase.o
> +clk-rockchip-y += clk-muxgrf.o
> +clk-rockchip-y += clk-ddr.o
> +clk-rockchip-$(CONFIG_RESET_CONTROLLER) += softrst.o
> +
> +obj-$(CONFIG_CLK_PX30)          += clk-px30.o
> +obj-$(CONFIG_CLK_RV110X)        += clk-rv1108.o
> +obj-$(CONFIG_CLK_RK3036)        += clk-rk3036.o
> +obj-$(CONFIG_CLK_RK312X)        += clk-rk3128.o
> +obj-$(CONFIG_CLK_RK3188)        += clk-rk3188.o
> +obj-$(CONFIG_CLK_RK322X)        += clk-rk3228.o
> +obj-$(CONFIG_CLK_RK3288)        += clk-rk3288.o
> +obj-$(CONFIG_CLK_RK3308)        += clk-rk3308.o
> +obj-$(CONFIG_CLK_RK3328)        += clk-rk3328.o
> +obj-$(CONFIG_CLK_RK3368)        += clk-rk3368.o
> +obj-$(CONFIG_CLK_RK3399)        += clk-rk3399.o
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
