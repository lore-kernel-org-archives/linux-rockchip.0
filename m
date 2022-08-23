Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A150AC32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfJMIMv6cKRlC0WwekMwR8/MXIgsmfFo4ci+K80N55E=; b=s4yj1JtlnT1ILo
	quB93cS1gz25pYqaXQIdaGSlY5IzW7qv5vJxRXd2AxEqJzJr0KCoIS1WnTV/URyAQW19PpxHGtjLg
	bsPMM3HyM7X5yaNBCoVItjcPnfyTSyLnN4ofQ99AJfe2BJYPMU8PcneqWWD44C+ZpzgaAQYtiLgG4
	yROD3//Hu+tQCULqcTaFFbY+rFa+J0aXlRhU8z+8orK3ZD7eKXX94jndKQkAOrFJ4gsXH6rT+gMgg
	pSuqdldEGkRGZqaAzh+EfPKFNH7ywX9BCseNaynz16zCRp5xo0ehC2EDKzRjHdejKzkpI6UUt7P6v
	6+6SrZiAMeJvv9uznLug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTJ5-0060ts-Bu; Tue, 23 Aug 2022 12:46:59 +0000
Received: from mail-dm6nam04olkn2075.outbound.protection.outlook.com ([40.92.45.75] helo=NAM04-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTCq-005xPP-UN
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 12:40:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K0uLBFj9NzQixNQ8eRPqSWr2Q6Q6a0IGqLc2ABZbBHoxP78pKi4WzVVjfbRPzJpxAMYJVr5cPGARLFMEz6PND5mopPoniEOL+KqhRJQzQNTICpkDLw9ERyC5C24YcdG3k7JFDaB3TR+HWzotOWYgi1wBJYZigMyMgx13ZEzfBFxE4mb0E1NapyiYtk4j6oQfdf+HmWkaf5FeAbg81EoaQVwXuA6MPT66gmh+hsQ5NblObm08RtF6hFioJBGb1IlipeE0O8okLtiB8GMLUlVR2lWbnScSS7XuwG4aOp/WNdBJALw31EoqxcEBA9f2GUaD6QMw9ZNIbmjuBx9bxKgphA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L7M9opUBcx1p6osCnZkgKT0GEu1Brb9QUT0Xa3P9HEw=;
 b=jg/h9qKunkbBFrkHF8pWE+4mQB85+oPDUAOAyaUvRWh8smzwB7IE75KY3CwxHxrQnGuxQY422Z+cPLrxgViVdIieIh/FUoFh8PHBgikq2DD66binjXbrgEFxuNaECd8Xn+1hgJOan+dwnRa6ukMvPfRykWVANvRFM+E2rJBex3zCPPZpcaGSXVgsuU+FUbBTDaya0QppO4AP4ztHMJWxC9MZvvupBhoqZr8oJSi0AtDFG3n9pKZf1DdAz9ctkm90epu8OqCuA/wWy6M7A+Jfp24pZFHq3wtBzULMz93g5jR5EhcWV6zd5wecV4/GFXTTSkULw6/tnpny9aBjWZ+dqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L7M9opUBcx1p6osCnZkgKT0GEu1Brb9QUT0Xa3P9HEw=;
 b=lBioDGdJPkGUrzQSmsHKMEZfsv2E9A63qijzgnzEeD+8iGSwLozth6xMKmiPXx2OvzykVkI9dY2LkVz9+iEDlnExuHRCXtwLMc4o7WA+LWIZ2ncG3A6VWXGLwuATRdAitnf648WKWI/wNa+UjJMY0SIMRE9jDXWiJ9GYHmnVYtleBLrKkmxH/vfwXd9QxGvPZ5AYbEMOS8URftAhy99I9xLFZf02JWXycA3a6G1WQNl1KVUTsWHJkAa/rd+6E01I/1pEO6Jyf7fqLYur5DMmNRDeWEMnyZSdm3sBxMb2jmlA7IhvfXjEZ9gHA+F3KcH06AXwEpobiifrZJaUcFvTOQ==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by BL0PR06MB4401.namprd06.prod.outlook.com (2603:10b6:208:4c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.14; Tue, 23 Aug
 2022 12:40:27 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e%4]) with mapi id 15.20.5546.022; Tue, 23 Aug 2022
 12:40:27 +0000
