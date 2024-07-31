Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A179C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D25aV0j8wIyg5nE6TFTSPcgDpRTXY2UvMTuA/AIInI4=; b=pqfU1+p1bJrHFN
	VQt2DETBOKnhpdws3G8XN5IBrCbQABxsy9JFQf9mJ8PaCqLSrrixrO76RPPWKjox9hBZWAuHj6Pa3
	PqVTFui4BiGjNV1V57htfR9GgMYLiBZL3Gq+vEp/Pn/HXhpx13ZBdzlQc8i0vJTl98t5FThbbJTRo
	/R+K7qoiaVwCugRPFO+oym8nVCbu+uVP9OfGAzmvJW1Rybyr0wyjljokI70CI6y5RYgMxyAjrFOK+
	TbKlz017yEgmNxZZ6MISAMJDlBTOBY71iH9vGhr40RyK3ENlMglN0gnWNeSXS8UAdRlsnBS84Gaf0
	UwI2BTKk36jXUepwz2uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZE3l-000000028Ap-3X3o;
	Wed, 31 Jul 2024 18:28:25 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZE3G-0000000283S-3Bf6
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 18:27:56 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a7a8caef11fso685336866b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 31 Jul 2024 11:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722450472; x=1723055272; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=aSlQMWOS2cfD31MS+LRE9FHYtYVvkkaeMpy/rYl4HqI=;
        b=WiRidSNe2vVF2GTV8VXERe2WgF5WdZrBTWK4oLGRlPIPZxUeFWlCJEp0WUNjaNRbP/
         K7SkBq/zOWq+s9oE9w68Wk6qNJmGUBwc9CkP0SXUmScjDtzvxBHEM+zY5fJK3EFXKypb
         w5ymnXL6QUT2ZiqPte1o8iL9ipnFfOM6dI5eg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722450472; x=1723055272;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aSlQMWOS2cfD31MS+LRE9FHYtYVvkkaeMpy/rYl4HqI=;
        b=hLvxX4I3lMUIuvXTSrty7IQHL6q9nBJE7HLZTm2rOV/mXEihRcVk8jtZTc2eH++LHQ
         eTq79a1H2wZ+f5y1VW/YdVQmvIq5CS7VtKUnpcODSdsDm8lpnWeZUyaHDNpMiKVH91Oy
         H6v9kFBBRyxjdkftfV8Hc3mYek5uFjMgTe6yeVUHKOE1pUKnoxAVsqHfr8owQMYgjwbt
         CnCKViZOP5r/v2MucWGTNVdplmZcxCVjjfqt/sDUIKVWqaTx9uekbtd7aU12UEGQPeIS
         etF6MJtgjZ5L95iISXa7qpGeCaW/f6CuGkTS5fkNiXnIGKExQWmPK3sVTdFiIQ55ojZP
         sMlA==
X-Forwarded-Encrypted: i=1; AJvYcCXsiHsjKyB78FC+0Zq2pe6RycfM/DUL9+9WPVrHhRnROdMsb5F4HaF/kuv/+O0nl0DFgsDLP4racmVUZRwRY/+kJObotkj2uRCfzVJZFOYTLrTY
X-Gm-Message-State: AOJu0YznJk5IyuNnWmUfnfAGVv+/FHrdNcIVbt2F2mRVZuWTKhqeI0X5
	WXx/LST8PXZdahmoULOLXTZ4eL5xQA9fBHBX+x2hmiVFyJW3UmfBrtEDiHfmXQ==
X-Google-Smtp-Source: AGHT+IFjgipzlSGv4on7zoRV8/fLE0J8azpy6u+zOeUmRysaU+zHnVAiE21WtdprCbx2QlJ902LI9w==
X-Received: by 2002:a17:906:d263:b0:a79:7f94:8a73 with SMTP id a640c23a62f3a-a7d40003423mr951780366b.20.1722450472237;
        Wed, 31 Jul 2024 11:27:52 -0700 (PDT)
Received: from [192.168.178.137] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acac632cesm796796666b.96.2024.07.31.11.27.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 11:27:51 -0700 (PDT)
Message-ID: <c6833a64-4676-4303-a8e6-662693e7270b@broadcom.com>
Date: Wed, 31 Jul 2024 20:27:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/5] dt-bindings: net: wireless: brcm4329-fmac: add
 clock description for AP6275P
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
 Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org, krzk+dt@kernel.org,
 heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, conor+dt@kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, efectn@protonmail.com,
 dsimic@manjaro.org, jagan@edgeble.ai, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, arend@broadcom.com,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, megi@xff.cz,
 duoming@zju.edu.cn, bhelgaas@google.com, minipli@grsecurity.net,
 brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com,
 nick@khadas.com, Andy Green <andy@warmcat.com>
