Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F046AC63798
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 18:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwqDG8iVzibr2Y2oUjBswj2zWC0xSt6XmcFvDIle1IY=; b=DhNMJ172M/+KEX
	OvKREI+Av5TZq/oJjQQdUtWLepnv8OWS93krPXGpXN2+DAokOTJq+5lTDB7iRXpeZ4QmnvgUpF4cK
	DR7zDKKyoPZPS1tMECD7QgRFSLPiCv1MHaXIc07SCxmedSTG39SmMClWng/mezZI2lHaFXdw4imfJ
	GsYeIF0C/jHvu3nj1mpBEyuuSBH8mPBCVgfLN9hgqnIUAO+SGRaHGEbDcpiW0WaIPwQgASh8JKDXd
	I49DqfxNUKDVSJAUFcrElZDp+LzLNbl7Oxhp/FaxwnrM9vCxUcVYEdnPBMKCNPH10K+47UhJ/EoOi
	I78fMuCvb6qJ6cKORiMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjNT5-0000000Gat7-25Ic;
	Wed, 28 Aug 2024 18:32:31 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjNRY-0000000GaYu-439F;
	Wed, 28 Aug 2024 18:30:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C555DCE18EF;
	Wed, 28 Aug 2024 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5CFEC4CEC0;
	Wed, 28 Aug 2024 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724869854;
	bh=gm5wNgQPq8zaVU7WuCxl/FdzOHpdZQaZpErO5w9GDQM=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=MvG5hgj0NmlYgc1Sij1LzfvqO6t7R1LgrCmV86zeZytuUxASd4oabSkCHo2Egn8om
	 QxH23Drc+3JEHYkKGGMhkydBAop5+DydNF37PdRcBkexev+IX0Fj7hxdpv0WuNAgaw
	 krV40gE6FWVNh0bDpMPqUWOmtHfHRY/7U0lF7CZQhOlRSSTyI1kepawtXtXXslHV5T
	 amINvbq/7aOOBah1N0RSYeoKBk8EWPArYZh7H2929jWbUJspuk+V+cIUJSMWR+W1yS
	 2wPWce9I/FX8fhDXbi0z7QudtnqvSAQ0kxFCbvv4bmdrNi3E/rh5SzgHPn0r4Urzql
	 0C7hUMRYpMZUA==
Message-ID: <9b92b5f03632e8793253ba75fc00f6e3.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240828101503.1478491-5-heiko@sntech.de>
References: <20240828101503.1478491-1-heiko@sntech.de> <20240828101503.1478491-5-heiko@sntech.de>
Subject: Re: [PATCH v3 4/5] clk: clk-gpio: add driver for gated-fixed-clocks
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Wed, 28 Aug 2024 11:30:51 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_113057_384107_D44FF21B 
X-CRM114-Status: GOOD (  25.16  )
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

