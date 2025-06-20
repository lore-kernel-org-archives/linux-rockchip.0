Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C60BAC71155
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 12:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9zUTM/PfB5wBRV+3rxXvCEZivGdOEMr7rXZC0gWgD8=; b=KVjy2h7E5vrEdK
	sWJM7j805cxIXYif5e/R/dzstu0yervBbR37lskBqJ7Bk9K3JhgWuJJCgXJIYoAVtnI3KZv88jB1D
	r4oZK/4DD5InQ4VkcFX9OVf/zOwd+Plh1Ttr/bzSjLmQESjqYhAPq6IpQv5Gd1e44fZ0rmvecAWqI
	UrFFhJBJ1891vS/6iowhkvzgUyeryF+2ZdtTIii8za4KTm4ehCqeScBwEG22BIojTTOqACxBMULA6
	d8jzTREXL46UpCAh6+jy84o/0aotGciq8QTLfNXYSw4NLYewmysuBjq/EJ2s95HUG1QrrZK2sNM8j
	4oJX0LlG09emX9EsPmCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaRU-0000000FWUj-3nd0;
	Fri, 20 Jun 2025 12:02:00 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSa1P-0000000FTVk-1X1f
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Jun 2025 11:35:04 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-450ce671a08so11090695e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Jun 2025 04:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750419301; x=1751024101; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mSb/WJqG6Ly3nh1AG/W9OmaMQWkMp8HS6RDgfGbzx/I=;
        b=SCeR2X0YxrDV7RnAp89S81KtU5UwQLnBhM5F3m+0rs5jPY3NaD/xJgVSHUa9LZPHVm
         vCKsN49d3+ryzh3JktZkGTrEVlsDTOkKasgW0y0HoFG21FzBXnCSiw9ax+MxBAYpSNYI
         Ai/6Y+PrtXYx/oNkfIapyGmxePVEOvfDtW3x7YHTxcZaw0F4Rus3GReJdL3L9ZNGgEEy
         Y6qeTmwHeKgpUDk+LzYbBSX6Z/vLKwPc5xiU61VTb39gajdeW8BrJr8hr4O+e3ttkqCS
         7UtiyMhYwTZM4TsIvniyACz5rcBSChwoLvkQm77WJGO7pbppvfOAqEvlse25aYIaWBts
         49Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750419301; x=1751024101;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mSb/WJqG6Ly3nh1AG/W9OmaMQWkMp8HS6RDgfGbzx/I=;
        b=I/7BGLeR3GmSs6xCR4vUZwrCdb+YvcR8vLHcF8VbM4ain92259DSKYNliB1mME1MNJ
         dahbBMQYEjOu03CvoJ7W/IM1bmQasWKwAZMlC78P6qRavX5glOSG+6BOMQYH9H7g9x/i
         UETqtsrkoOX37/Xpio+nxE62Xq2kzKXVs4gvz+XOgOZl2c6pssVuesy0b39/FV2edqUU
         USQDA/yVc6ilK6I3rDv9PLJds3jegb1HsZLxdVg/9wHC3meLHJSLtGfcxHeU97XfYjmn
         zlnyiU3y/fnGB+PWXa9QfarJiWoZEto8qDukqQpN4bLSXXeERKuEoMBLa0T0AM11x1YE
         3etg==
X-Forwarded-Encrypted: i=1; AJvYcCUAs12JqKA+C0KV7VjlgcPP95zyq3TmyZ4JJpA4lQUPNrPW5SXbv0RZif3LyPrh4W0RfpS7nJ+EQEndT/bFQg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzrroT/MUqKCF4Y3WolXd4ainShvJMuUNTETn1EEk7l9WzrY1L/
	Yfk4FwVFuCnmOWz+zwMO7G8f4FOR7x3ELejSBtUwvVGFxIMpXEmruuj40XPlbzvIkCw=
