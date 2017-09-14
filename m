From: "David.Wu" <david.wu@rock-chips.com>
Subject: Re: [U-Boot,1/8] adc: Add driver for Rockchip Saradc
Date: Thu, 14 Sep 2017 19:10:57 +0800
Message-ID: <ddf3fca1-7efd-b0a7-91ec-9dc10c20225d@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="----------=_59BA63C4.C82C5133"
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: huangtao@rock-chips.com, linux-rockchip@lists.infradead.org, zhangqing@rock-chips.com, u-boot@lists.denx.de, p.marczak@samsung.com, andy.yan@rock-chips.com, chenjh@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.

------------=_59BA63C4.C82C5133
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Spam detection software, running on the system "lists.denx.de",
has identified this incoming email as possible spam.  The original
message has been attached to this so you can view it or label
similar future email.  If you have any questions, see
@@CONTACT_ADDRESS@@ for details.

Content preview:  Hi Philipp, 在 2017/9/14 4:40, Philipp Tomsich 写道: >
  > > On Wed, 13 Sep 2017, David Wu wrote: > >> The ADC can support some channels
   signal-ended some bits Successive >> Approximation >> Register (SAR) A/D
  Converter, like 6-channel and 10-bit. It converts >> the analog >> input signal
   into some bits binary digital codes. >> >> Signed-off-by: David Wu <david.wu@rock-chips.com>
   > > Reviewed-by: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
  > > Please see below for requested changes. > >> --- >> drivers/adc/Kconfig�
   � � � � � � � � � |� � 9 ++ >> drivers/adc/Makefile� � � � � � � � � |� �
   1 + >> drivers/adc/rockchip-saradc.c | 188 >> ++++++++++++++++++++++++++++++++++++++++++
   >> 3 files changed, 198 insertions(+) >> create mode 100644 drivers/adc/rockchip-saradc.c
   >> >> diff --git a/drivers/adc/Kconfig b/drivers/adc/Kconfig >> index e5335f7..830fe0f
   100644 >> --- a/drivers/adc/Kconfig >> +++ b/drivers/adc/Kconfig >> @@ -20,6
   +20,15 @@ config ADC_EXYNOS >> � � � � � - 12-bit resolution >> � � � � �
   - 600 KSPS of sample rate >> >> +config SARADC_ROCKCHIP >> +� � � bool "Enable
   Rockchip SARADC driver" >> +� � � help >> +� � � � � This enables driver
  for Rockchip SARADC. >> +� � � � � It provides: >> +� � � � � - 2~6 analog
   input channels >> +� � � � � - 1O-bit resolution >> +� � � � � - 1MSPS of
   sample rate >> + >> config ADC_SANDBOX >> � � � � bool "Enable Sandbox ADC
   test driver" >> � � � � help >> diff --git a/drivers/adc/Makefile b/drivers/adc/Makefile
   >> index cebf26d..4b5aa69 100644 >> --- a/drivers/adc/Makefile >> +++ b/drivers/adc/Makefile
   >> @@ -8,3 +8,4 @@ >> obj-$(CONFIG_ADC) += adc-uclass.o >> obj-$(CONFIG_ADC_EXYNOS)
   += exynos-adc.o >> obj-$(CONFIG_ADC_SANDBOX) += sandbox.o >> +obj-$(CONFIG_SARADC_ROCKCHIP)
   += rockchip-saradc.o > > Do you feel strongly about the "SARADC_ROCKCHIP"
   or would "ADC_ROCKCHIP" > be correct as well?� I don't care either way, but
   this is the first > entry here that does not start with CONFIG_ADC_, so I
   am wondering... [...] 

Content analysis details:   (6.8 points, 5.0 required)

 pts rule name              description
