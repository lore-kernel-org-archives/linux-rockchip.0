Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EB35C3DA63
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 11:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YnM/EKVuuCBEODCWBRPRWc/YjAL+3sc0NMBi5ThfBE=; b=P3idXdXRRfg0zl
	+2SLYzTbhK9iRbsSscoFBKSinCqLfFCJ7GRttDk2WHl84nK5NCMwDGeocVS0IsLsl9/k2v5MQgB58
	qp5XJH6UxO7hCpuPoH55CwvLoxoN35xbTf1Dibu9p4LOQs630mkTGeMMLQrCm037S6Au5C7TF8MqY
	PbVKpq7yHGG3NALft75OtUAmshD1hy93TWDbtN1Cww6lxM3YzIgecRbZmkIjikfOUg8KJOOx9pJRu
	UWqW3aHLlx3NFot5OWv7LaSqkQckexhCuFRKm4qWOCwjKuJSj9MejlFawSX2H7uH/JgomHTZf56sq
	DldAcphZzlBWZTBuHE3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWDVW-0000000CFKy-1MBG;
	Tue, 23 Jul 2024 11:16:38 +0000
Received: from forward502d.mail.yandex.net ([2a02:6b8:c41:1300:1:45:d181:d502])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWDV6-0000000CFHq-3IwW;
	Tue, 23 Jul 2024 11:16:15 +0000
Received: from mail-nwsmtp-smtp-production-main-19.klg.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-19.klg.yp-c.yandex.net [IPv6:2a02:6b8:c42:3143:0:640:c03:0])
	by forward502d.mail.yandex.net (Yandex) with ESMTPS id F22BA60D14;
	Tue, 23 Jul 2024 14:16:04 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-19.klg.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 0GMbHe8MjOs0-nTBoCZiH;
	Tue, 23 Jul 2024 14:16:03 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
	t=1721733364; bh=hQGEU3zHiGtuAg5lw6tLccN2NCx3M597KI1h6UY8wsY=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=W/8PeQ5/NHRTycx3bkf14tAeDHhPk9jgFLzaTpYIRKidfHMdRj0KPp4w+srrLWdgt
	 jM+ZR4Dw66Yb7FtqPkbTsHQKly7s09YR+touruhtarMOPa0dc+961nqIWnFYkFbneo
	 odca78tAeet0wCgaLUCALf6V3D9/nrlgJ5R3GtEc=
Authentication-Results: mail-nwsmtp-smtp-production-main-19.klg.yp-c.yandex.net; dkim=pass header.i=@yandex.com
Message-ID: <ae3f574a-256f-4ced-a371-a26255024750@yandex.com>
Date: Tue, 23 Jul 2024 13:16:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] dt-bindings: media: Document bindings for HDMI RX
 Controller
To: Shreeya Patel <shreeya.patel@collabora.com>
Cc: heiko@sntech.de, mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 p.zabel@pengutronix.de, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
References: <20240719124032.26852-1-shreeya.patel@collabora.com>
 <20240719124032.26852-3-shreeya.patel@collabora.com>
 <c926b73e-9ee7-4c4f-9c06-761929425468@yandex.com>
 <3328a8-669e6400-1-609f7800@94177214>
Content-Language: en-US
From: Johan Jonker <jbx6244@yandex.com>
In-Reply-To: <3328a8-669e6400-1-609f7800@94177214>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_041613_390750_CDA0076C 
X-CRM114-Status: GOOD (  22.43  )
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



On 7/22/24 15:53, Shreeya Patel wrote:
> On Saturday, July 20, 2024 16:14 IST, Johan Jonker <jbx6244@yandex.com> wrote:
> 
> Hi Johan,
> 
>>
>>
>> On 7/19/24 14:40, Shreeya Patel wrote:
>>> Document bindings for the Synopsys DesignWare HDMI RX Controller.
>>>

>>> Reviewed-by: Rob Herring <robh@kernel.org>
>>> Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>

Remove to trigger a new review.

>>> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
>>> ---
>>>
>>> Changes in v4 :-
>>>   - No change
>>>
>>> Changes in v3 :-
>>>   - Rename hdmirx_cma to hdmi_receiver_cma
>>>   - Add a Reviewed-by tag
>>>
>>> Changes in v2 :-
>>>   - Add a description for the hardware
>>>   - Rename resets, vo1 grf and HPD properties
>>>   - Add a proper description for grf and vo1-grf phandles
>>>   - Rename the HDMI Input node name to hdmi-receiver
>>>   - Improve the subject line
>>>   - Include gpio header file in example to fix dt_binding_check failure
>>>
>>>  .../bindings/media/snps,dw-hdmi-rx.yaml       | 132 ++++++++++++++++++
>>>  1 file changed, 132 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
>>> new file mode 100644
>>> index 000000000000..96ae1e2d2816
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
>>> @@ -0,0 +1,132 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +# Device Tree bindings for Synopsys DesignWare HDMI RX Controller
>>> +
>>> +---
>>> +$id: http://devicetree.org/schemas/media/snps,dw-hdmi-rx.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Synopsys DesignWare HDMI RX Controller
>>> +
>>> +maintainers:
>>> +  - Shreeya Patel <shreeya.patel@collabora.com>
>>> +
>>> +description:
>>> +  Synopsys DesignWare HDMI Input Controller preset on RK3588 SoCs
>>> +  allowing devices to receive and decode high-resolution video streams
>>> +  from external sources like media players, cameras, laptops, etc.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    items:
>>> +      - const: rockchip,rk3588-hdmirx-ctrler
>>

