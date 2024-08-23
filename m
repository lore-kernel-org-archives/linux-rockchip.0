Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23FD4C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 05:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7cX9OWWojdBAEr2Mvz3bJRq/dZnQdJVVhbYE2K7qn1E=; b=A5baud1Lw5azKq49wTr/vQvoVj
	M4kqGoc3tYJQs78iknPN6orO7h0R6cTIJQ4PnWtzGznP5YJkeYE7MobwZTVoJtEgD4b0h5M2waygg
	9+vu/0oy/yCwVGJ0PtOTcIIq+uD7IsELC5/e1tf+ZzzzJdT8ihr7zp3iSxOYLdHGcQoLPjmfUU57P
	6ahXkQ1TMSGyFi435y304/SyabnuK3BFf1b833qFTM4admoKPB1kDzynzdABF/9QHMWW1Pn+3DGiq
	3l1HWRNh7AYray9SJ7IEZpCz9R+5dZGi6lUg5tnQTmpzMkQL82yhCcS/oOlIX/rKnT4kB4N9VsuEN
	/9kNyfLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shMkm-0000000FILo-3SGi;
	Fri, 23 Aug 2024 05:22:28 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shMk1-0000000FIB9-1HO6;
	Fri, 23 Aug 2024 05:21:42 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724390499;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HzmZvveC6wUkegWFjFcZ6vvPhaoSjhDXWntSKAiTTl8=;
	b=tt6hXxNFGDsfply3auC4MRRuFYG/g4Dm1wWJ8DptWYPMMff2J4SLcVmSms9hBUPKjQJkrX
	9KJTuYDLjeWTjLa8EVbSDDUiUYdDp7ho+wVypTf5uboiyRvO1gFbxTQ+0TIHgQ+nKa6+3Z
	2r6OHSmyYTqXvQiLyg5L8ZGOWgnuJIuukYCojZFZS2o9n1/C9VohN13F4/eCwxbqUCToMt
	UhORguUlLFlQgGWvuYELTg4DtQUjL6jh6tCLJIj+GEPVJW4mXp48yKXUslcNZSg2EAcxU6
	DI/B7llbB12Th77hefD9r6WPMHxqprShobuYkEXw/cR39dI6s7012PBT0Z71Iw==
Date: Fri, 23 Aug 2024 07:21:39 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Linus
 Walleij <linus.walleij@linaro.org>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Steven Liu <steven.liu@rock-chips.com>,
 Shresth Prasad <shresthprasad7@gmail.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, Sascha Hauer
 <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 4/4] pinctrl: rockchip: Add rk3576 pinctrl support
In-Reply-To: <20240822195706.920567-5-detlev.casanova@collabora.com>
References: <20240822195706.920567-1-detlev.casanova@collabora.com>
 <20240822195706.920567-5-detlev.casanova@collabora.com>