---- ---------------------- --------------------------------------------------
 2.6 RCVD_IN_SBL            RBL: Received via a relay in Spamhaus SBL
                            [211.157.147.132 listed in zen.spamhaus.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
                 [Blocked - see <http://www.spamcop.net/bl.shtml?58.22.7.114>]
 2.4 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
                            [211.157.147.132 listed in bl.mailspike.net]
 0.6 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
                            [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted



------------=_59BA63C4.C82C5133
Content-Type: message/rfc822; x-spam-type=original
Content-Description: original message before SpamAssassin
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Received: from lucky1.263xmail.com (lucky1.263xmail.com [211.157.147.132])
	by lists.denx.de (Postfix) with ESMTPS id 9535EC21C50
	for <u-boot@lists.denx.de>; Thu, 14 Sep 2017 11:10:58 +0000 (UTC)
Received: from david.wu?rock-chips.com (unknown [192.168.167.223])
	by lucky1.263xmail.com (Postfix) with ESMTP id D6328646E8;
	Thu, 14 Sep 2017 19:10:53 +0800 (CST)
X-263anti-spam: KSV:0;
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-KSVirus-check: 0
X-ABS-CHECKED: 4
Received: from [172.16.12.113] (localhost [127.0.0.1])
	by smtp.263.net (Postfix) with ESMTPA id 0CFC5369;
	Thu, 14 Sep 2017 19:10:53 +0800 (CST)
X-RL-SENDER: david.wu@rock-chips.com
X-FST-TO: chenjh@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-LOGIN-NAME: david.wu@rock-chips.com
X-UNIQUE-TAG: <4d88c11ca9da74ac7bf369dc57af7314>
X-ATTACHMENT-NUM: 0
X-SENDER: wdc@rock-chips.com
X-DNS-TYPE: 0
Received: from [172.16.12.113] (unknown [58.22.7.114])
	by smtp.263.net (Postfix) whith ESMTP id 87636IUAW9;
	Thu, 14 Sep 2017 19:10:55 +0800 (CST)
Subject: Re: [U-Boot,1/8] adc: Add driver for Rockchip Saradc
To: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: sjg@chromium.org, huangtao@rock-chips.com, u-boot@lists.denx.de,
 zhangqing@rock-chips.com, linux-rockchip@lists.infradead.org,
 p.marczak@samsung.com, andy.yan@rock-chips.com, chenjh@rock-chips.com
References: <1505297379-12638-2-git-send-email-david.wu@rock-chips.com>
 <alpine.OSX.2.21.1709132224050.52090@vpn-10-11-0-14.lan>
From: "David.Wu" <david.wu@rock-chips.com>
Message-ID: <ddf3fca1-7efd-b0a7-91ec-9dc10c20225d@rock-chips.com>
Date: Thu, 14 Sep 2017 19:10:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <alpine.OSX.2.21.1709132224050.52090@vpn-10-11-0-14.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Philipp,

在 2017/9/14 4:40, Philipp Tomsich 写道:
> 
> 
> On Wed, 13 Sep 2017, David Wu wrote:
> 
>> The ADC can support some channels signal-ended some bits Successive 
>> Approximation
>> Register (SAR) A/D Converter, like 6-channel and 10-bit. It converts 
>> the analog
>> input signal into some bits binary digital codes.
>>
>> Signed-off-by: David Wu <david.wu@rock-chips.com>
> 
> Reviewed-by: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
> 
> Please see below for requested changes.
> 
>> ---
>> drivers/adc/Kconfig           |   9 ++
>> drivers/adc/Makefile          |   1 +
>> drivers/adc/rockchip-saradc.c | 188 
>> ++++++++++++++++++++++++++++++++++++++++++
>> 3 files changed, 198 insertions(+)
>> create mode 100644 drivers/adc/rockchip-saradc.c
>>
>> diff --git a/drivers/adc/Kconfig b/drivers/adc/Kconfig
>> index e5335f7..830fe0f 100644
>> --- a/drivers/adc/Kconfig
>> +++ b/drivers/adc/Kconfig
>> @@ -20,6 +20,15 @@ config ADC_EXYNOS
>>       - 12-bit resolution
>>       - 600 KSPS of sample rate
>>
>> +config SARADC_ROCKCHIP
>> +    bool "Enable Rockchip SARADC driver"
>> +    help
>> +      This enables driver for Rockchip SARADC.
>> +      It provides:
>> +      - 2~6 analog input channels
>> +      - 1O-bit resolution
>> +      - 1MSPS of sample rate
>> +
>> config ADC_SANDBOX
>>     bool "Enable Sandbox ADC test driver"
>>     help
>> diff --git a/drivers/adc/Makefile b/drivers/adc/Makefile
>> index cebf26d..4b5aa69 100644
>> --- a/drivers/adc/Makefile
>> +++ b/drivers/adc/Makefile
>> @@ -8,3 +8,4 @@
>> obj-$(CONFIG_ADC) += adc-uclass.o
>> obj-$(CONFIG_ADC_EXYNOS) += exynos-adc.o
>> obj-$(CONFIG_ADC_SANDBOX) += sandbox.o
>> +obj-$(CONFIG_SARADC_ROCKCHIP) += rockchip-saradc.o
> 
> Do you feel strongly about the "SARADC_ROCKCHIP" or would "ADC_ROCKCHIP" 
> be correct as well?  I don't care either way, but this is the first 
> entry here that does not start with CONFIG_ADC_, so I am wondering...

Yes, we have other adc IPs, like tsadc,vsadc...
So i think SARADC_ROCKCHIP is better.

> 
>> diff --git a/drivers/adc/rockchip-saradc.c 
>> b/drivers/adc/rockchip-saradc.c
>> new file mode 100644
>> index 0000000..5c7c3d9
>> --- /dev/null
>> +++ b/drivers/adc/rockchip-saradc.c
>> @@ -0,0 +1,188 @@
>> +/*
>> + * (C) Copyright 2017, Fuzhou Rockchip Electronics Co., Ltd
>> + *
>> + * SPDX-License-Identifier:    GPL-2.0+
>> + *
>> + * Rockchip Saradc driver for U-Boot
> 
> Should this be SARADC (all uppercase)?

Okay, use SARADC.

> 
>> + */
>> +
>> +#include <asm/io.h>
>> +#include <clk.h>
>> +#include <common.h>
>> +#include <dm.h>
>> +#include <errno.h>
>> +#include <adc.h>
> 
> Please see https://www.denx.de/wiki/U-Boot/CodingStyle for the include 
> order. Please revise.
> 
> @Simon: yes, I am quick study ;-)
> 
>> +
>> +#define SARADC_DATA            0x00
>> +
>> +#define SARADC_STAS            0x04
> 
> Please see https://www.denx.de/wiki/U-Boot/CodingStyle for the 
> guidelines on using structures for I/O accesses.  Please revise.
> 
>> +#define SARADC_STAS_BUSY        BIT(0)
>> +
>> +#define SARADC_CTRL            0x08
>> +#define SARADC_CTRL_POWER_CTRL        BIT(3)
>> +#define SARADC_CTRL_CHN_MASK        0x7
>> +#define SARADC_CTRL_IRQ_STATUS        BIT(6)
>> +#define SARADC_CTRL_IRQ_ENABLE        BIT(5)
>> +
>> +#define SARADC_DLY_PU_SOC        0x0c
>> +
>> +#define SARADC_TIMEOUT            (100 * 1000)
>> +
>> +struct rockchip_saradc_data {
>> +    int                num_bits;
>> +    int                num_channels;
>> +    unsigned long            clk_rate;
>> +};
>> +
>> +struct rockchip_saradc_priv {
>> +    fdt_addr_t                regs;
>> +    int                     active_channel;
>> +    const struct rockchip_saradc_data    *data;
>> +};
>> +
>> +int rockchip_saradc_channel_data(struct udevice *dev, int channel,
>> +                unsigned int *data)
>> +{
>> +    struct rockchip_saradc_priv *priv = dev_get_priv(dev);
>> +
>> +    if (channel != priv->active_channel) {
>> +        error("Requested channel is not active!");
>> +        return -EINVAL;
>> +    }
>> +
>> +    if ((readl(priv->regs + SARADC_CTRL) & SARADC_CTRL_IRQ_STATUS) != 
>> SARADC_CTRL_IRQ_STATUS)
>> +        return -EBUSY;
>> +
>> +    /* Read value */
>> +    *data = readl(priv->regs + SARADC_DATA);
>> +    *data &= (1 << priv->data->num_bits) - 1;
> 
> This recomputes the data_mask (from below).
> Can we just use the data_mask again?

yes，use data_mask is ok.

> 
>> +
>> +    /* Power down adc */
>> +    writel(0, priv->regs + SARADC_CTRL);
>> +
>> +    return 0;
>> +}
>> +
>> +int rockchip_saradc_start_channel(struct udevice *dev, int channel)
>> +{
>> +    struct rockchip_saradc_priv *priv = dev_get_priv(dev);
>> +
>> +    if (channel < 0 || channel >= priv->data->num_channels) {
>> +        error("Requested channel is invalid!");
>> +        return -EINVAL;
>> +    }
>> +
>> +    /* 8 clock periods as delay between power up and start cmd */
>> +    writel(8, priv->regs + SARADC_DLY_PU_SOC);
>> +
>> +    /* Select the channel to be used and trigger conversion */
>> +    writel(SARADC_CTRL_POWER_CTRL
>> +            | (channel & SARADC_CTRL_CHN_MASK) | SARADC_CTRL_IRQ_ENABLE,
> 
> This line does not match the style guideline: it is too wide and the 
> operator should be before the line-break.
> 
> Did you run checkpatch or use patman?

maybe lost here 😃.

> 
>> +           priv->regs + SARADC_CTRL);
>> +
>> +    priv->active_channel = channel;
>> +
>> +    return 0;
>> +}
>> +
>> +int rockchip_saradc_stop(struct udevice *dev)
>> +{
>> +    struct rockchip_saradc_priv *priv = dev_get_priv(dev);
>> +
>> +    /* Power down adc */
>> +    writel(0, priv->regs + SARADC_CTRL);
>> +
>> +    priv->active_channel = -1;
>> +
>> +    return 0;
>> +}
>> +
>> +int rockchip_saradc_probe(struct udevice *dev)
>> +{
>> +    struct rockchip_saradc_priv *priv = dev_get_priv(dev);
>> +    struct clk clk;
>> +    int ret;
>> +
>> +    ret = clk_get_by_index(dev, 0, &clk);
>> +    if (ret)
>> +        return ret;
>> +
>> +    ret = clk_set_rate(&clk, priv->data->clk_rate);
>> +    if (IS_ERR_VALUE(ret))
>> +        return ret;
>> +
>> +    priv->active_channel = -1;
>> +
>> +    return 0;
>> +}
>> +
>> +int rockchip_saradc_ofdata_to_platdata(struct udevice *dev)
>> +{
>> +    struct adc_uclass_platdata *uc_pdata = dev_get_uclass_platdata(dev);
>> +    struct rockchip_saradc_priv *priv = dev_get_priv(dev);
>> +    struct rockchip_saradc_data *data =
>> +                    (struct rockchip_saradc_data 
>> *)dev_get_driver_data(dev);
>> +
>> +    priv->regs = devfdt_get_addr(dev);
> 
> Shouldn't this be dev_read_addr?

okay

> 
>> +    if (priv->regs == FDT_ADDR_T_NONE) {
>> +        error("Dev: %s - can't get address!", dev->name);
>> +        return -ENODATA;
>> +    }
>> +
>> +    priv->data = data;
>> +    uc_pdata->data_mask = (1 << priv->data->num_bits) - 1;;
>> +    uc_pdata->data_format = ADC_DATA_FORMAT_BIN;
>> +    uc_pdata->data_timeout_us = SARADC_TIMEOUT / 5;
>> +    uc_pdata->channel_mask = (1 << priv->data->num_channels) - 1;
>> +
>> +    return 0;
>> +}
>> +
>> +static const struct adc_ops rockchip_saradc_ops = {
>> +    .start_channel = rockchip_saradc_start_channel,
>> +    .channel_data = rockchip_saradc_channel_data,
>> +    .stop = rockchip_saradc_stop,
>> +};
>> +
>> +static const struct rockchip_saradc_data saradc_data = {
>> +    .num_bits = 10,
>> +    .num_channels = 3,
>> +    .clk_rate = 1000000,
>> +};
>> +
>> +static const struct rockchip_saradc_data rk3066_tsadc_data = {
>> +    .num_bits = 12,
>> +    .num_channels = 2,
>> +    .clk_rate = 50000,
>> +};
>> +
>> +static const struct rockchip_saradc_data rk3399_saradc_data = {
>> +    .num_bits = 10,
>> +    .num_channels = 6,
>> +    .clk_rate = 1000000,
>> +};
>> +
>> +static const struct udevice_id rockchip_saradc_ids[] = {
>> +    {
>> +        .compatible = "rockchip,saradc",
>> +        .data = (ulong)&saradc_data,
>> +    },
>> +    {
>> +        .compatible = "rockchip,rk3066-tsadc",
>> +        .data = (ulong)&rk3066_tsadc_data,
>> +    }, {
>> +        .compatible = "rockchip,rk3399-saradc",
>> +        .data = (ulong)&rk3399_saradc_data,
>> +    },
>> +    { }
>> +};
>> +
>> +U_BOOT_DRIVER(rockchip_saradc) = {
>> +    .name        = "rockchip_saradc",
>> +    .id        = UCLASS_ADC,
>> +    .of_match    = rockchip_saradc_ids,
>> +    .ops        = &rockchip_saradc_ops,
>> +    .probe        = rockchip_saradc_probe,
>> +    .ofdata_to_platdata = rockchip_saradc_ofdata_to_platdata,
>> +    .priv_auto_alloc_size = sizeof(struct rockchip_saradc_priv),
>> +};
>>
> 
> 
> 


------------=_59BA63C4.C82C5133
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVS1Cb290IG1h
aWxpbmcgbGlzdApVLUJvb3RAbGlzdHMuZGVueC5kZQpodHRwczovL2xpc3RzLmRlbnguZGUvbGlz
dGluZm8vdS1ib290Cg==

------------=_59BA63C4.C82C5133--
