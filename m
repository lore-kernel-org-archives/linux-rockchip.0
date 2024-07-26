Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29D0BC3DA49
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 22:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQG07qC5mlrpM3Nlfx72qABU1QAxfaLjFk0+OxAsXgU=; b=E65iNLV0RyJDNW
	LH/rqIXzLFVKZ6PyfogA05qFvfnkaPnyho9hcm7Jw8X+e84XxUqnQe+x+tSFHtC1WRdJWMqBm94yC
	PKK8TBmqrSLc0yvzL37VvbaiOaf5sR/WcGlwbydSViAPozaSFXgVIrAF0HGjCO5CfhsmeBjBjCsCM
	pawftoztJStGKe7pfCTQ8I1Wy5+f4Y9tDEZo4BgRLyaYvIHxfWNFv/3FyRGbekqIrnnyDV+NKaCOW
	Qnx6doHUQsdq8SUKruc2COVPIvhxgu+ldAyhtKeNdOc12dZA98O5SUa5H+VB7yyaKH4MGCPLQb1UK
	MoQXK/BNnDz8l9hwhIaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXTbD-00000005EK6-2E9y;
	Fri, 26 Jul 2024 22:39:43 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXTam-00000005EDP-3PiP;
	Fri, 26 Jul 2024 22:39:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9AFC7CE0F93;
	Fri, 26 Jul 2024 22:39:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F94CC32782;
	Fri, 26 Jul 2024 22:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722033553;
	bh=tc4bb2Nm0/M0kPveLY1Vp6o9t8P48zNwwlZP+5YVO9I=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=nJVVBG93nzOpL9Vm5/nkgPt/6E4jjb4gSShBSTSLr3V8/TcHJsWTEEW0LEPKSgT9R
	 j7Zz7goZex1DSDFkMH4zzqnCLEaUotykV2qMw43hEeEw2nXdYUOI2qreUFJvsiGmFQ
	 TKrqqqs9P5v9HWgDNMwGKfnTu/H3REWkuI+o/7gdbcRCqUn4RD4hjO8Icu0Pe/FntI
	 lLncLa4uwkPAp30waRdAlvYUxi8rBRf9i23ngLWaUjqaEomtQB5pvkH2slWf/MkCZh
	 cygqMt4k1itqCmcb3DecGpLUIZV25uFRV7qyGXI00/MERsHlA6LtPt8IzNp27bB836
	 SPwMBNtmDADzA==
Message-ID: <84b55412bc61cdcbbc4e051c88827c00.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240715110251.261844-3-heiko@sntech.de>
References: <20240715110251.261844-1-heiko@sntech.de> <20240715110251.261844-3-heiko@sntech.de>
Subject: Re: [PATCH v2 2/3] clk: add driver for voltage controlled oscillators
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Fri, 26 Jul 2024 15:39:11 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_153917_255444_156263EC 
X-CRM114-Status: GOOD (  22.06  )
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

Quoting Heiko Stuebner (2024-07-15 04:02:50)
> diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
> index 4abe16c8ccdfe..ca7b7b7ddfd8d 100644
> --- a/drivers/clk/Makefile
> +++ b/drivers/clk/Makefile
> @@ -79,6 +79,7 @@ obj-$(CONFIG_COMMON_CLK_SI521XX)      += clk-si521xx.o
>  obj-$(CONFIG_COMMON_CLK_VC3)           += clk-versaclock3.o
>  obj-$(CONFIG_COMMON_CLK_VC5)           += clk-versaclock5.o
>  obj-$(CONFIG_COMMON_CLK_VC7)           += clk-versaclock7.o
> +obj-$(CONFIG_COMMON_CLK_VCO)           += clk-vco.o

Wrong section. It's basically a common clk type.