References: <20240730033053.4092132-3-jacobe.zang@wesion.com>
 <191025b5268.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <f45c1fa7-f321-4a1f-b65c-6ed326a18268@kernel.org>
 <191030eac78.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <3d3b8e0a-7492-4db1-bd73-c30a488edaa7@kernel.org>
 <191035b8c28.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <k3dhdsa5bjzad2ha5e2uurg2azzs773ier5thkot4w2qcvnv54@yuf52eluqsae>
 <dd381dc1-454f-4ecd-adb7-55de2e15d592@broadcom.com>
 <sgfd5ccltsi7mjbybmdbs3fmsfcp3vqtpitdac7exzgxav53kk@6lwogbq4fhks>
 <1910959c1f8.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <cn4vykgbj6mhiikyco5uvyfa424njoun67hsoof4lbwvscwoc2@5xfl4q5mvooy>
Content-Language: en-US
From: Arend van Spriel <arend.vanspriel@broadcom.com>
Autocrypt: addr=arend.vanspriel@broadcom.com; keydata=
 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
In-Reply-To: <cn4vykgbj6mhiikyco5uvyfa424njoun67hsoof4lbwvscwoc2@5xfl4q5mvooy>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_112754_959062_05D4E139 
X-CRM114-Status: GOOD (  35.84  )
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