Message-ID: <b7f6a7217f3c0b6c92668197b14ae9f2@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_222141_673197_E5A8732B 
X-CRM114-Status: GOOD (  23.68  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Detlev,

On 2024-08-22 21:53, Detlev Casanova wrote:
> From: Steven Liu <steven.liu@rock-chips.com>
> 
> Add support for the 5 rk3576 GPIO banks.
> 
> Signed-off-by: Steven Liu <steven.liu@rock-chips.com>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>

Thanks for the patch.  I had a rather detailed look at the patch,
while focusing on having no regressions introduced, and I found none.
So, please feel free to include:

Acked-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 207 +++++++++++++++++++++++++++++
>  drivers/pinctrl/pinctrl-rockchip.h |   1 +
>  2 files changed, 208 insertions(+)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c
> b/drivers/pinctrl/pinctrl-rockchip.c
> index 0eacaf10c640..914b27b5838d 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -84,6 +84,27 @@
>  		},							\
>  	}
> 
> +#define PIN_BANK_IOMUX_FLAGS_OFFSET_PULL_FLAGS(id, pins, label, 
> iom0,	\
> +					       iom1, iom2, iom3,	\
> +					       offset0, offset1,	\
> +					       offset2, offset3, pull0,	\
> +					       pull1, pull2, pull3)	\
> +	{								\
> +		.bank_num	= id,					\
> +		.nr_pins	= pins,					\
> +		.name		= label,				\
> +		.iomux		= {					\
> +			{ .type = iom0, .offset = offset0 },		\
> +			{ .type = iom1, .offset = offset1 },		\
> +			{ .type = iom2, .offset = offset2 },		\
> +			{ .type = iom3, .offset = offset3 },		\
> +		},							\
> +		.pull_type[0] = pull0,					\
> +		.pull_type[1] = pull1,					\
> +		.pull_type[2] = pull2,					\
> +		.pull_type[3] = pull3,					\
> +	}
> +
>  #define PIN_BANK_DRV_FLAGS(id, pins, label, type0, type1, type2, 
> type3) \
>  	{								\
>  		.bank_num	= id,					\
> @@ -1120,6 +1141,11 @@ static int rockchip_get_mux(struct
> rockchip_pin_bank *bank, int pin)
>  	if (bank->recalced_mask & BIT(pin))
>  		rockchip_get_recalced_mux(bank, pin, &reg, &bit, &mask);
> 
> +	if (ctrl->type == RK3576) {
> +		if ((bank->bank_num == 0) && (pin >= RK_PB4) && (pin <= RK_PB7))
> +			reg += 0x1ff4; /* GPIO0_IOC_GPIO0B_IOMUX_SEL_H */
> +	}
> +
>  	if (ctrl->type == RK3588) {
>  		if (bank->bank_num == 0) {
>  			if ((pin >= RK_PB4) && (pin <= RK_PD7)) {
> @@ -1234,6 +1260,11 @@ static int rockchip_set_mux(struct
> rockchip_pin_bank *bank, int pin, int mux)
>  	if (bank->recalced_mask & BIT(pin))
>  		rockchip_get_recalced_mux(bank, pin, &reg, &bit, &mask);
> 
> +	if (ctrl->type == RK3576) {
> +		if ((bank->bank_num == 0) && (pin >= RK_PB4) && (pin <= RK_PB7))
> +			reg += 0x1ff4; /* GPIO0_IOC_GPIO0B_IOMUX_SEL_H */
> +	}
> +
>  	if (ctrl->type == RK3588) {
>  		if (bank->bank_num == 0) {
>  			if ((pin >= RK_PB4) && (pin <= RK_PD7)) {
> @@ -2038,6 +2069,142 @@ static int rk3568_calc_drv_reg_and_bit(struct
> rockchip_pin_bank *bank,
>  	return 0;
>  }
> 
> +#define RK3576_DRV_BITS_PER_PIN		4
> +#define RK3576_DRV_PINS_PER_REG		4
> +#define RK3576_DRV_GPIO0_AL_OFFSET	0x10
> +#define RK3576_DRV_GPIO0_BH_OFFSET	0x2014
> +#define RK3576_DRV_GPIO1_OFFSET		0x6020
> +#define RK3576_DRV_GPIO2_OFFSET		0x6040
> +#define RK3576_DRV_GPIO3_OFFSET		0x6060
> +#define RK3576_DRV_GPIO4_AL_OFFSET	0x6080
> +#define RK3576_DRV_GPIO4_CL_OFFSET	0xA090
> +#define RK3576_DRV_GPIO4_DL_OFFSET	0xB098
> +
> +static int rk3576_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
> +					int pin_num, struct regmap **regmap,
> +					int *reg, u8 *bit)
> +{
> +	struct rockchip_pinctrl *info = bank->drvdata;
> +
> +	*regmap = info->regmap_base;
> +
> +	if (bank->bank_num == 0 && pin_num < 12)
> +		*reg = RK3576_DRV_GPIO0_AL_OFFSET;
> +	else if (bank->bank_num == 0)
> +		*reg = RK3576_DRV_GPIO0_BH_OFFSET - 0xc;
> +	else if (bank->bank_num == 1)
> +		*reg = RK3576_DRV_GPIO1_OFFSET;
> +	else if (bank->bank_num == 2)
> +		*reg = RK3576_DRV_GPIO2_OFFSET;
> +	else if (bank->bank_num == 3)
> +		*reg = RK3576_DRV_GPIO3_OFFSET;
> +	else if (bank->bank_num == 4 && pin_num < 16)
> +		*reg = RK3576_DRV_GPIO4_AL_OFFSET;
> +	else if (bank->bank_num == 4 && pin_num < 24)
> +		*reg = RK3576_DRV_GPIO4_CL_OFFSET - 0x10;
> +	else if (bank->bank_num == 4)
> +		*reg = RK3576_DRV_GPIO4_DL_OFFSET - 0x18;
> +	else
> +		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
> +
> +	*reg += ((pin_num / RK3576_DRV_PINS_PER_REG) * 4);
> +	*bit = pin_num % RK3576_DRV_PINS_PER_REG;
> +	*bit *= RK3576_DRV_BITS_PER_PIN;
> +
> +	return 0;
> +}
> +
> +#define RK3576_PULL_BITS_PER_PIN	2
> +#define RK3576_PULL_PINS_PER_REG	8
> +#define RK3576_PULL_GPIO0_AL_OFFSET	0x20
> +#define RK3576_PULL_GPIO0_BH_OFFSET	0x2028
> +#define RK3576_PULL_GPIO1_OFFSET	0x6110
> +#define RK3576_PULL_GPIO2_OFFSET	0x6120
> +#define RK3576_PULL_GPIO3_OFFSET	0x6130
> +#define RK3576_PULL_GPIO4_AL_OFFSET	0x6140
> +#define RK3576_PULL_GPIO4_CL_OFFSET	0xA148
> +#define RK3576_PULL_GPIO4_DL_OFFSET	0xB14C
> +
> +static int rk3576_calc_pull_reg_and_bit(struct rockchip_pin_bank 
> *bank,
> +					 int pin_num, struct regmap **regmap,
> +					 int *reg, u8 *bit)
> +{
> +	struct rockchip_pinctrl *info = bank->drvdata;
> +
> +	*regmap = info->regmap_base;
> +
> +	if (bank->bank_num == 0 && pin_num < 12)
> +		*reg = RK3576_PULL_GPIO0_AL_OFFSET;
> +	else if (bank->bank_num == 0)
> +		*reg = RK3576_PULL_GPIO0_BH_OFFSET - 0x4;
> +	else if (bank->bank_num == 1)
> +		*reg = RK3576_PULL_GPIO1_OFFSET;
> +	else if (bank->bank_num == 2)
> +		*reg = RK3576_PULL_GPIO2_OFFSET;
> +	else if (bank->bank_num == 3)
> +		*reg = RK3576_PULL_GPIO3_OFFSET;
> +	else if (bank->bank_num == 4 && pin_num < 16)
> +		*reg = RK3576_PULL_GPIO4_AL_OFFSET;
> +	else if (bank->bank_num == 4 && pin_num < 24)
> +		*reg = RK3576_PULL_GPIO4_CL_OFFSET - 0x8;
> +	else if (bank->bank_num == 4)
> +		*reg = RK3576_PULL_GPIO4_DL_OFFSET - 0xc;
> +	else
> +		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
> +
> +	*reg += ((pin_num / RK3576_PULL_PINS_PER_REG) * 4);
> +	*bit = pin_num % RK3576_PULL_PINS_PER_REG;
> +	*bit *= RK3576_PULL_BITS_PER_PIN;
> +
> +	return 0;
> +}
> +
> +#define RK3576_SMT_BITS_PER_PIN		1
> +#define RK3576_SMT_PINS_PER_REG		8
> +#define RK3576_SMT_GPIO0_AL_OFFSET	0x30
> +#define RK3576_SMT_GPIO0_BH_OFFSET	0x2040
> +#define RK3576_SMT_GPIO1_OFFSET		0x6210
> +#define RK3576_SMT_GPIO2_OFFSET		0x6220
> +#define RK3576_SMT_GPIO3_OFFSET		0x6230
> +#define RK3576_SMT_GPIO4_AL_OFFSET	0x6240
> +#define RK3576_SMT_GPIO4_CL_OFFSET	0xA248
> +#define RK3576_SMT_GPIO4_DL_OFFSET	0xB24C
> +
> +static int rk3576_calc_schmitt_reg_and_bit(struct rockchip_pin_bank 
> *bank,
> +					   int pin_num,
> +					   struct regmap **regmap,
> +					   int *reg, u8 *bit)
> +{
> +	struct rockchip_pinctrl *info = bank->drvdata;
> +
> +	*regmap = info->regmap_base;
> +
> +	if (bank->bank_num == 0 && pin_num < 12)
> +		*reg = RK3576_SMT_GPIO0_AL_OFFSET;
> +	else if (bank->bank_num == 0)
> +		*reg = RK3576_SMT_GPIO0_BH_OFFSET - 0x4;
> +	else if (bank->bank_num == 1)
> +		*reg = RK3576_SMT_GPIO1_OFFSET;
> +	else if (bank->bank_num == 2)
> +		*reg = RK3576_SMT_GPIO2_OFFSET;
> +	else if (bank->bank_num == 3)
> +		*reg = RK3576_SMT_GPIO3_OFFSET;
> +	else if (bank->bank_num == 4 && pin_num < 16)
> +		*reg = RK3576_SMT_GPIO4_AL_OFFSET;
> +	else if (bank->bank_num == 4 && pin_num < 24)
> +		*reg = RK3576_SMT_GPIO4_CL_OFFSET - 0x8;
> +	else if (bank->bank_num == 4)
> +		*reg = RK3576_SMT_GPIO4_DL_OFFSET - 0xc;
> +	else
> +		dev_err(info->dev, "unsupported bank_num %d\n", bank->bank_num);
> +
> +	*reg += ((pin_num / RK3576_SMT_PINS_PER_REG) * 4);
> +	*bit = pin_num % RK3576_SMT_PINS_PER_REG;
> +	*bit *= RK3576_SMT_BITS_PER_PIN;
> +
> +	return 0;
> +}
> +
>  #define RK3588_PMU1_IOC_REG		(0x0000)
>  #define RK3588_PMU2_IOC_REG		(0x4000)
>  #define RK3588_BUS_IOC_REG		(0x8000)
> @@ -2332,6 +2499,10 @@ static int rockchip_set_drive_perpin(struct
> rockchip_pin_bank *bank,
>  		rmask_bits = RK3568_DRV_BITS_PER_PIN;
>  		ret = (1 << (strength + 1)) - 1;
>  		goto config;
> +	} else if (ctrl->type == RK3576) {
> +		rmask_bits = RK3576_DRV_BITS_PER_PIN;
> +		ret = ((strength & BIT(2)) >> 2) | ((strength & BIT(0)) << 2) |
> (strength & BIT(1));
> +		goto config;
>  	}
> 
>  	if (ctrl->type == RV1126) {
> @@ -2469,6 +2640,7 @@ static int rockchip_get_pull(struct
> rockchip_pin_bank *bank, int pin_num)
>  	case RK3368:
>  	case RK3399:
>  	case RK3568:
> +	case RK3576:
>  	case RK3588:
>  		pull_type = bank->pull_type[pin_num / 8];
>  		data >>= bit;
> @@ -2528,6 +2700,7 @@ static int rockchip_set_pull(struct
> rockchip_pin_bank *bank,
>  	case RK3368:
>  	case RK3399:
>  	case RK3568:
> +	case RK3576:
>  	case RK3588:
>  		pull_type = bank->pull_type[pin_num / 8];
>  		ret = -EINVAL;
> @@ -2793,6 +2966,7 @@ static bool rockchip_pinconf_pull_valid(struct
> rockchip_pin_ctrl *ctrl,
>  	case RK3368:
>  	case RK3399:
>  	case RK3568:
> +	case RK3576:
>  	case RK3588:
>  		return (pull != PIN_CONFIG_BIAS_PULL_PIN_DEFAULT);
>  	}
> @@ -3949,6 +4123,37 @@ static struct rockchip_pin_ctrl rk3568_pin_ctrl 
> = {
>  	.schmitt_calc_reg	= rk3568_calc_schmitt_reg_and_bit,
>  };
> 
> +#define RK3576_PIN_BANK(ID, LABEL, OFFSET0, OFFSET1, OFFSET2, 
> OFFSET3)	\
> +	PIN_BANK_IOMUX_FLAGS_OFFSET_PULL_FLAGS(ID, 32, LABEL,		\
> +					       IOMUX_WIDTH_4BIT,	\
> +					       IOMUX_WIDTH_4BIT,	\
> +					       IOMUX_WIDTH_4BIT,	\
> +					       IOMUX_WIDTH_4BIT,	\
> +					       OFFSET0, OFFSET1,	\
> +					       OFFSET2, OFFSET3,	\
> +					       PULL_TYPE_IO_1V8_ONLY,	\
> +					       PULL_TYPE_IO_1V8_ONLY,	\
> +					       PULL_TYPE_IO_1V8_ONLY,	\
> +					       PULL_TYPE_IO_1V8_ONLY)
> +
> +static struct rockchip_pin_bank rk3576_pin_banks[] = {
> +	RK3576_PIN_BANK(0, "gpio0", 0, 0x8, 0x2004, 0x200C),
> +	RK3576_PIN_BANK(1, "gpio1", 0x4020, 0x4028, 0x4030, 0x4038),
> +	RK3576_PIN_BANK(2, "gpio2", 0x4040, 0x4048, 0x4050, 0x4058),
> +	RK3576_PIN_BANK(3, "gpio3", 0x4060, 0x4068, 0x4070, 0x4078),
> +	RK3576_PIN_BANK(4, "gpio4", 0x4080, 0x4088, 0xA390, 0xB398),
> +};
> +
> +static struct rockchip_pin_ctrl rk3576_pin_ctrl __maybe_unused = {
> +	.pin_banks		= rk3576_pin_banks,
> +	.nr_banks		= ARRAY_SIZE(rk3576_pin_banks),
> +	.label			= "RK3576-GPIO",
> +	.type			= RK3576,
> +	.pull_calc_reg		= rk3576_calc_pull_reg_and_bit,
> +	.drv_calc_reg		= rk3576_calc_drv_reg_and_bit,
> +	.schmitt_calc_reg	= rk3576_calc_schmitt_reg_and_bit,
> +};
> +
>  static struct rockchip_pin_bank rk3588_pin_banks[] = {
>  	RK3588_PIN_BANK_FLAGS(0, 32, "gpio0",
>  			      IOMUX_WIDTH_4BIT, PULL_TYPE_IO_1V8_ONLY),
> @@ -4005,6 +4210,8 @@ static const struct of_device_id
> rockchip_pinctrl_dt_match[] = {
>  		.data = &rk3399_pin_ctrl },
>  	{ .compatible = "rockchip,rk3568-pinctrl",
>  		.data = &rk3568_pin_ctrl },
> +	{ .compatible = "rockchip,rk3576-pinctrl",
> +		.data = &rk3576_pin_ctrl },
>  	{ .compatible = "rockchip,rk3588-pinctrl",
>  		.data = &rk3588_pin_ctrl },
>  	{},
> diff --git a/drivers/pinctrl/pinctrl-rockchip.h
> b/drivers/pinctrl/pinctrl-rockchip.h
> index 849266f8b191..6ebbb0a88ce7 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.h
> +++ b/drivers/pinctrl/pinctrl-rockchip.h
> @@ -197,6 +197,7 @@ enum rockchip_pinctrl_type {
>  	RK3368,
>  	RK3399,
>  	RK3568,
> +	RK3576,
>  	RK3588,
>  };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