>  obj-$(CONFIG_COMMON_CLK_WM831X)                += clk-wm831x.o
>  obj-$(CONFIG_COMMON_CLK_XGENE)         += clk-xgene.o
>  
> diff --git a/drivers/clk/clk-vco.c b/drivers/clk/clk-vco.c
> new file mode 100644
> index 0000000000000..f7fe2bc627f36
> --- /dev/null
> +++ b/drivers/clk/clk-vco.c
> @@ -0,0 +1,133 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2024 Heiko Stuebner <heiko@sntech.de>
> + *
> + * Generic voltage controlled oscillator
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/err.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/slab.h>
> +
> +struct clk_vco {
> +       struct device *dev;
> +       struct clk_hw hw;
> +       u32 rate;
> +       struct regulator *supply;
> +       struct gpio_desc *enable_gpio;
> +};
> +
> +#define to_clk_vco(_hw) container_of(_hw, struct clk_vco, hw)
> +
> +static int clk_vco_prepare(struct clk_hw *hw)
> +{
> +       return regulator_enable(to_clk_vco(hw)->supply);
> +}
> +
> +static void clk_vco_unprepare(struct clk_hw *hw)
> +{
> +       regulator_disable(to_clk_vco(hw)->supply);
> +}
> +
> +static int clk_vco_enable(struct clk_hw *hw)
> +{
> +       gpiod_set_value(to_clk_vco(hw)->enable_gpio, 1);
> +       return 0;
> +}
> +
> +static void clk_vco_disable(struct clk_hw *hw)
> +{
> +       gpiod_set_value(to_clk_vco(hw)->enable_gpio, 0);
> +}

It looks similar to clk-gpio.c code, but not as complete because it
assumes gpios can't sleep. Please look into reusing that code somehow,
possibly exporting 'clk_gpio_gate_ops' and struct clk_gpio for use in
this new driver. It would be good to fold the sleepable gpio bit as well
somehow, maybe with a new function to get a device's gpiod along with
returning a const pointer to the clk_ops that can be copied and amended
with the regulator part.

> +
> +static unsigned long clk_vco_recalc_rate(struct clk_hw *hw,
> +                                              unsigned long parent_rate)
> +{
> +       return to_clk_vco(hw)->rate;
> +}
> +
> +const struct clk_ops clk_vco_ops = {
> +       .prepare = clk_vco_prepare,
> +       .unprepare = clk_vco_unprepare,
> +       .enable = clk_vco_enable,
> +       .disable = clk_vco_disable,
> +       .recalc_rate = clk_vco_recalc_rate,
> +};
> +
> +static int clk_vco_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct clk_vco *clkgen;
> +       const char *clk_name;
> +       int ret;
> +
> +       clkgen = devm_kzalloc(dev, sizeof(*clkgen), GFP_KERNEL);
> +       if (!clkgen)
> +               return -ENOMEM;
> +
> +       clkgen->dev = dev;

Is this used outside of probe? Why stash it?

> +
> +       if (device_property_read_u32(dev, "clock-frequency", &clkgen->rate))
> +               return dev_err_probe(dev, -EIO, "failed to get clock-frequency");
> +
> +       ret = device_property_read_string(dev, "clock-output-names", &clk_name);
> +       if (ret)
> +               clk_name = fwnode_get_name(dev->fwnode);
> +
> +       clkgen->supply = devm_regulator_get_optional(dev, "vdd");
> +       if (IS_ERR(clkgen->supply)) {
> +               if (PTR_ERR(clkgen->supply) != -ENODEV)
> +                       return dev_err_probe(dev, PTR_ERR(clkgen->supply),
> +                                            "failed to get regulator\n");
> +               clkgen->supply = NULL;
> +       }
> +
> +       clkgen->enable_gpio = devm_gpiod_get_optional(dev, "enable",
> +                                                     GPIOD_OUT_LOW);
> +       if (IS_ERR(clkgen->enable_gpio))
> +               return dev_err_probe(dev, PTR_ERR(clkgen->enable_gpio),
> +                                    "failed to get gpio\n");
> +
> +       ret = gpiod_direction_output(clkgen->enable_gpio, 0);
> +       if (ret < 0)
> +               return dev_err_probe(dev, ret, "failed to set gpio output");

Missing newline.

> +
> +       clkgen->hw.init = CLK_HW_INIT_NO_PARENT(clk_name, &clk_vco_ops, 0);
> +
> +       /* register the clock */
> +       ret = devm_clk_hw_register(dev, &clkgen->hw);
> +       if (ret)
> +               return dev_err_probe(dev, ret,
> +                                    "failed to register clock\n");
> +

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