Date: Tue, 23 Aug 2022 07:40:22 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
	pgwipeout@gmail.com, cphealy@gmail.com
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Message-ID:  <SN6PR06MB534215A808939107AFDE5CFEA5709@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <273e27e6-4def-2424-b838-de217f10e4a3@linaro.org>
Content-Disposition: inline
In-Reply-To: <273e27e6-4def-2424-b838-de217f10e4a3@linaro.org>
X-TMN: [krw+3RTwes/FYB/UJ/G/EYSuI+AIni35]
X-ClientProxiedBy: DM6PR01CA0003.prod.exchangelabs.com (2603:10b6:5:296::8) To
 SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID:  <20220823124022.GC9857@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0ea08a29-a271-4025-3f9d-08da8504a7ff
X-MS-TrafficTypeDiagnostic: BL0PR06MB4401:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	6ozc5BzVjedFkygp71I7OcuQCieOX2auqGflqwenQl0VUA3dujyX3JKzp5aFob7oWH7V0uYg/Hr9H1oR4xQSrYK8rc66B95ChwDMNPwVo03DRsIXKb6vTx1dpDiZuFHaDwRZU35alY+/6tqK01ixn7mas8bkMl7B5hMEqw+bLMrPXLcLuIwphqDBoKJZ3ZsLxDklIvr3stdk72kqn6gs6Q0ccLEKosZbYsWhqrU17CX6/Of2YoV/3TO/VlR02zC0EoysFeKb7qJL+DPUDkJ67MNeSLsUQ3QRq6bJpoee0L44fv3mPSytWkqJvzlCN2pyaG1R9vqWOFIhHh3BXVgwkme2UnlG3jXYNJP+DsCiSzBl+doXsCrshguezUWl3FroMff17IHkwJK9zn2N0fEgoRw7XYmsQt8yGhZgBMk+DIrzYi1m/s66B56tUEHePSxsaRqZ91wwZSX4PXHIQK640KhZlC20yLJ0wNNOTJq6SeHuRhb9eLTuc9cLDix8BRoeQFVEvocC3vHBJv32YLyyTsY4HmVvU7W09GgZLqYeZw/E1TI5uw3zSkeuKjBl5GVywod9+lhiI1998DM5STJGQD23vmQRYp8SWvWavHXI47jfEpgPcMUClASvd01+aKwvTV8zy6OWtSSzfotLejHc8WpsIdAbxI1KOjQSFKss0zEkNIej/67b/e7EHsIKbODB
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?WjJQOpZ78kZKBIDqzW7qbLjY+cTzFhI1sGYZbjs1jzQd9j3SfkQydtxorZV6?=
 =?us-ascii?Q?SCxmWZPXy6bzc8dYTOUUP6t+9/vXIPtCv3VTAVxQxLURsm9KtZxYTa8rAC2L?=
 =?us-ascii?Q?qWlbvwZGxyo88Rga5zsV8uI2f6jH8UbsnvkqAcex2gqLkLCgcgk41Lb7Rpog?=
 =?us-ascii?Q?0fEHB/vBKU+zi+tQtTaUYn0+tvUdNMvMOKzE7rWQgjIJFWrHpm+j1CPwDr9/?=
 =?us-ascii?Q?U6n6jZZeYVSXmUQjNPODY9Ql4KP2nSxom8g9z5z1TKgMM4sF0/5Hif5tVyDd?=
 =?us-ascii?Q?SsKCIhI088thdmK8rpcVuMJcjgsE3BHSvAVuAtyEzywpBo2E3k9h1EAGzyue?=
 =?us-ascii?Q?4iUbYNw4CFoZAQvXjvMeETRi7gJrEEucNpsTcHAz0ZKbPUfOuqUBMoIzCIyC?=
 =?us-ascii?Q?5Ak1SvasqfUV5tOo5rPp1W5JMX+6cL7e0O+aUFZNq9eVN1lli1X4Upk8e3Ak?=
 =?us-ascii?Q?fA7pKFG7qtlNYRh0ORvH+GoxvCf6g71XaJIW2c9wlRudksS24dTpL5FEsoaY?=
 =?us-ascii?Q?jY7onFuVuOSQg1q5+LSAqYhVRxaDpW7EEUFxNHYxW40oOjhH59zlNnrB88Tr?=
 =?us-ascii?Q?b4iMLCxs8v9IDbWmVAHhnV30HNjFCOZ0Ndu1m7jUZaRaMH+SQ8niX7z17n30?=
 =?us-ascii?Q?5veznCbQhdBj75VCKSnE3/YoHE80RcLXnS86xAo/4QkkJ4nK4f0dFhwE93Lg?=
 =?us-ascii?Q?JKwuS1Y+od1xqHTdaZgYK5HnMcGibxVGRydVZv44KaL3MkGhy+zrqcGAQbk7?=
 =?us-ascii?Q?F8o4ZHUg9rC5S93/Cbn2HH6n1MOawrmuNb8uUUj+IcOq53aXUEDOa/NLPDzk?=
 =?us-ascii?Q?5kHEgputymxTQijIOdDtvOP9AqgXXE4BOn5Ja5mSCh6fDBgegcU2PldwtJuu?=
 =?us-ascii?Q?7QzBYVZw+yibr9iFOQdK1Sa598yBVEgT7Ut/vObshHkT5pM9Uhpl+X4TD0BP?=
 =?us-ascii?Q?eNv/E1EChbinJpaYm4fzhDSnDxF8w6mudNXo0P5avgmO4XdqtQwdcBjIzQM3?=
 =?us-ascii?Q?r+XGccbk1gsEgASgzw1XtU0smarclcfbr8CxqLGvKXDbYB+VeeUd/YiOSAba?=
 =?us-ascii?Q?yHZ4t9fIOumnDoTAiJlL4XINg9pvz+ax+BNbw337W65DMLT4nAIr/zTnpHT8?=
 =?us-ascii?Q?eJmioO3q3q/7LXRcNLnQ+OnUo/N2T1irvzv6aVkQwiNy6z0kHiFzbNfeCWnM?=
 =?us-ascii?Q?59nC2W49w5VRbUxedYfPOIFIbFfHvOJesbKzBNv9L+l99ZwUP+NIj2EO0R7V?=
 =?us-ascii?Q?eWM/LERUPN0q/Plo9Ql4XCpKJcmuh8dYt51j2CYkvQ=3D=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ea08a29-a271-4025-3f9d-08da8504a7ff
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2022 12:40:27.5295
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR06MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_054033_146617_ABA05BA2 
X-CRM114-Status: GOOD (  30.01  )
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

