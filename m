Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83649C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 02:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w91Hn1/ykwhJqvSTVIpJAFu544eoG3Ot3JPqi+O7s/s=; b=33nTs4ejluEB7W
	nFFAKLIM4orgGSSWOm0ZEuhrjHaFehFRnZLraKVpQGvtT/H+iO3cI7WDlMUysaJWKFx1dVLa4srDv
	ad6nueFcmsyhiPh7+jNhkDcLnLpDFF6yii50kPfF9dg7GmiKXXe/g0DkUjiEptmYKSLiRBJAznjt6
	xvDdGH0OOyQHE6HxB8U5IRQMJMXvh0A7OSfUMliEvRy7FCFvXXhFj8xz3WLjrKuxe9R/NTC1tJ22/
	uTInr8F/najQU86cIsxF9fkSiaqWM62MVvVvjntHK35RmT0BCY/dXDr7uZwKBCLf3sTWoWDP8dyBz
	OLbytu1f/LlpbH25S9aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSTER-001Afa-16;
	Wed, 24 Jan 2024 02:43:15 +0000
Received: from mail-m15591.qiye.163.com ([101.71.155.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSTEN-001AZX-1S;
	Wed, 24 Jan 2024 02:43:13 +0000
DKIM-Signature: a=rsa-sha256;
	b=QfH2Us9Eq8B0ueN4t3tCCXCgmbIqlFl7ZJymOQuLq7M9YeL9smUzrKpL905TUTtNqsltZOxtpgQpdHkuqvWUXq0CZPZmy8JLlcS1NlFLVNWSTCiKR0ghlYv2lzXt/RCUWBVgMKQx0A0tv8P0Ew9Cyzg2QyIlvURz7W7Yw0MY5Gg=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=TAinrEkDcwYxgKcucbTjUS75lf3OZ7z9iVmkDRaZ18I=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 660777801C6;
	Wed, 24 Jan 2024 10:42:32 +0800 (CST)
Message-ID: <e1c56975-6a55-4b75-a447-dd2d0eec62e2@rock-chips.com>
Date: Wed, 24 Jan 2024 10:42:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] phy: rockchip: Add Samsung HDMI/DP Combo PHY driver
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Algea Cao <algea.cao@rock-chips.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
 <20240119193806.1030214-4-cristian.ciocaltea@collabora.com>
 <20240122121409.GW4700@pengutronix.de>
 <00c749f7-3eb9-4bd1-a057-43a692b77d68@collabora.com>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <00c749f7-3eb9-4bd1-a057-43a692b77d68@collabora.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkIdTlZNHx9NTUxKTEJLTk9VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5IVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8d395908efb24fkuuu660777801c6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NUk6ORw*MzwtCAJMAxoCKRIz
	DU8aCwJVSlVKTEtNS01PSk5IT0xCVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBQ0NITDcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_184311_998279_DE5353E9 
X-CRM114-Status: GOOD (  28.64  )
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

Hi Cristian:

On 1/24/24 08:58, Cristian Ciocaltea wrote:
> On 1/22/24 14:14, Sascha Hauer wrote:
>> On Fri, Jan 19, 2024 at 09:38:03PM +0200, Cristian Ciocaltea wrote:
>>> Add driver for the Rockchip HDMI/eDP TX Combo PHY found on RK3588 SoC.
>>>
>>> The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
>>> and eDP links.  The maximum data rate is 12Gbps (HDMI 2.1 FRL), while
>>> the minimum is 250Mbps (HDMI 2.1 TMDS).
>>>
>>> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
>>> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
>>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>> ---
>>>   drivers/phy/rockchip/Kconfig                  |    8 +
>>>   drivers/phy/rockchip/Makefile                 |    1 +
>>>   .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 2045 +++++++++++++++++
>>>   3 files changed, 2054 insertions(+)
>>>   create mode 100644 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>>>
>>> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
>>> index 94360fc96a6f..95666ac6aa3b 100644
>>> --- a/drivers/phy/rockchip/Kconfig
>>> +++ b/drivers/phy/rockchip/Kconfig
>>> @@ -83,6 +83,14 @@ config PHY_ROCKCHIP_PCIE
>>>   	help
>>>   	  Enable this to support the Rockchip PCIe PHY.
>>>   
>>> +config PHY_ROCKCHIP_SAMSUNG_HDPTX
>>> +	tristate "Rockchip Samsung HDMI/DP Combo PHY driver"
>>> +	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
>>> +	select GENERIC_PHY
>>> +	help
>>> +	  Enable this to support the Rockchip HDMI/DP Combo PHY
>>> +	  with Samsung IP block.
>>> +
>>>   config PHY_ROCKCHIP_SNPS_PCIE3
>>>   	tristate "Rockchip Snps PCIe3 PHY Driver"
>>>   	depends on (ARCH_ROCKCHIP && OF) || COMPILE_TEST
>>> diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
>>> index 7eab129230d1..3d911304e654 100644
>>> --- a/drivers/phy/rockchip/Makefile
>>> +++ b/drivers/phy/rockchip/Makefile
>>> @@ -8,6 +8,7 @@ obj-$(CONFIG_PHY_ROCKCHIP_INNO_HDMI)	+= phy-rockchip-inno-hdmi.o
>>>   obj-$(CONFIG_PHY_ROCKCHIP_INNO_USB2)	+= phy-rockchip-inno-usb2.o
>>>   obj-$(CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY)	+= phy-rockchip-naneng-combphy.o
>>>   obj-$(CONFIG_PHY_ROCKCHIP_PCIE)		+= phy-rockchip-pcie.o
>>> +obj-$(CONFIG_PHY_ROCKCHIP_SAMSUNG_HDPTX)	+= phy-rockchip-samsung-hdptx.o
>>>   obj-$(CONFIG_PHY_ROCKCHIP_SNPS_PCIE3)	+= phy-rockchip-snps-pcie3.o
>>>   obj-$(CONFIG_PHY_ROCKCHIP_TYPEC)	+= phy-rockchip-typec.o
>>>   obj-$(CONFIG_PHY_ROCKCHIP_USB)		+= phy-rockchip-usb.o
>>> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>>> new file mode 100644
>>> index 000000000000..d8171ea5ce2b
>>> --- /dev/null
>>> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
>>> @@ -0,0 +1,2045 @@
>>> +// SPDX-License-Identifier: GPL-2.0+
>>> +/*
>>> + * Copyright (c) 2021-2022 Rockchip Electronics Co., Ltd.
>>> + * Copyright (c) 2024 Collabora Ltd.
>>> + *
>>> + * Author: Algea Cao <algea.cao@rock-chips.com>
>>> + * Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>>> + */
>>> +#include <linux/bitfield.h>
>>> +#include <linux/clk.h>
>>> +#include <linux/delay.h>
>>> +#include <linux/mfd/syscon.h>
>>> +#include <linux/module.h>
>>> +#include <linux/of.h>
>>> +#include <linux/of_platform.h>
>>> +#include <linux/phy/phy.h>
>>> +#include <linux/platform_device.h>
>>> +#include <linux/rational.h>
>>> +#include <linux/regmap.h>
>>> +#include <linux/reset.h>
>>> +
>>> +#define GRF_HDPTX_CON0			0x00
>>> +#define HDPTX_I_PLL_EN			BIT(7)
>>> +#define HDPTX_I_BIAS_EN			BIT(6)
>>> +#define HDPTX_I_BGR_EN			BIT(5)
>>> +#define GRF_HDPTX_STATUS		0x80
>>> +#define HDPTX_O_PLL_LOCK_DONE		BIT(3)
>>> +#define HDPTX_O_PHY_CLK_RDY		BIT(2)
>>> +#define HDPTX_O_PHY_RDY			BIT(1)
>>> +#define HDPTX_O_SB_RDY			BIT(0)
>>> +
>>> +#define CMN_REG0000			0x0000
>>
>> These register names are not particularly helpful. Maybe use a
>>
>> #define CMN_REG(x)			((x) * 4)
>>
>> Instead?
> 
> Yes, sounds good.
> 
>>> +
>>> +static int hdptx_lcpll_frl_mode_config(struct rockchip_hdptx_phy *hdptx,
>>> +				       u32 rate)
>>> +{
>>> +	u32 bit_rate = rate & DATA_RATE_MASK;
>>> +	u8 color_depth = (rate & COLOR_DEPTH_MASK) ? 1 : 0;
>>> +	const struct lcpll_config *cfg = lcpll_cfg;
>>> +
>>> +	for (; cfg->bit_rate != ~0; cfg++)
>>> +		if (bit_rate == cfg->bit_rate)
>>> +			break;
>>
>> You could use ARRAY_SIZE() to iterate over the array and save the extra
>> entry at the end. Likewise for the other arrays used in the driver.
> 
> Sure, will do.
> 
>>> +
>>> +	if (cfg->bit_rate == ~0)
>>> +		return -EINVAL;
>>> +
>>
>>> +static int rockchip_hdptx_phy_power_on(struct phy *phy)
>>> +{
>>> +	struct rockchip_hdptx_phy *hdptx = phy_get_drvdata(phy);
>>> +	int bus_width = phy_get_bus_width(hdptx->phy);
>>> +	int bit_rate = bus_width & DATA_RATE_MASK;
>>
>> What is going on here? bus_width is set to 8 in probe() using
>> phy_set_bus_width(), but the value you pull out of phy_get_bus_width()
>> is expected to contain the bit_rate and several other flags.
>>
>> It looks like you are tunneling flags from some other driver using this
>> field. Isn't there a better way to accomplish this? If not, I think this
>> needs some explanation.
> 
> Indeed, sorry for missing a comment here.  The flags are set by the
> bridge driver to enable 10-bit color depth, FRL and EARC.  So far I
> couldn't find an alternative approach to pass custom data using the PHY API.
> 
>> At least the variable should be renamed. it's called "bus_width" and it's
>> passed to functions like hdptx_lcpll_frl_mode_config() which has this
>> parameter named "rate" which is quite confusing.
> 
> I think for the initial support it's not really necessary to implement
> all those features.  Andy, should we drop them until a better solution
> is found?

I'm fine with it.
It would be very appreciated if some linux-phy or drm bridge experts can give
some suggestions about how to pass different custom phy modes.

> 
>> Sascha
> 
> Thanks for the review,
> Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