On 7/31/2024 7:50 PM, Sebastian Reichel wrote:
> Hi,
> 
> On Wed, Jul 31, 2024 at 05:12:43PM GMT, Arend Van Spriel wrote:
>> On July 31, 2024 3:54:52 PM Sebastian Reichel
>> <sebastian.reichel@collabora.com> wrote:
>>> On Wed, Jul 31, 2024 at 02:57:37PM GMT, Arend van Spriel wrote:
>>>> On 7/30/2024 7:38 PM, Sebastian Reichel wrote:
>>>>> On Tue, Jul 30, 2024 at 01:16:57PM GMT, Arend Van Spriel wrote:
>>>>>> On July 30, 2024 12:18:20 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>>>>
>>>>>>> On 30/07/2024 11:52, Arend Van Spriel wrote:
>>>>>>>> On July 30, 2024 11:01:43 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>>>>>>
>>>>>>>>> On 30/07/2024 08:37, Arend Van Spriel wrote:
>>>>>>>>>> + Linus W
>>>>>>>>>>
>>>>>>>>>> On July 30, 2024 5:31:15 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:
>>>>>>>>>>
>>>>>>>>>>> Not only AP6275P Wi-Fi device but also all Broadcom wireless devices allow
>>>>>>>>>>> external low power clock input. In DTS the clock as an optional choice in
>>>>>>>>>>> the absence of an internal clock.
>>>>>>>>>>>
>>>>>>>>>>> Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
>>>>>>>>>>> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
>>>>>>>>>>> ---
>>>>>>>>>>> .../bindings/net/wireless/brcm,bcm4329-fmac.yaml          | 8 ++++++++
>>>>>>>>>>> 1 file changed, 8 insertions(+)
>>>>>>>>>>>
>>>>>>>>>>> diff --git
>>>>>>>>>>> a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>>>>>>> b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>>>>>>> index 2c2093c77ec9a..a3607d55ef367 100644
>>>>>>>>>>> --- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>>>>>>> +++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>>>>>>> @@ -122,6 +122,14 @@ properties:
>>>>>>>>>>> NVRAM. This would normally be filled in by the bootloader from platform
>>>>>>>>>>> configuration data.
>>>>>>>>>>>
>>>>>>>>>>> +  clocks:
>>>>>>>>>>> +    items:
>>>>>>>>>>> +      - description: External Low Power Clock input (32.768KHz)
>>>>>>>>>>> +
>>>>>>>>>>> +  clock-names:
>>>>>>>>>>> +    items:
>>>>>>>>>>> +      - const: lpo
>>>>>>>>>>> +
>>>>>>>>>>
>>>>>>>>>> We still have an issue that this clock input is also present in the
>>>>>>>>>> bindings specification broadcom-bluetooth.yaml (not in bluetooth
>>>>>>>>>> subfolder). This clock is actually a chip resource. What happens if both
>>>>>>>>>> are defined and both wifi and bt drivers try to enable this clock? Can this
>>>>>>>>>> be expressed in yaml or can we only put a textual warning in the property
>>>>>>>>>> descriptions?
>>>>>>>>>
>>>>>>>>> Just like all clocks, what would happen? It will be enabled.
>>>>>>>>
>>>>>>>> Oh, wow! Cool stuff. But seriously is it not a problem to have two entities
>>>>>>>> controlling one and the same clock? Is this use-case taken into account by
>>>>>>>> the clock framework?
>>>>>>>
>>>>>>> Yes, it is handled correctly. That's a basic use-case, handled by CCF
>>>>>>> since some years (~12?). Anyway, whatever OS is doing (or not doing)
>>>>>>> with the clocks is independent of the bindings here. The question is
>>>>>>
>>>>>> Agree. Probably the bindings would not be the place to document this if it
>>>>>> would be an issue.
>>>>>>
>>>>>>> about hardware - does this node, which represents PCI interface of the
>>>>>>> chip, has/uses the clocks.
>>>>>>
>>>>>> The schematics I found for the wifi module and the khadas edge platform show
>>>>>> these are indeed wired to the chip.
>>>>>
>>>>> I have a Rockchip RK3588 Evaluation Board on my desk, which uses the
>>>>> same WLAN AP6275P module. I think I already commented on a prior
>>>>> version of this series: The LPO clock is needed to make the PCIe
>>>>> device visible on the bus. That means this series only works if the
>>>>> clock has already been running. Otherwise the PCIe driver will never
>>>>> be probed. To become visible the devices requires:
>>>>>
>>>>> 1. The LPO clock to be enabled
>>>>> 2. Power to be applied
>>>>> 3. The WL_EN gpio to be configured correctly
>>>>>
>>>>> If one of the above is not met, the device will not even appear in
>>>>> 'lspci'. I believe the binding needs to take into consideration, that
>>>>> pwrseq is needed for the PCIe side. Fortuantely the heavy lifting of
>>>>> creating the proper infrastructure for this has already been done by
>>>>> Bartosz Golaszewski for Qualcomm WLAN chips. What is missing is a
>>>>> pwrseq driver for the Broadcom chip (or this specific module?).
>>>>
>>>> That does not really make sense. There is no relation between the LPO clock
>>>> and the PCIe clocks so 1) being a requirement for probing the device looks
>>>> odd. It also does not match past experience when I assisted Andy Green in
>>>> getting this module up and running almost two years ago.
>>>
>>> Well, first of all I can easily reproduce this on my RK3588 EVB1. I
>>> intentionally ignore any bluetooth bits to avoid cross-effects from
>>> bluetooth enabling any clocks / regulators / GPIOs and make sure the
>>> RTC output clock is disabled at boot time (i.e. boot once without
>>> any reference to the RTC clock and without 'clk_ignore_unused'
>>> kernel argument). When booting up like this the WLAN device is not
>>> visible in 'lspci' despite the WL_REG_ON GPIO being hogged. If I
>>> additionally hack the RTC output clock to be enabled the WLAN device
>>> becomes visible in 'lspci'.
>>>
>>> The datasheet fully explains this:
>>>
>>> https://www.lcsc.com/datasheet/lcsc_datasheet_2203281730_AMPAK-Tech-AP6275P_C2984107.pdf
>>>
>>> PDF Page 23/24 (20/21 in the footer) has the Host Interface Timing
>>> Diagram. WL_REG_ON should only be enabled after 2 cycles from LPO.
>>> That means with LPO being disabled WL_REG_ON cannot be enabled. I'm
>>> pretty sure WL_REG_ON means WLAN_REGULATOR_ON, so the logic is not
>>> powered. On page 27 (24 in the footer) there is also a PCIe Power-On
>>> Timing diagram, which shows that WL_REG_ON must be enabled before
>>> the PCIe refclk is enabled.
>>>
>>> So there is a specific power up sequence, which must be followed.
>>
>> The chip also has an (less accurate) internal LPO so the 32khz sleep clock
>> in the diagram does not have to be an external clock. Maybe Ampak
>> bootstrapped the chip to disable the internal clock. Dunno.
>>
>> What Andy needed back then to get firmware running was a change in the nvram
>> file to force using the internal LPO, but the device was already visible on
>> the PCIe bus.
> 
> mh, I just tested again and I can no longer reproduce the LPO
> requirement for PCIe detection. Maybe it was something else all
> along (I did most of my tests quite some time ago).
> Sorry for the noise.

Hi Sebastian,

Thanks for letting it know.

Regards,
Arend

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