On Tue, Aug 23, 2022 at 03:26:07PM +0300, Krzysztof Kozlowski wrote:
> On 20/08/2022 01:25, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Anbernic RG353P and RG503 are both RK3566 based handheld gaming devices
> > from Anbernic.
> > 
> > Both devices have:
> >  - 2 SDMMC slots.
> >  - A Realtek rtl8821cs WiFi/Bluetooth adapter.
> >  - A mini HDMI port.
> >  - A USB C host port and a USB C otg port (currently only working as
> >    device).
> >  - Multiple GPIO buttons and a single ADC button.
> >  - Dual analog joysticks controlled via a GPIO mux.
> >  - A headphone jack with amplified stereo speakers via a SGM4865 amp.
> >  - A PWM based vibrator for force feedback.
> > 
> > The RG353P has:
> >  - 2GB LPDDR4 RAM.
> >  - A 32GB eMMC.
> >  - A 3.5 inch 640x480 4-lane DSI panel of unknown origin with an i2c
> >    controlled touchscreen (touchscreen is a Hynitron CST340).
> > 
> > The RG503 has:
> >  - 1GB LPDDR4 RAM.
> >  - A 5 inch 960x544 AMOLED 2-lane DSI/DBI panel manufactured by Samsung
> >    with part number ams495qa04. Data for this panel is provided via the
> >    DSI interface, however commands are sent via a 9-bit 3-wire SPI
> >    interface. The MISO pin of SPI3 of the SOC is wired to the input of
> >    the panel, so it must be bitbanged.
> > 
> > This devicetree enables the following hardware:
> >  - HDMI (plus audio).
> >  - Analog audio, including speakers.
> >  - All buttons.
> >  - All SDMMC/eMMC/SDIO controllers.
> >  - The ADC joysticks (note a pending patch is required to use them).
> >  - WiFi/Bluetooth (note out of tree drivers are required).
> >  - The PWM based vibrator motor.
> > 
> > The following hardware is not enabled:
> >  - The display panels (drivers are being written and there are issues
> >    with the upstream DSI and VOP2 subsystems).
> >  - Battery (driver pending).
> >  - Touchscreen on the RG353P (note the i2c2 bus is enabled for it).
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
> >  .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 103 +++
> >  .../dts/rockchip/rk3566-anbernic-rg503.dts    |  93 ++
> >  .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 821 ++++++++++++++++++
> >  4 files changed, 1019 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index ef79a672804a..1402274a78a0 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -57,6 +57,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353p.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> > new file mode 100644
> > index 000000000000..f9333ed1ecc7
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> > @@ -0,0 +1,103 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/linux-event-codes.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include "rk3566-anbernic-rgxx3.dtsi"
> > +
> > +/ {
> > +	model = "RG353P";
> > +	compatible = "anbernic,rg353p", "rockchip,rk3566";
> > +
> > +	aliases {
> > +		mmc0 = &sdhci;
> > +		mmc1 = &sdmmc0;
> > +		mmc2 = &sdmmc1;
> > +		mmc3 = &sdmmc2;
> > +	};
> > +
> > +	backlight: backlight {
> > +		compatible = "pwm-backlight";
> > +		power-supply = <&vcc_sys>;
> > +		pwms = <&pwm4 0 25000 0>;
> > +	};
> > +};
> > +
> > +&gpio_keys_control {
> > +	button-5 {
> > +		gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
> > +		label = "DPAD-LEFT";
> > +		linux,code = <BTN_DPAD_RIGHT>;
> > +	};
> > +
> > +	button-6 {
> > +		gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
> > +		label = "DPAD-RIGHT";
> > +		linux,code = <BTN_DPAD_LEFT>;
> > +	};
> > +
> > +	button-9 {
> > +		gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
> > +		label = "TR";
> > +		linux,code = <BTN_TR2>;
> > +	};
> > +
> > +	button-10 {
> > +		gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
> > +		label = "TR2";
> > +		linux,code = <BTN_TR>;
> > +	};
> > +
> > +	button-14 {
> > +		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> > +		label = "WEST";
> > +		linux,code = <BTN_WEST>;
> > +	};
> > +
> > +	button-15 {
> > +		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
> > +		label = "EAST";
> > +		linux,code = <BTN_EAST>;
> > +	};
> > +};
> > +
> > +&i2c0 {
> > +	/* This hardware is physically present but unused. */
> > +	cw2015@62 {
> 
> Node names should be generic.

Understood, I was just copying an existing devicetree. I'll make it
generic.

> 
> > +		compatible = "cellwise,cw2015";
> > +		reg = <0x62>;
> > +		status = "disabled";
> > +	};
> > +};
> > +
> > +&i2c2 {
> > +	pintctrl-names = "default";
> > +	pinctrl-0 = <&i2c2m1_xfer>;
> > +	status = "okay";
> > +};
> > +
> 
> (...)
> 
> > +
> > +&hdmi_sound {
> > +	status = "okay";
> > +};
> > +
> > +&i2c0 {
> > +	status = "okay";
> > +
> > +	rk817: pmic@20 {
> > +		compatible = "rockchip,rk817";
> > +		reg = <0x20>;
> > +		interrupt-parent = <&gpio0>;
> > +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
> > +		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> > +		clock-names = "mclk";
> > +		clocks = <&cru I2S1_MCLKOUT_TX>;
> > +		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
> > +		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
> > +		#clock-cells = <1>;
> > +		#sound-dai-cells = <0>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&i2s1m0_mclk>, <&pmic_int_l>;
> > +		wakeup-source;
> > +
> > +		vcc1-supply = <&vcc_sys>;
> > +		vcc2-supply = <&vcc_sys>;
> > +		vcc3-supply = <&vcc_sys>;
> > +		vcc4-supply = <&vcc_sys>;
> > +		vcc5-supply = <&vcc_sys>;
> > +		vcc6-supply = <&vcc_sys>;
> > +		vcc7-supply = <&vcc_sys>;
> > +		vcc8-supply = <&vcc_sys>;
> > +		vcc9-supply = <&dcdc_boost>;
> > +
> > +		regulators {
> > +			vdd_logic: DCDC_REG1 {
> 
> I commented here and there was no feedback, so please implement the change.
> 

Sorry I didn't explicitly call it out, I only made a note in the
revision notes. The regulator names for the RK808 series are hard-coded, so
I can't change them without modifying the driver (and every existing DTS that
uses them).

> 
> Best regards,
> Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
