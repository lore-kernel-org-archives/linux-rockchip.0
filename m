Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 450DBCA1015
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 08:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fsE1xrR2Kg/6ud6nLkkXQMlXQsWbEW0CxU+hQD0HSzo=; b=oRGsLqqkzrcWbi
	hU22F/Amr2T73Njevoci+zIRDGrz8Sv7nD04Gm5MIfJvEeI/q9mmkYCKvV/LdQ24xg8carhH0tl+B
	MHLlQ1Y0Ferr/AbPui31nZ1bhODDKhuAFIt3HjgDwCs9BKdeYWZW9Y+64+Tosz2/eP1C69879jjd7
	2y0GKJrMhSgsSLG5HEXz+9bxj2sS43fH7OvItZDDYvsH1cPh8Z4yCy4j+fvGMVeHKWknKx/2CWWFS
	agZIaPEEepdGFc6kp0QP91z/dtZjbtTxh6D31i7GJnmNr2aZp8c6GTDj9bV5BgpYk4Fs6ApyXI0Xz
	iyBkTB0HJw/+jnjhHG2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuSAQ-00000000Upq-3afv;
	Fri, 05 Sep 2025 08:51:34 +0000
Received: from mail-japaneastazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c405::5] helo=TYPPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuQq0-000000000Qw-1Km5;
	Fri, 05 Sep 2025 07:26:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p8cMq0Bj+o+QcjKEzp7AxL8C2x+iChyt83TFGT6uySsuqTcfqB1B6XjPGqRuNByhQX32H5XpSwzivzTQV5wfPVTwQvQk+HlJ1LUB6rpCX2cKlgr/MMzkBQ9vkFzK70BMdy0Uo6G4Av6J6hPz0AreaewNPsSfqFWa8LUYQAOUuCRIc1ADKuJd0+HRdpG9nP8eugNdtZd6FyrIjVw2N/sd+QT/ihqu2o5mO807c4krjitXhdF1RnvlAC2e2cRdVv9tzlSZ+cocsc2AgE9zH4Oe3xWYQN6cUK5JdE6Bx/w5q+wzkrtSGSVPtsDL1awSfy9v/5FgnTBzXQJfzw/QSfvHzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SffeoXp5Xqg5ye4sKIRVDh/I2EcrGLSlkVbdCPPN1eM=;
 b=gJHaKHHbWzcEdfqCMSCYVfJcCc4SnLMtiHBAmhBGUsHZsyYxM5VyHhyUuVzQPM+uH5BnrFn7Y+4n0jhA/upQrCRg29jbbK4qR82/QdaG0glcG8ELZnoIZdq9DhVLFDjLy4CEoIRbo60tDYOTs/mrVl6awoEY+CZ0cKB+wJpNWY38DAx20A1s+3pB1LtoAIHjPPg/fxZeQYX3f/qzFY4G4JM7RPhE7oP6/qBROP0Yjqe7qk1RG2KlOgUiSgjabDb5dveAo07A6DKjSClrc0gOLydVMqiSEbNp8/6JEG8Du7wTdKAQoCX5rJ0Ji2XDevSRcpK2tprU7b+c+Ys8u9VPuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SffeoXp5Xqg5ye4sKIRVDh/I2EcrGLSlkVbdCPPN1eM=;
 b=lflsgA5btXkl0flA6ZddLg9rRMuYMRL5Hy2vLr77D/n8zYFSpkf6a4X1OCSgbxmBHRvQBFPMYMPy3ySzCnbE54EhyiJOBfhHKHXeeS1kDBgQ28jSBsCEIKwBcX0zqI0lIc1931m4v0BhK5xPH28t+QeZyQtUqsaQwDDj1s05MhK8okGZJguHhsFi7AWwYQ3xe29FO+1blkyjaVs+miDTiKPnnV78AvwsHyXNE/5kNQPebd2lrSozeUMtrrSd2Oi6r2S5XubYCe/0V65gRi/mXuGYgXk64/dep29qDCCTO4EiMRGyZQonGQoC7tScYs0PkU/+IDdkwKtCDPWW1Pvb7g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from KL1PR06MB7330.apcprd06.prod.outlook.com (2603:1096:820:146::7)
 by SEZPR06MB7185.apcprd06.prod.outlook.com (2603:1096:101:22a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.18; Fri, 5 Sep
 2025 07:26:18 +0000
Received: from KL1PR06MB7330.apcprd06.prod.outlook.com
 ([fe80::d1d3:916:af43:55f5]) by KL1PR06MB7330.apcprd06.prod.outlook.com
 ([fe80::d1d3:916:af43:55f5%4]) with mapi id 15.20.9094.018; Fri, 5 Sep 2025
 07:26:18 +0000
From: Xichao Zhao <zhao.xichao@vivo.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Guillaume La Roque <glaroque@baylibre.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Markus Mayer <mmayer@broadcom.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	zhanghongchen <zhanghongchen@loongson.cn>,
	Yinbo Zhu <zhuyinbo@loongson.cn>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Talel Shenhar <talel@amazon.com>,
	Eduardo Valentin <edubezval@gmail.com>,
	Keerthy <j-keerthy@ti.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	linux-hwmon@vger.kernel.org (open list:HARDWARE MONITORING),
	linux-kernel@vger.kernel.org (open list),
	linux-iio@vger.kernel.org (open list:IIO SUBSYSTEM AND DRIVERS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Allwinner sunXi SoC support),
	linux-sunxi@lists.linux.dev (open list:ARM/Allwinner sunXi SoC support),
	linux-pm@vger.kernel.org (open list:THERMAL),
	linux-amlogic@lists.infradead.org (open list:THERMAL DRIVER FOR AMLOGIC SOCS),
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	imx@lists.linux.dev (open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE),
	linux-arm-msm@vger.kernel.org (open list:QUALCOMM TSENS THERMAL DRIVER),
	linux-renesas-soc@vger.kernel.org (open list:RENESAS R-CAR THERMAL DRIVERS),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-samsung-soc@vger.kernel.org (open list:SAMSUNG THERMAL DRIVER),
	linux-stm32@st-md-mailman.stormreply.com (moderated list:ARM/STM32 ARCHITECTURE),
	linux-tegra@vger.kernel.org (open list:TEGRA ARCHITECTURE SUPPORT),
	linux-omap@vger.kernel.org (open list:TI BANDGAP AND THERMAL DRIVER)
Cc: Xichao Zhao <zhao.xichao@vivo.com>
Subject: [PATCH 03/12] iio: adc: Remove redundant error log prints
Date: Fri,  5 Sep 2025 15:23:55 +0800
Message-Id: <20250905072423.368123-4-zhao.xichao@vivo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250905072423.368123-1-zhao.xichao@vivo.com>
References: <20250905072423.368123-1-zhao.xichao@vivo.com>
X-ClientProxiedBy: TYCP286CA0075.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:31a::16) To KL1PR06MB7330.apcprd06.prod.outlook.com
 (2603:1096:820:146::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: KL1PR06MB7330:EE_|SEZPR06MB7185:EE_
X-MS-Office365-Filtering-Correlation-Id: 16442944-1ede-4f3e-cd0f-08ddec4d8152
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|52116014|7416014|366016|38350700014|921020;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?C3cExIArm0odrmTh2KkGZyP1KHrkzD+cAru4E3aWshu6ymbysQ05c4KHMwNq?=
 =?us-ascii?Q?7XWIfqQXmI019lxXJoZ3SRVICYYeliQRtE0/9EXjbEs7TACmiYBVOGSNSlG2?=
 =?us-ascii?Q?q5eptpT8ui5cWQxACis7znedsq5N21ANx6ekh0lL8mNN3/HHmb3gOcxa9ofG?=
 =?us-ascii?Q?DFErplMjvBYa9vIoIbhgHZ+lTkKeQbG7K6c/4OhxiBlZJFR07ni/QiHQSF3l?=
 =?us-ascii?Q?oFPgdpmh7/loixB+mscYQHB++qC+MOjv+ffE4zbAl5u1ghcaL6E95Z4TOJuv?=
 =?us-ascii?Q?jl29VZQF809iZcjpmdvP6hAiewzgOl7mEnSiSy+8tS/KQDohveT+bkHtLvRv?=
 =?us-ascii?Q?96XUkSorw4HXc5k+acEDP+vMaW4QMqSgVWsmd/duVN8lxmwCMEoZlb92ZN1a?=
 =?us-ascii?Q?gUF4W9IH3T7gkvGpr0sk9K7NqG1fCmVjUZpzKYodQEUpbZhdYNzW+19r8Kqs?=
 =?us-ascii?Q?TXDl2NO4MBaqLZVXQMl9Z3dSgz5STk3hNRxiJP7R06HvXL7+3et9atiu8zMY?=
 =?us-ascii?Q?UElDkB2LEfU3dSLpyLmldHr/DkA6p6zvCDY6PRCt9Bo4WubyyXM2IplBFQlm?=
 =?us-ascii?Q?ILEPOeRSrMHU3fL41JqaKdRVFxXLmUe4opWm7ZDrtTJ8xWDGWh/juR7hhbkB?=
 =?us-ascii?Q?uzRgb9Vv5kr10+e+zcdFqXwKge5kaygHkcTwa5aNdpnWK8FDvAeu5c/9xBey?=
 =?us-ascii?Q?5YXVfuHdIC2YG8AR6MYckECL3n5favH2CqyYCnVEkldxvYCwF2sqAxLSc9m4?=
 =?us-ascii?Q?4IwO0Ame2eI9VvvmKl5MGKUeIPgGa7YiQ1VnNrXDaRcrWFM7kWCLGoCYyD4G?=
 =?us-ascii?Q?gtP3m2aDgfz9j1I2QHz5bSP2B/xWjyNQzWGZnT/uVx2oWbXGvB80wH10+n6+?=
 =?us-ascii?Q?7+yiZ+HoUO0LgLNlAnzK91AA7883VQV6h3VQ2i+z5Zfx98e73UGi6u8YCW7T?=
 =?us-ascii?Q?eD7aXDfxm9YD81UnDppYfnKSBlLoU9Q7TaiITxqoSyu24ZjTQ8l7AAnSDX/Q?=
 =?us-ascii?Q?RfsV9aYrDIv8PQBMK7inwcf2OcD69YGhlUa9dzTZtjQ8CDIveInz/W0NIZS3?=
 =?us-ascii?Q?wVPNeanWNt10GcsLfOWoV4CaI6RPYNACJKR1uyypMrFNEmdEyXV4RJ8JAlQv?=
 =?us-ascii?Q?0OkhKQ/rSfK03dsNCHiavK54z38ZaeXjz3y5fmWeg9sdKry/AwybGOrtxS8S?=
 =?us-ascii?Q?/9s1YDbT2TETsmku29ZY8vg98hjWBui3l5T4ciQL6fr14XKUoRP2TDufCfZ/?=
 =?us-ascii?Q?T/mQiWQWCx0oaXs0Y3nvJdWxc0r9OZRinv1Z8+a4/iW026MaeANKGPbKBEY+?=
 =?us-ascii?Q?lzptmSx0b2y0RISQC+gFAnEoFVqC8zbK9yNNSF01jOqHjUU0Gwx+w3D0CP4g?=
 =?us-ascii?Q?MhxhFZBmPlbugcSC+aNtsdrMagsijx+P5+TJSQHtdPkH8kltkWdvRpj4g01w?=
 =?us-ascii?Q?nigILdTooGBrO4Umv5I8mCr06LyJU3h5MzlYdP2duuDV38TcIO1KzlIa4aU3?=
 =?us-ascii?Q?3ThMpl3pmBor9y0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR06MB7330.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(52116014)(7416014)(366016)(38350700014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WExwYx7nLfVAHEA075Ze4QNjopD5MQzCw5IYpnv1/FBjsjaUlUMXGilzID4Y?=
 =?us-ascii?Q?TCZ/Fqw194u02ZErrNMeD6cgKG1C0wcchX3XCNJHJlvrO6m51enwherwvak2?=
 =?us-ascii?Q?k/qjGkQ8noMT4g1T5R6tFn+z9tg2Lj0MlZlm1A8FoEZYzOMvJkXz5Y38msgE?=
 =?us-ascii?Q?Wyc/DEmW/NzKBOJNl1sETxA/iTpbg6VwGrJ3yBZWm2pxQFoSvKfA2qHArDWa?=
 =?us-ascii?Q?ftqjKiH5h/xuzerzcJFQFwvrE7jkxGMzV2Se6IAiUzlNEIGuADWE1zMsVaFV?=
 =?us-ascii?Q?uQU0w8NxlxddKXIfk7k3AfBApD5NYQsHs3fvCUa3Br7bxK8pz53mkB5Nh6ug?=
 =?us-ascii?Q?xaw2Js5Gw9aBS91DV1cFebEYTxDf1LIKC+k1vdsoDiJVIX7zd1bJU08amUTR?=
 =?us-ascii?Q?Yd0dSyJ/fZGyANKJezerYxVrckgVF+TXTlKDW+Rd2FcvK175w+AjmyfD7aL7?=
 =?us-ascii?Q?mlfVvF3TxAGNpkci/EUzEirA5iqDUZv2mPWFuapJprS61gCzp7e0Alq7MAkG?=
 =?us-ascii?Q?UWH83EyrUR0/mGZBGgA2KG2D+GsYEdiQK/DL49Pdj3KbDvxtbWgDUo8PtxwN?=
 =?us-ascii?Q?ooYLgc6mbUsgS40UZuDWHc6x0f+r2/s+ZGMsQ7qAQaJPz0a1Q7cfQI3xqANk?=
 =?us-ascii?Q?D/GFYLvOQQXSjiHbc/LGTDeeYJuhnXwhU/d1MF6VpEMnyYTJfEqTZX0FRMDB?=
 =?us-ascii?Q?eesNt5VwB54lvasCUT/70jyVb7dNCB5DS0V4LuYE++tofzxm/64QwsJkf6Zt?=
 =?us-ascii?Q?J+slw9ULO2oed7UrAKjh364uxcM/sYiZczsaFhaOiwQD336bkkCS7Y5xCvd7?=
 =?us-ascii?Q?CbfvwOfZcbLcy1xYB4sBeFSeY65P/4O6kQAdCq9h9c2gjNVkrnJC52gWeSdG?=
 =?us-ascii?Q?Se8fJWJCWrtXTaUDvdPjWiC8wO6BzolYJo4vv40RPHdfHVqVnyIO8uQEtvEG?=
 =?us-ascii?Q?bkre2RTdgTc/2x8ydwSDSzirmtDZwDk1wNCBtvihMtvURNd4rHNcoEGKslkO?=
 =?us-ascii?Q?kuiGsW/2WixrAA0C1EAC7dJFNf4UIJXt7hpjmYfmGcE43Y/uRDvj8VCHgJ2e?=
 =?us-ascii?Q?ZkewwPG7ZeuwntzBPRf/LiDin2Px7+ZPNkZfoNTA2diEI70Qz80XNEjKXSsY?=
 =?us-ascii?Q?6ebGPDeCdkwua0o5RtSr4EEiAcy+Au7ZtJqPDP7pils5M9FD6SKQ3x0Vrmur?=
 =?us-ascii?Q?qcXpEF7nUFNxQF4kbFfEkZebh7RMnP967f2xtJeDG65mbRc3BoJOaiWnW8oK?=
 =?us-ascii?Q?ERcAMRRA30dOF9EQGEuiJMOQqorTHX96pyZw0B4oYt0z4cLk8D6WDz7Sbtch?=
 =?us-ascii?Q?XXQ4KNcyw4rNbv+r8wLJGhvKbNStZRApD1BMN/tVWC5U57v6OBDVKSc3b1hG?=
 =?us-ascii?Q?ZOw3WIxYyANu1z4MIC1OC1IB/M3aluuBrX28uYNSKBBiaz9I0VYvORAHC/7v?=
 =?us-ascii?Q?6Fd8Hhz/rLFHeywI1/2pfmN8L3D56eHYbf6l+I7rXSo6ZeOeVfA9y6JR1H7I?=
 =?us-ascii?Q?7OJHFrCZYzYAiAEjh2zfLTAgINOdfyFOuuojECoGCO54qLNqVLu1r0+WVRx7?=
 =?us-ascii?Q?XZpvSX1PLBAUGShG7oyhBWrcvhav9Fc+B4zhkLRi?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16442944-1ede-4f3e-cd0f-08ddec4d8152
X-MS-Exchange-CrossTenant-AuthSource: KL1PR06MB7330.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2025 07:26:18.5302
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SFBAP9AyfTZxtYeVmIsq4pApN2kTnxHd1YOyxbPMzxoPXiVm3vgS5hQY8Q7pQOo0CTR9eHAxbOUGoA2BNPuGjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR06MB7185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_002624_357433_3FA395C9 
X-CRM114-Status: GOOD (  12.05  )
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

devm_thermal_of_zone_register() prints error log messages when
it fails, so there is no need to print error log messages again.

Signed-off-by: Xichao Zhao <zhao.xichao@vivo.com>
---
 drivers/iio/adc/sun4i-gpadc-iio.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
index 6b8d6bee1873..3b33480813fe 100644
--- a/drivers/iio/adc/sun4i-gpadc-iio.c
+++ b/drivers/iio/adc/sun4i-gpadc-iio.c
@@ -640,12 +640,8 @@ static int sun4i_gpadc_probe(struct platform_device *pdev)
 		 * Do not fail driver probing when failing to register in
 		 * thermal because no thermal DT node is found.
 		 */
-		if (IS_ERR(info->tzd) && PTR_ERR(info->tzd) != -ENODEV) {
-			dev_err(&pdev->dev,
-				"could not register thermal sensor: %ld\n",
-				PTR_ERR(info->tzd));
+		if (IS_ERR(info->tzd) && PTR_ERR(info->tzd) != -ENODEV)
 			return PTR_ERR(info->tzd);
-		}
 	}
 
 	ret = devm_iio_device_register(&pdev->dev, indio_dev);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