>>> +      - const: snps,dw-hdmi-rx

remove

>>
>> 1: Compatible strings must be SoC orientated.
>> 2: In Linux there's no priority in which string will probed first. 
>> What's the point of having a fallback string when there's no common code, but instead only the first string is used?
>>
>> +static const struct of_device_id hdmirx_id[] = {
>> +	{ .compatible = "rockchip,rk3588-hdmirx-ctrler" },
>> +	{ },
>> +};
>>
> 

> We believe the HDMIRX driver can be used for the Synopsys IP on other SoCs
> in the future, which is why we have added snps,dw-hdmi-rx as the fallback compatible.
> Currently, we have tested the driver only on the RK3588 Rock5B, so we are using the
> rockchip,rk3588-hdmirx-ctrler compatible in the driver instead of the fallback one.

The rule that compatible strings (for internal SoC components) must be SoC orientated also applies to the fallback string. "snps,xxxx" does not refer to an independent SoC.
Don't invent strings for devices that we don't know yet if it might or might not be compatible in the future.

Johan

> 
> 
> Thanks,
> Shreeya Patel
> 
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  interrupts:
>>> +    maxItems: 3
>>> +
>>> +  interrupt-names:
>>> +    items:
>>> +      - const: cec
>>> +      - const: hdmi
>>> +      - const: dma
>>> +
>>> +  clocks:
>>> +    maxItems: 7
>>> +
>>> +  clock-names:
>>> +    items:
>>> +      - const: aclk
>>> +      - const: audio
>>> +      - const: cr_para
>>> +      - const: pclk
>>> +      - const: ref
>>> +      - const: hclk_s_hdmirx
>>> +      - const: hclk_vo1
>>> +
>>> +  power-domains:
>>> +    maxItems: 1
>>> +
>>> +  resets:
>>> +    maxItems: 4
>>> +
>>> +  reset-names:
>>> +    items:
>>> +      - const: axi
>>> +      - const: apb
>>> +      - const: ref
>>> +      - const: biu
>>> +
>>> +  memory-region:
>>> +    maxItems: 1
>>> +
>>> +  hpd-gpios:
>>> +    description: GPIO specifier for HPD.
>>> +    maxItems: 1
>>> +
>>> +  rockchip,grf:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description:
>>> +      The phandle of the syscon node for the general register file
>>> +      containing HDMIRX PHY status bits.
>>> +
>>> +  rockchip,vo1-grf:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description:
>>> +      The phandle of the syscon node for the Video Output GRF register
>>> +      to enable EDID transfer through SDAIN and SCLIN.
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - interrupts
>>> +  - interrupt-names
>>> +  - clocks
>>> +  - clock-names
>>> +  - power-domains
>>> +  - resets
>>> +  - pinctrl-0
>>> +  - hpd-gpios
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
>>> +    #include <dt-bindings/gpio/gpio.h>
>>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +    #include <dt-bindings/interrupt-controller/irq.h>
>>> +    #include <dt-bindings/power/rk3588-power.h>
>>> +    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
>>> +    hdmi_receiver: hdmi-receiver@fdee0000 {

>>> +      compatible = "rockchip,rk3588-hdmirx-ctrler", "snps,dw-hdmi-rx";

      compatible = "rockchip,rk3588-hdmirx-ctrler";

>>> +      reg = <0xfdee0000 0x6000>;
>>> +      interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH 0>,
>>> +                   <GIC_SPI 436 IRQ_TYPE_LEVEL_HIGH 0>,
>>> +                   <GIC_SPI 179 IRQ_TYPE_LEVEL_HIGH 0>;
>>> +      interrupt-names = "cec", "hdmi", "dma";
>>> +      clocks = <&cru ACLK_HDMIRX>,
>>> +               <&cru CLK_HDMIRX_AUD>,
>>> +               <&cru CLK_CR_PARA>,
>>> +               <&cru PCLK_HDMIRX>,
>>> +               <&cru CLK_HDMIRX_REF>,
>>> +               <&cru PCLK_S_HDMIRX>,
>>> +               <&cru HCLK_VO1>;
>>> +      clock-names = "aclk",
>>> +                    "audio",
>>> +                    "cr_para",
>>> +                    "pclk",
>>> +                    "ref",
>>> +                    "hclk_s_hdmirx",
>>> +                    "hclk_vo1";
>>> +      power-domains = <&power RK3588_PD_VO1>;
>>> +      resets = <&cru SRST_A_HDMIRX>, <&cru SRST_P_HDMIRX>,
>>> +               <&cru SRST_HDMIRX_REF>, <&cru SRST_A_HDMIRX_BIU>;
>>> +      reset-names = "axi", "apb", "ref", "biu";
>>> +      memory-region = <&hdmi_receiver_cma>;
>>> +      pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_5v_detection>;
>>> +      pinctrl-names = "default";
>>> +      hpd-gpios = <&gpio1 22 GPIO_ACTIVE_LOW>;
>>> +    };
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
