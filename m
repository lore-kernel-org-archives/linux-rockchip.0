Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B91C7C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 00:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oj1mIzHiUD108poZqRSnwODrPTJIuNVjKL3YXLbAXx8=; b=m02/t8T+tCBX2f
	34+IetLxpVHmJIX9Cqes8NgzFHNzG1r2LJauvFV9G5CtbqiDc0lx+VAT4p7OBQBcxZOuteXKfhDp1
	/K6QKMMT6ZgpyIbPBC9V6kiGqY2dz8lAYLB9DYmd7QiB1joJJkJ02OcczLPpBXmt1+1Ur6aESD14O
	ixuDEj2a38hQJlSVlFF8M1tUD2kj0IqpKDhYGaeTilSNrLkwrpmYd7aVvDYsn8ba/oiKxq6yh9O/j
	AEOO2ioxWl5NyDCckfpd+68E+nxw/qifRLbfENlnEulko9PmISPseYSUGP/qm4yqBHnsHnQuFjbYx
	SllQ7FcMzTthW6LCTNng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSRb4-000xGn-38;
	Wed, 24 Jan 2024 00:58:30 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSRay-000xFV-2d;
	Wed, 24 Jan 2024 00:58:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706057901;
	bh=al7R95D+C2woyVqs5DbpxGVGpHHf8O78JLDnxNkJK3E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=2haRJJLXlx/nQrEk+J41rkiz+7O6rZXpKno9CzHeNbGdrLgqhjZzEA0oDXaj5s9jL
	 5dYVQV/oN5oO/cl3nG//7wpbtXMlu5dmnzg2uvxjbtBYkMr+Jc2jvzW9lwVu797cYc
	 b2m+rSrRBLBvZF/MiXndlpULeBWKTOW8vY4Y6CbjDQSugt55KDunGpkZpZnADeGJqn
	 bW9XUc+ERwpbTBd916emZbN5qvZXRG0YCFC3SE8BXPOvcKV58nLqj+riTkWarxlOhI
	 sqmnYUXuSgwk9sO2k6P97fnbJrfPgJTlq2avH18Hze1ovY8GvocyzoKWjxfKYwGUQP
	 fQeORGWwgeOWw==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D1EBD3782074;
	Wed, 24 Jan 2024 00:58:20 +0000 (UTC)
Message-ID: <00c749f7-3eb9-4bd1-a057-43a692b77d68@collabora.com>
Date: Wed, 24 Jan 2024 02:58:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: rockchip: Add Samsung HDMI/DP Combo PHY driver
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, Algea Cao <algea.cao@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
 <20240119193806.1030214-4-cristian.ciocaltea@collabora.com>
 <20240122121409.GW4700@pengutronix.de>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20240122121409.GW4700@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_165825_000407_796D7673 
X-CRM114-Status: GOOD (  31.20  )
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