X-Gm-Gg: ASbGncvqj6cAKIkuEP8oMW6zGP9/5riyprwacocLxxLe7BP9J6pyV0/DORs7YS9z5ro
	U0OJpxbAntcECxzwIv/7U7s+qrhOU5sVUs0dOV4E6vWD7uUuXTN0Av8wLwZ2JkO2E3mw1xjj6w1
	BokLxOUFVE5mpYVIKgOsZmzG3vrNTtKl/7TMmMZqNRzVQKXsx51TJpUDvc3nLsbgNM/zDE9btbi
	UDSGNS4BCfFm0cytV8XXqUuyvq8mshv36wcKglmy2Me382ybA7BCgoPGIdYhd1JO23D4PEoTNai
	odd4CrYGWA0FllMvf6tZ4owDeDYGPHfIQlg5kwGUCA/JP8oQWRQYau/RVIJlGjtZMFQAPsBvhul
	gtexd2eaWI+Ve06cVORSUQoHMZfIIjzfWkfRuKw==
X-Google-Smtp-Source: AGHT+IE1sXxRjLWuyIxfMRq0XXnIfr9OoB0veGRrzBhEEckmil/o3iPtYIVQriMIP2J3nRsToyH7gw==
X-Received: by 2002:a05:600c:3b15:b0:450:cf46:5510 with SMTP id 5b1f17b1804b1-453656c3641mr24495235e9.29.1750419301323;
        Fri, 20 Jun 2025 04:35:01 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4535ebcecb5sm56839975e9.37.2025.06.20.04.34.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jun 2025 04:35:00 -0700 (PDT)
Message-ID: <0ee2a535-82e9-4916-9755-a68695167715@linaro.org>
Date: Fri, 20 Jun 2025 12:34:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 07/13] media: rockchip: add driver for mipi csi-2
 receiver
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240220-rk3568-vicap-v8-0-9d9cbc4b524d@collabora.com>
 <20240220-rk3568-vicap-v8-7-9d9cbc4b524d@collabora.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240220-rk3568-vicap-v8-7-9d9cbc4b524d@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_043503_400224_941C531E 
X-CRM114-Status: GOOD (  31.90  )
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