Quoting Heiko Stuebner (2024-08-28 03:15:02)
> diff --git a/drivers/clk/clk-gpio.c b/drivers/clk/clk-gpio.c
> index cda362a2eca0..8bcdef340b4c 100644
> --- a/drivers/clk/clk-gpio.c
> +++ b/drivers/clk/clk-gpio.c
> @@ -239,3 +240,184 @@ static struct platform_driver gpio_clk_driver = {
>         },
>  };
>  builtin_platform_driver(gpio_clk_driver);
> +
> +/**
> + * DOC: gated fixed clock, controlled with a gpio output and a regulator
> + * Traits of this clock:
> + * prepare - clk_prepare and clk_unprepare are function & control regulator
> + *           optionally a gpio that can sleep
> + * enable - clk_enable and clk_disable are functional & control gpio
> + * rate - rate is fixed and set on clock generation

Maybe 'clock registration'

> + * parent - fixed clock is a root clock and has no parent.

Not sure why this one gets the period while other lines above don't.

> + */
> +
> +/**
> + * struct clk_gate_fixed - gated-fixed-clock
> + *
> + * clk_gpio:   instance of clk_gpio for gate-gpio
> + * supply:     supply regulator
> + * rate:       fixed rate
> + */
> +struct clk_gated_fixed {
> +       struct clk_gpio clk_gpio;
> +       struct regulator *supply;
> +       u32 rate;

unsigned long rate to match the CCF type please.

> +};
> +
> +#define to_clk_gated_fixed(_clk_gpio) container_of(_clk_gpio, struct clk_gated_fixed, clk_gpio)
> +
> +static unsigned long clk_gated_fixed_recalc_rate(struct clk_hw *hw,
> +                                                unsigned long parent_rate)
> +{
> +       return to_clk_gated_fixed(to_clk_gpio(hw))->rate;
> +}
> +
> +static int clk_gated_fixed_prepare(struct clk_hw *hw)
> +{
> +       struct clk_gated_fixed *clk = to_clk_gated_fixed(to_clk_gpio(hw));
> +
> +       if (!clk->supply)
> +               return 0;
> +
> +       return regulator_enable(clk->supply);
> +}
> +
> +static void clk_gated_fixed_unprepare(struct clk_hw *hw)
> +{
> +       struct clk_gated_fixed *clk = to_clk_gated_fixed(to_clk_gpio(hw));
> +
> +       if (!clk->supply)
> +               return;
> +
> +       regulator_disable(clk->supply);
> +}
> +
> +static int clk_gated_fixed_is_prepared(struct clk_hw *hw)
> +{
> +       struct clk_gated_fixed *clk = to_clk_gated_fixed(to_clk_gpio(hw));
> +
> +       if (!clk->supply)
> +               return true;
> +
> +       return regulator_is_enabled(clk->supply);
> +}
> +
> +/*
> + * Fixed gated clock with non-sleeping gpio.
> + *
> + * Prepare operation turns on the supply regulator
> + * and the enable operation switches the enable-gpio.
> + */
> +const struct clk_ops clk_gated_fixed_ops = {

static

> +       .prepare = clk_gated_fixed_prepare,
> +       .unprepare = clk_gated_fixed_unprepare,
> +       .is_prepared = clk_gated_fixed_is_prepared,
> +       .enable = clk_gpio_gate_enable,
> +       .disable = clk_gpio_gate_disable,
> +       .is_enabled = clk_gpio_gate_is_enabled,
> +       .recalc_rate = clk_gated_fixed_recalc_rate,
> +};
> +
> +static int clk_sleeping_gated_fixed_prepare(struct clk_hw *hw)
> +{
> +       int ret;
> +
> +       ret = clk_gated_fixed_prepare(hw);
> +       if (ret)
> +               return ret;
> +
> +       ret = clk_sleeping_gpio_gate_prepare(hw);
> +       if (ret)
> +               clk_gated_fixed_unprepare(hw);
> +
> +       return ret;
> +}
> +
> +static void clk_sleeping_gated_fixed_unprepare(struct clk_hw *hw)
> +{
> +       clk_gated_fixed_unprepare(hw);
> +       clk_sleeping_gpio_gate_unprepare(hw);
> +}
> +
> +/*
> + * Fixed gated clock with non-sleeping gpio.
> + *
> + * Enabling the supply regulator and switching the enable-gpio happens
> + * both in the prepare step.
> + * is_prepared only needs to check the gpio state, as toggling the
> + * gpio is the last step when preparing.
> + */
> +const struct clk_ops clk_sleeping_gated_fixed_ops = {

static

> +       .prepare = clk_sleeping_gated_fixed_prepare,
> +       .unprepare = clk_sleeping_gated_fixed_unprepare,
> +       .is_prepared = clk_sleeping_gpio_gate_is_prepared,
> +       .recalc_rate = clk_gated_fixed_recalc_rate,
> +};
> +
> +static int clk_gated_fixed_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct clk_gated_fixed *clk;
> +       const struct clk_ops *ops;
> +       const char *clk_name;
> +       int ret;
> +
> +       clk = devm_kzalloc(dev, sizeof(*clk), GFP_KERNEL);
> +       if (!clk)
> +               return -ENOMEM;
> +
> +       if (device_property_read_u32(dev, "clock-frequency", &clk->rate))

Why not return the error code?

> +               return dev_err_probe(dev, -EIO, "failed to get clock-frequency");

Missing newline on printk.

> +
> +       ret = device_property_read_string(dev, "clock-output-names", &clk_name);
> +       if (ret)
> +               clk_name = fwnode_get_name(dev->fwnode);
> +
> +       clk->supply = devm_regulator_get_optional(dev, "vdd");
> +       if (IS_ERR(clk->supply)) {
> +               if (PTR_ERR(clk->supply) != -ENODEV)
> +                       return dev_err_probe(dev, PTR_ERR(clk->supply),
> +                                            "failed to get regulator\n");
> +               clk->supply = NULL;
> +       }
> +
> +       clk->clk_gpio.gpiod = devm_gpiod_get_optional(dev, "enable",
> +                                                     GPIOD_OUT_LOW);
> +       if (IS_ERR(clk->clk_gpio.gpiod))
> +               return dev_err_probe(dev, PTR_ERR(clk->clk_gpio.gpiod),
> +                                    "failed to get gpio\n");
> +
> +       if (gpiod_cansleep(clk->clk_gpio.gpiod))
> +               ops = &clk_sleeping_gated_fixed_ops;
> +       else
> +               ops = &clk_gated_fixed_ops;
> +
> +       clk->clk_gpio.hw.init = CLK_HW_INIT_NO_PARENT(clk_name, ops, 0);
> +
> +       /* register the clock */
> +       ret = devm_clk_hw_register(dev, &clk->clk_gpio.hw);
> +       if (ret)
> +               return dev_err_probe(dev, ret,
> +                                    "failed to register clock\n");
> +
> +       ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get,
> +                                         &clk->clk_gpio.hw);
> +       if (ret)
> +               return dev_err_probe(dev, ret,
> +                                    "failed to register clock provider\n");
> +
> +       return 0;
> +}
> +
> +static const struct of_device_id gated_fixed_clk_match_table[] = {
> +       { .compatible = "gated-fixed-clock" },

Add a sentinel.

> +};
> +
> +static struct platform_driver gated_fixed_clk_driver = {
> +       .probe          = clk_gated_fixed_probe,
> +       .driver         = {
> +               .name   = "gated-fixed-clk",
> +               .of_match_table = gated_fixed_clk_match_table,
> +       },
> +};
> +builtin_platform_driver(gated_fixed_clk_driver);

The comment above builtin_platform_driver says "Each driver may only use
this macro once". Seems that we need to expand the macro.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