On 1/22/24 14:14, Sascha Hauer wrote:
> On Fri, Jan 19, 2024 at 09:38:03PM +0200, Cristian Ciocaltea wrote:
>> Add driver for the Rockchip HDMI/eDP TX Combo PHY found on RK3588 SoC.
>>
>> The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
>> and eDP links.  The maximum data rate is 12Gbps (HDMI 2.1 FRL), while
>> the minimum is 250Mbps (HDMI 2.1 TMDS).
>>
>> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
>> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  drivers/phy/rockchip/Kconfig                  |    8 +
>>  drivers/phy/rockchip/Makefile                 |    1 +
>>  .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 2045 +++++++++++++++++
>>  3 files changed, 2054 insertions(+)
>>  create mode 100644 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>>
>> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
>> index 94360fc96a6f..95666ac6aa3b 100644
>> --- a/drivers/phy/rockchip/Kconfig
>> +++ b/drivers/phy/rockchip/Kconfig
>> @@ -83,6 +83,14 @@ config PHY_ROCKCHIP_PCIE
>>  	help
>>  	  Enable this to support the Rockchip PCIe PHY.
>>  
>> +config PHY_ROCKCHIP_SAMSUNG_HDPTX
>> +	tristate "Rockchip Samsung HDMI/DP Combo PHY driver"
>> +	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
>> +	select GENERIC_PHY
>> +	help
>> +	  Enable this to support the Rockchip HDMI/DP Combo PHY
>> +	  with Samsung IP block.
>> +
>>  config PHY_ROCKCHIP_SNPS_PCIE3
>>  	tristate "Rockchip Snps PCIe3 PHY Driver"
>>  	depends on (ARCH_ROCKCHIP && OF) || COMPILE_TEST
>> diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
>> index 7eab129230d1..3d911304e654 100644
>> --- a/drivers/phy/rockchip/Makefile
>> +++ b/drivers/phy/rockchip/Makefile
>> @@ -8,6 +8,7 @@ obj-$(CONFIG_PHY_ROCKCHIP_INNO_HDMI)	+= phy-rockchip-inno-hdmi.o
>>  obj-$(CONFIG_PHY_ROCKCHIP_INNO_USB2)	+= phy-rockchip-inno-usb2.o
>>  obj-$(CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY)	+= phy-rockchip-naneng-combphy.o
>>  obj-$(CONFIG_PHY_ROCKCHIP_PCIE)		+= phy-rockchip-pcie.o
>> +obj-$(CONFIG_PHY_ROCKCHIP_SAMSUNG_HDPTX)	+= phy-rockchip-samsung-hdptx.o
>>  obj-$(CONFIG_PHY_ROCKCHIP_SNPS_PCIE3)	+= phy-rockchip-snps-pcie3.o
>>  obj-$(CONFIG_PHY_ROCKCHIP_TYPEC)	+= phy-rockchip-typec.o
>>  obj-$(CONFIG_PHY_ROCKCHIP_USB)		+= phy-rockchip-usb.o
>> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> new file mode 100644
>> index 000000000000..d8171ea5ce2b
>> --- /dev/null
>> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>> @@ -0,0 +1,2045 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Copyright (c) 2021-2022 Rockchip Electronics Co., Ltd.
>> + * Copyright (c) 2024 Collabora Ltd.
>> + *
>> + * Author: Algea Cao <algea.cao@rock-chips.com>
>> + * Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> + */
>> +#include <linux/bitfield.h>
>> +#include <linux/clk.h>
>> +#include <linux/delay.h>
>> +#include <linux/mfd/syscon.h>
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/of_platform.h>
>> +#include <linux/phy/phy.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/rational.h>
>> +#include <linux/regmap.h>
>> +#include <linux/reset.h>
>> +
>> +#define GRF_HDPTX_CON0			0x00
>> +#define HDPTX_I_PLL_EN			BIT(7)
>> +#define HDPTX_I_BIAS_EN			BIT(6)
>> +#define HDPTX_I_BGR_EN			BIT(5)
>> +#define GRF_HDPTX_STATUS		0x80
>> +#define HDPTX_O_PLL_LOCK_DONE		BIT(3)
>> +#define HDPTX_O_PHY_CLK_RDY		BIT(2)
>> +#define HDPTX_O_PHY_RDY			BIT(1)
>> +#define HDPTX_O_SB_RDY			BIT(0)
>> +
>> +#define CMN_REG0000			0x0000
> 
> These register names are not particularly helpful. Maybe use a
> 
> #define CMN_REG(x)			((x) * 4)
> 
> Instead?

Yes, sounds good.

>> +
>> +static int hdptx_lcpll_frl_mode_config(struct rockchip_hdptx_phy *hdptx,
>> +				       u32 rate)
>> +{
>> +	u32 bit_rate = rate & DATA_RATE_MASK;
>> +	u8 color_depth = (rate & COLOR_DEPTH_MASK) ? 1 : 0;
>> +	const struct lcpll_config *cfg = lcpll_cfg;
>> +
>> +	for (; cfg->bit_rate != ~0; cfg++)
>> +		if (bit_rate == cfg->bit_rate)
>> +			break;
> 
> You could use ARRAY_SIZE() to iterate over the array and save the extra
> entry at the end. Likewise for the other arrays used in the driver.

Sure, will do.

>> +
>> +	if (cfg->bit_rate == ~0)
>> +		return -EINVAL;
>> +
> 
>> +static int rockchip_hdptx_phy_power_on(struct phy *phy)
>> +{
>> +	struct rockchip_hdptx_phy *hdptx = phy_get_drvdata(phy);
>> +	int bus_width = phy_get_bus_width(hdptx->phy);
>> +	int bit_rate = bus_width & DATA_RATE_MASK;
> 
> What is going on here? bus_width is set to 8 in probe() using
> phy_set_bus_width(), but the value you pull out of phy_get_bus_width()
> is expected to contain the bit_rate and several other flags.
> 
> It looks like you are tunneling flags from some other driver using this
> field. Isn't there a better way to accomplish this? If not, I think this
> needs some explanation.

Indeed, sorry for missing a comment here.  The flags are set by the
bridge driver to enable 10-bit color depth, FRL and EARC.  So far I
couldn't find an alternative approach to pass custom data using the PHY API.

> At least the variable should be renamed. it's called "bus_width" and it's
> passed to functions like hdptx_lcpll_frl_mode_config() which has this
> parameter named "rate" which is quite confusing.

I think for the initial support it's not really necessary to implement
all those features.  Andy, should we drop them until a better solution
is found?

> Sascha

Thanks for the review,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
