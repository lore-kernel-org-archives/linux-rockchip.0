Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57502C3ABB0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 12:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzCfLg3RnQJ2rAykoZtc2qDD7jKKzxbFRPOkqvq44aU=; b=xuKHUmYQzpg9EC
	BQyXsnPZ6qxw/tufzl9xsryexp9yngAsVYl/L1Y0it+tGIiNllQkzD5EYgzvfI1g0iTfP5si/gyjt
	DFkl+C4otmaHtgvHT8zFQa47cplngj7gme2UaZJ0eyUgJmACzCyKzuZqIfpAHVfcm8Oo9VlHYqt8X
	URruVfTzaetyL/ImiOiOgTDkLK2kXkKO4mVq0CFgUxCjFKEb2/rxnnMdqczr4urdnl5HZzp8As/2S
	CGwVNKwWMibcZeao6bZ4uV0Szp4YNLcjPsrzpa/PvvHqEvWbBc0Wwr7UX5d7uNbIvcfIoDA4C0lFp
	lSfOoTgjqwNUeaF+bbIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBuiw-00000007HIN-3xJR;
	Mon, 05 May 2025 12:15:06 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBuiu-00000007HHN-27J8
	for linux-rockchip@lists.infradead.org;
	Mon, 05 May 2025 12:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1746447302;
 bh=2e/MuYHAA+jWnpekvvoY+BPMl0OhYcezCPyB7/Johv8=;
 b=tXttRvQxYFb7f8RZZfTqsnjxniLYsCrXbg1VR45k7yZdMYQIU4y2YzES5wc6rtBs8WmiuhLN4
 JwNy1EUTBYkRawHeVnRLfqDtRlMczxYSxty1hvSx9Q+vjDGk2Gb4PGrL5b8mOMvO/67fZhTU7Dp
 iPF2wpiDRSPySNff3HObxoPrj8Mv9bt/TnDDbXDCooY1rtDrv+fzkTPQLTvXtFmbD4Klo886qj5
 H81y8+UQJaZFf8j8MF0wfgAqD3RQ6QWdx0TK6BOomw/66x+d8bQYb0ECPZu3fhhhfBigk+/5/ge
 VPkMx10O1Q0h90mAdfZVNBwSr47TmtThsu/YAsr93zAQ==
X-Forward-Email-ID: 6818abba07f380a11152deca
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <4dc3a05d-34eb-44d1-9855-7b8e626e1942@kwiboo.se>
Date: Mon, 5 May 2025 14:14:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Luckfox Omni3576 Board
 support
To: John Clark <inindev@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 detlev.casanova@collabora.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250502205533.51744-1-inindev@gmail.com>
 <20250504102447.153551-1-inindev@gmail.com>
 <20250504102447.153551-4-inindev@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250504102447.153551-4-inindev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_051504_892699_9CE3E956 
X-CRM114-Status: GOOD (  19.28  )
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

Hi John,

On 2025-05-04 12:24, John Clark wrote:
> Add device tree for the Luckfox Omni3576 Carrier Board with Core3576
> Module, powered by the Rockchip RK3576 SoC with four Cortex-A72 cores,
> four Cortex-A53 cores, and a Mali-G52 MC3 GPU. This initial
> implementation enables essential functionality for booting Linux and
> basic connectivity.
> 
> Supported and tested features:
>  - UART for serial console
>  - SD card for storage
>  - PCIe with NVMe SSD (detected, mounted, and fully functional)
>  - Gigabit Ethernet 0 with RGMII PHY
>  - USB 2.0 host ports
>  - RK806 PMIC for power management
>  - RTC with timekeeping and wake-up
>  - GPIO-controlled LED with heartbeat trigger
>  - eMMC (enabled, not populated on tested board)
> 
> The device tree provides a foundation for further peripheral support, such
> as WiFi, MIPI-DSI, HDMI, and Ethernet 1, in future updates.
> 
> Tested on Linux 6.15-rc4
> 
> Signed-off-by: John Clark <inindev@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../dts/rockchip/rk3576-luckfox-omni3576.dts  | 779 ++++++++++++++++++
>  2 files changed, 780 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 7948522cb225..22d74367b7e6 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -136,6 +136,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-display-vz.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-luckfox-omni3576.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-rock-4d.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3582-radxa-e52c.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dts b/arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dts
> new file mode 100644
> index 000000000000..73351ba7830c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-luckfox-omni3576.dts
> @@ -0,0 +1,779 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2024 Rockchip Electronics Co., Ltd.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include "rk3576.dtsi"
> +
> +/ {
> +	model = "Luckfox Omni3576";
> +	compatible = "luckfox,omni3576", "rockchip,rk3576";

Because this is a carrier board this should probably be something like:

  compatible = "luckfox,omni3576", "luckfox,core3576", "rockchip,rk3576";

And this .dts-file should be split up into something like:
- rk3576-luckfox-core3576.dtsi for parts related to the Core3576 SoM
- rk3576-luckfox-omni3576.dts for parts only related to the carrier board

Regards,
Jonas

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