On 11/06/2025 18:06, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The Rockchip RK3568 MIPI CSI-2 Receiver is a CSI-2 bridge with one
> input port and one output port. It receives the data with the help
> of an external MIPI PHY (C-PHY or D-PHY) and passes it to the
> Rockchip RK3568 Video Capture (VICAP) block.
> 
> Add a V4L2 subdevice driver for this unit.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>   MAINTAINERS                                    |   1 +
>   drivers/media/platform/rockchip/Kconfig        |   1 +
>   drivers/media/platform/rockchip/Makefile       |   1 +
>   drivers/media/platform/rockchip/rkcsi/Kconfig  |  16 +
>   drivers/media/platform/rockchip/rkcsi/Makefile |   3 +
>   drivers/media/platform/rockchip/rkcsi/rkcsi.c  | 735 +++++++++++++++++++++++++
>   6 files changed, 757 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 40d806c206be..5b9228f6ddae 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -21463,6 +21463,7 @@ M:	Michael Riesch <michael.riesch@collabora.com>
>   L:	linux-media@vger.kernel.org
>   S:	Maintained
>   F:	Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi.yaml
> +F:	drivers/media/platform/rockchip/rkcsi/
>   
>   ROCKCHIP RK3568 RANDOM NUMBER GENERATOR SUPPORT
>   M:	Daniel Golle <daniel@makrotopia.org>
> diff --git a/drivers/media/platform/rockchip/Kconfig b/drivers/media/platform/rockchip/Kconfig
> index 549f4e9f443e..96b38768c17e 100644
> --- a/drivers/media/platform/rockchip/Kconfig
> +++ b/drivers/media/platform/rockchip/Kconfig
> @@ -4,4 +4,5 @@ comment "Rockchip media platform drivers"
>   
>   source "drivers/media/platform/rockchip/rga/Kconfig"
>   source "drivers/media/platform/rockchip/rkcif/Kconfig"
> +source "drivers/media/platform/rockchip/rkcsi/Kconfig"
>   source "drivers/media/platform/rockchip/rkisp1/Kconfig"
> diff --git a/drivers/media/platform/rockchip/Makefile b/drivers/media/platform/rockchip/Makefile
> index 6aba32c8830c..932be2d3fdd6 100644
> --- a/drivers/media/platform/rockchip/Makefile
> +++ b/drivers/media/platform/rockchip/Makefile
> @@ -1,4 +1,5 @@
>   # SPDX-License-Identifier: GPL-2.0-only
>   obj-y += rga/
>   obj-y += rkcif/
> +obj-y += rkcsi/
>   obj-y += rkisp1/
> diff --git a/drivers/media/platform/rockchip/rkcsi/Kconfig b/drivers/media/platform/rockchip/rkcsi/Kconfig
> new file mode 100644
> index 000000000000..d8004198c386
> --- /dev/null
> +++ b/drivers/media/platform/rockchip/rkcsi/Kconfig
> @@ -0,0 +1,16 @@
> +config VIDEO_ROCKCHIP_CSI
> +	tristate "Rockchip MIPI CSI-2 Receiver"
> +	depends on VIDEO_DEV
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	depends on V4L_PLATFORM_DRIVERS
> +	depends on PM && COMMON_CLK
> +	select MEDIA_CONTROLLER
> +	select V4L2_FWNODE
> +	select VIDEO_V4L2_SUBDEV_API
> +	help
> +	  This is a driver for Rockchip MIPI CSI-2 Receiver. It is featured
> +	  in various Rockchips SoCs, usually in combination with a Video
> +	  Capture (VICAP) unit (see Rockchip Camera Interface (CIF) driver).
> +
> +	  To compile this driver as a module, choose M here: the module
> +	  will be called rockchip-mipi-csi.
> diff --git a/drivers/media/platform/rockchip/rkcsi/Makefile b/drivers/media/platform/rockchip/rkcsi/Makefile
> new file mode 100644
> index 000000000000..147712cbb68a
> --- /dev/null
> +++ b/drivers/media/platform/rockchip/rkcsi/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +obj-$(CONFIG_VIDEO_ROCKCHIP_CSI) += rockchip-mipi-csi.o
> +rockchip-mipi-csi-objs += rkcsi.o
> diff --git a/drivers/media/platform/rockchip/rkcsi/rkcsi.c b/drivers/media/platform/rockchip/rkcsi/rkcsi.c
> new file mode 100644
> index 000000000000..eaad3608337e
> --- /dev/null
> +++ b/drivers/media/platform/rockchip/rkcsi/rkcsi.c
> @@ -0,0 +1,735 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Rockchip MIPI CSI-2 Receiver Driver
> + *
> + * Copyright (C) 2019 Rockchip Electronics Co., Ltd.
> + * Copyright (C) 2025 Michael Riesch <michael.riesch@wolfvision.net>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_graph.h>
> +#include <linux/of_platform.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/reset.h>
> +
> +#include <media/mipi-csi2.h>
> +#include <media/v4l2-ctrls.h>
> +#include <media/v4l2-fwnode.h>
> +#include <media/v4l2-subdev.h>
> +
> +#define CSI2HOST_N_LANES     0x04
> +#define CSI2HOST_CSI2_RESETN 0x10
> +#define CSI2HOST_PHY_STATE   0x14
> +#define CSI2HOST_ERR1	     0x20
> +#define CSI2HOST_ERR2	     0x24
> +#define CSI2HOST_MSK1	     0x28
> +#define CSI2HOST_MSK2	     0x2c
> +#define CSI2HOST_CONTROL     0x40
> +
> +#define SW_CPHY_EN(x)	     ((x) << 0)
> +#define SW_DSI_EN(x)	     ((x) << 4)
> +#define SW_DATATYPE_FS(x)    ((x) << 8)
> +#define SW_DATATYPE_FE(x)    ((x) << 14)
> +#define SW_DATATYPE_LS(x)    ((x) << 20)
> +#define SW_DATATYPE_LE(x)    ((x) << 26)
> +
> +#define RKCSI_CLKS_MAX	     1
> +
> +enum {
> +	RKCSI_PAD_SINK,
> +	RKCSI_PAD_SRC,
> +	RKCSI_PAD_MAX,
> +};
> +
> +struct rkcsi_format {
> +	u32 code;
> +	u8 depth;
> +	u8 csi_dt;
> +};
> +
> +struct rkcsi_device {
> +	struct device *dev;
> +
> +	void __iomem *base_addr;
> +	struct clk_bulk_data *clks;
> +	unsigned int clks_num;
> +	struct phy *phy;
> +	struct reset_control *reset;
> +
> +	const struct rkcsi_format *formats;
> +	unsigned int formats_num;
> +
> +	struct media_pad pads[RKCSI_PAD_MAX];
> +	struct v4l2_async_notifier notifier;
> +	struct v4l2_fwnode_endpoint vep;
> +	struct v4l2_subdev sd;
> +
> +	struct v4l2_subdev *source_sd;
> +	u32 source_pad;
> +};
> +
> +static const struct v4l2_mbus_framefmt default_format = {
> +	.width = 3840,
> +	.height = 2160,
> +	.code = MEDIA_BUS_FMT_SRGGB10_1X10,
> +	.field = V4L2_FIELD_NONE,
> +	.colorspace = V4L2_COLORSPACE_RAW,
> +	.ycbcr_enc = V4L2_YCBCR_ENC_601,
> +	.quantization = V4L2_QUANTIZATION_FULL_RANGE,
> +	.xfer_func = V4L2_XFER_FUNC_NONE,
> +};
> +
> +static const struct rkcsi_format formats[] = {
> +	/* YUV formats */
> +	{
> +		.code = MEDIA_BUS_FMT_YUYV8_1X16,
> +		.depth = 16,
> +		.csi_dt = MIPI_CSI2_DT_YUV422_8B,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_UYVY8_1X16,
> +		.depth = 16,
> +		.csi_dt = MIPI_CSI2_DT_YUV422_8B,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_YVYU8_1X16,
> +		.depth = 16,
> +		.csi_dt = MIPI_CSI2_DT_YUV422_8B,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_VYUY8_1X16,
> +		.depth = 16,
> +		.csi_dt = MIPI_CSI2_DT_YUV422_8B,
> +	},
> +	/* RGB formats */
> +	{
> +		.code = MEDIA_BUS_FMT_RGB888_1X24,
> +		.depth = 24,
> +		.csi_dt = MIPI_CSI2_DT_RGB888,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_BGR888_1X24,
> +		.depth = 24,
> +		.csi_dt = MIPI_CSI2_DT_RGB888,
> +	},
> +	/* Bayer formats */
> +	{
> +		.code = MEDIA_BUS_FMT_SBGGR8_1X8,
> +		.depth = 8,
> +		.csi_dt = MIPI_CSI2_DT_RAW8,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_SGBRG8_1X8,
> +		.depth = 8,
> +		.csi_dt = MIPI_CSI2_DT_RAW8,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_SGRBG8_1X8,
> +		.depth = 8,
> +		.csi_dt = MIPI_CSI2_DT_RAW8,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_SRGGB8_1X8,
> +		.depth = 8,
> +		.csi_dt = MIPI_CSI2_DT_RAW8,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_SBGGR10_1X10,
> +		.depth = 10,
> +		.csi_dt = MIPI_CSI2_DT_RAW10,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_SGBRG10_1X10,
> +		.depth = 10,
> +		.csi_dt = MIPI_CSI2_DT_RAW10,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_SGRBG10_1X10,
> +		.depth = 10,
> +		.csi_dt = MIPI_CSI2_DT_RAW10,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_SRGGB10_1X10,
> +		.depth = 10,
> +		.csi_dt = MIPI_CSI2_DT_RAW10,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_SBGGR12_1X12,
> +		.depth = 12,
> +		.csi_dt = MIPI_CSI2_DT_RAW12,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_SGBRG12_1X12,
> +		.depth = 12,
> +		.csi_dt = MIPI_CSI2_DT_RAW12,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_SGRBG12_1X12,
> +		.depth = 12,
> +		.csi_dt = MIPI_CSI2_DT_RAW12,
> +	},
> +	{
> +		.code = MEDIA_BUS_FMT_SRGGB12_1X12,
> +		.depth = 12,
> +		.csi_dt = MIPI_CSI2_DT_RAW12,
> +	},
> +};
> +
> +static inline struct rkcsi_device *to_rkcsi(struct v4l2_subdev *sd)
> +{
> +	return container_of(sd, struct rkcsi_device, sd);
> +}
> +
> +static inline __maybe_unused void rkcsi_write(struct rkcsi_device *csi_dev,
> +					      unsigned int addr, u32 val)
> +{
> +	writel(val, csi_dev->base_addr + addr);
> +}
> +
> +static inline __maybe_unused u32 rkcsi_read(struct rkcsi_device *csi_dev,
> +					    unsigned int addr)
> +{
> +	return readl(csi_dev->base_addr + addr);
> +}
> +
> +static const struct rkcsi_format *
> +rkcsi_find_format(struct rkcsi_device *csi_dev, u32 mbus_code)
> +{
> +	const struct rkcsi_format *format;
> +
> +	WARN_ON(csi_dev->formats_num == 0);
> +
> +	for (int i = 0; i < csi_dev->formats_num; i++) {
> +		format = &csi_dev->formats[i];
> +		if (format->code == mbus_code)
> +			return format;
> +	}
> +
> +	return NULL;
> +}
> +
> +static int rkcsi_start(struct rkcsi_device *csi_dev)
> +{
> +	struct media_pad *source_pad =
> +		&csi_dev->source_sd->entity.pads[csi_dev->source_pad];
> +	enum v4l2_mbus_type bus_type = csi_dev->vep.bus_type;
> +	union phy_configure_opts opts;
> +	s64 link_freq;
> +	u32 lanes = csi_dev->vep.bus.mipi_csi2.num_data_lanes;
> +	u32 control = 0;
> +	int ret;
> +
> +	if (lanes < 1 || lanes > 4)
> +		return -EINVAL;
> +
> +	/* set mult and div to 0, thus completely rely on V4L2_CID_LINK_FREQ */
> +	link_freq = v4l2_get_link_freq(source_pad, 0, 0);
> +	if (link_freq <= 0)
> +		return -EINVAL;
> +
> +	if (bus_type == V4L2_MBUS_CSI2_DPHY) {
> +		struct phy_configure_opts_mipi_dphy *cfg = &opts.mipi_dphy;
> +
> +		phy_mipi_dphy_get_default_config_for_hsclk(link_freq * 2, lanes,
> +							   cfg);
> +		phy_set_mode(csi_dev->phy, PHY_MODE_MIPI_DPHY);
> +		phy_configure(csi_dev->phy, &opts);

This function can return an error, shouldn't you be capturing it ?

drivers/phy/rockchip/phy-rockchip-innoc-csidphy.c::rockchip_inno_csidphy_configure();

> +
> +		control |= SW_CPHY_EN(0);
> +
> +	} else if (bus_type == V4L2_MBUS_CSI2_CPHY) {
> +		control |= SW_CPHY_EN(1);

Do you need to flag this when you are returning an error ?

Other than that looks pretty good.

---
bod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
