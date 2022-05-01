Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26265C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 May 2022 07:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQ7PM10/vrXnQHJQqljEQS8tWQ80+JwaLn4l0hV5X8M=; b=JetpefdDJE4kn3
	eiMOkIP9QQ1Omb0LVOFRgJ9JqslY/6m4k2mpO8jYF2EjW2EQK+DyMR3KsLypjih4rV1jLsDE58Dxx
	EezvZgFa0ZnFznbRULQ0aYoAO0fNEUfwQx4lvx/aYr78aXNtbbF3yBTYjldqohgi+cPChIiBVuBtP
	5AozWQF64O1+qfExUAEQ+8xc1KjypsslVu60eWXv7K9Tz5NGJGoPbUbEWhiJ/82/FerFD3eGLZC1K
	PKV+qLuSxlIkBvvpudjR7ByS7mmKg/JMx0yD/vPYFE/Zd9zPN3keKmuCGDdzzAzzZ0P8shn6wReEY
	lx4C7COt25AA+EI0+jJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nl3fE-00FiDs-SL; Sun, 01 May 2022 07:06:40 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nl3fC-00FiCl-Jf; Sun, 01 May 2022 07:06:39 +0000
Received: by mail-ej1-x62c.google.com with SMTP id y3so22562927ejo.12;
 Sun, 01 May 2022 00:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=x8T0l3ePxEo0tPa3nLCaVVv3kLYt0vca+nm1RdbXgmU=;
 b=Yo5O3EgiMQ0ZlebWvAXvbrxwCC3Aa+BZtg6kyYXMeJ8vpyo1yfB95uK5ni+LptP+nl
 gCdl9e5FaqaK7cwYvdbaKvTCl6EAZp8r1G/QDCuJT7S01ZPyJPRchQro1MDWZQ62zydE
 48UIuJs9psLLaaSOeAzgJt8jX45iSesfBrj7jni3Qs+/2ffgtYc7qbSxuIlTV9v0h8Ia
 B/3vjy5tsd0yNy4+rQacs34rkx4UJq/kTLpupA0nTbk3lBWmUl1VQJLeACn6woO9hqkp
 w58IEe6BAcci+MO03p0OTbMFCt+nCh0B75t/CmxfQ/e5gWHNc7ekzL3ZDegn22l9uKw7
 lOxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=x8T0l3ePxEo0tPa3nLCaVVv3kLYt0vca+nm1RdbXgmU=;
 b=bA6onMqXPyVPPjUtlX6n2Ki+sYKCL+f2I1m4U3kTqq3vu5ZdPdO8rn9Mw9wxL1eyRC
 h3aKz1VmaJxIp0ON2oDWvgUwdQg2BkrpEIsYPPS7rc4ollN2z7/C2JtWRt4vUzQhXjEx
 Rtx2VvJq6ZLvYo1XPiigM8anFtaEL8An4TS7sk2Nj91NoAWnxLGQZc9ZkXQEi90PrUrM
 YCWT1kAbFn6Yuq800pWpAVqsyp32keM/5jdcetyjeL1Z40coli34rNyDgEnQpNhM4BTx
 a3HRy0+H9dBcPXPyuWYT3h7NvbFy6RHmM3Qc2nqywYpQaJjnUHrjylyTpv+5F2UZ6d8u
 E58g==
X-Gm-Message-State: AOAM531V+fYwwLIvKZ4Sc5uNkGR/Yyoj5y072BTQ1KwiX92CnVfcpN7j
 q+7h+YGlU579hb9kCbrYB3Q=
X-Google-Smtp-Source: ABdhPJzTW1au6Hq8+LkxfQRJRfHQIxpwiLzl7XquNFMAD+nZQL7T6Uji+LhedVpwD1C0N9xh0HE4+w==
X-Received: by 2002:a17:907:6da5:b0:6f3:c4b1:378b with SMTP id
 sb37-20020a1709076da500b006f3c4b1378bmr6515327ejc.307.1651388795791; 
 Sun, 01 May 2022 00:06:35 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 hw7-20020a170907a0c700b006f3ef214e18sm2336790ejc.126.2022.05.01.00.06.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 May 2022 00:06:35 -0700 (PDT)
Message-ID: <46548c93-4e6d-858c-8b79-03be9326c92a@gmail.com>
Date: Sun, 1 May 2022 09:06:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v2 5/7] arm64: dts: rockchip: add Pine64 Quartz64-B device
 tree
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220429115252.2360496-1-pgwipeout@gmail.com>
 <20220429115252.2360496-6-pgwipeout@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220429115252.2360496-6-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220501_000638_722959_058F9A35 
X-CRM114-Status: GOOD (  18.20  )
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



On 4/29/22 13:52, Peter Geis wrote:
> Add a device tree for the Pine64 Quartz64 Model B single board computer.
> This board ouputs debug on uart2 and supports the following components:
> Gigabit Ethernet
> USB2 x2 (one port otg capable)
> USB3
> PCIe/SATA M2
> HDMI
> DSI (RPi compatible pinout)
> CSI (RPi compatible pinout)
> A/B/G/N WiFi
> Bluetooth
> SDMMC
> eMMC
> SPI Flash
> PI-40 compatible pin header
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 615 ++++++++++++++++++
>  2 files changed, 616 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 4ae9f35434b8..252ee47b8a1d 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -59,5 +59,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> new file mode 100644
> index 000000000000..184ab7e1d178
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -0,0 +1,615 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3566.dtsi"
> +
> +/ {
> +	model = "Pine64 RK3566 Quartz64-B Board";
> +	compatible = "pine64,quartz64-b", "rockchip,rk3566";
> +

[..]

> +
> +&mdio1 {

> +	rgmii_phy1: ethernet-phy@0 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x1>;

Hi,

The reg value doesn't match the node name.
Other 2 boards use "reg = <0>" with label "rgmii_phy1".
Could you check?

Johan

> +	};
> +};
> +

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
