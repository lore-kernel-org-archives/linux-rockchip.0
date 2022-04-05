Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1FD0C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 06:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GncfTMTJQCaZ2Ck27k/9a5TTIFAW7x0mCSw3shyD2mM=; b=G2lpMOvxtqb+zY
	0kq0k/Iw7eB1/8bpOQxwgpxmPFlJM2cw8hEmiTc0VniP0qtWEhd3FJCWmqaD6qCMYGsTjV4A5vrJk
	bR8ZaHDRkHZwmwGCAiI2wYv6OZif5+OF6O7uqHsJ5sgos/2DiJBViQL35QJoWLrkYi7HX3A8RFkdE
	qi1azdnSm1eAwfTwgycA6RfZ9lvB1eYzPy6BgSglNoAzvTYhJEC5fh2yYhMV3oC9Rmv3GCKFSloq+
	Z+V4uoNgV3tJvPsspsjyUuOIavwA1qTHxDZufFyUsQPpC4EUuazwRjCuJnAeFsry0xh314i5yCQJL
	MwOCNnJMRJgf4rd0X/GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbcRI-00HH2j-Rw; Tue, 05 Apr 2022 06:13:16 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbcR6-00HGyT-Ku
 for linux-rockchip@lists.infradead.org; Tue, 05 Apr 2022 06:13:07 +0000
Received: by mail-ej1-x62e.google.com with SMTP id qh7so14418745ejb.11
 for <linux-rockchip@lists.infradead.org>; Mon, 04 Apr 2022 23:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=rZeprPWOtqKRGMgfqMRvv0PvLM+lTF/w3B6BQ9TTNXg=;
 b=Ng5jt/B96yk3lkXFR+3TAdD6coPaC5Hx76Pu8opMabaJwCQN7vIv975l6acHKa66cP
 mukI7V/b36aEA3niPOEAvU83i4RROk+mfgoJtY6nrHiFzgyUry0PuX1oxclM9TU1bkjl
 6wEQi9waenyT9WCNeHYBHg8klOAinEYbMIB6iSaVd4MKIQ6Qsrfv0ebOOhTzHYwWYelE
 LdOtc584ihPlzczA45nWxtdd/RCDDhTf73SKi3kYGAtwXn31Fd2zg/1c+G9Wrlh3sX3i
 +I7V6PRRT2wXRz8yv3LzP+bES6codvmVGrNdte6zmsFLNr+I9FxbIiRfQYn7AFL22Jip
 P2sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=rZeprPWOtqKRGMgfqMRvv0PvLM+lTF/w3B6BQ9TTNXg=;
 b=LD9LU4gwFI7I5alZAgB5RIIne5Up2vBOavzJMAscklRysXLCFtizyfdrwWsRSV8Di3
 alteh+koNXflvsGWlQGOGxa0Gex4lFIxQCoMi+8a4IyjHJj7tKNZAmPAdZVdeo/QndlN
 UTQKttjI49HWadem1pQLJNCeHNtIJF9pS8OpnFREs+wba41RlfaqHgH/vX89QIGps74l
 V/NwDwJhIRVOyLVRLlA+NLN2d9hGqSp+ISKkOoIHCkTBiG2wlhudC8BorkLRWWDgOky1
 RmetMvtmCXKK27jZ2RgzVl61Kp+OgifK3xgsOB7MjbBh1sw466angZ5aNG+/mWk75+YZ
 FLwQ==
X-Gm-Message-State: AOAM533Ly5mdS7345M2ZPB6BurgYoLC5CDgxVDhJePZSCCKxVcRbPiEG
 PyqOiP/6voZK87WHzkfwLVGtdU818I+3Ex23
X-Google-Smtp-Source: ABdhPJzhiqjVHwaMmE2HIwa9wbO5hpaWli1dKwQoRSQSdZPVfVvMH4WtmdyYT/m5YYLIABIsNv0ZtQ==
X-Received: by 2002:a17:907:3e1c:b0:6e4:e1b3:5384 with SMTP id
 hp28-20020a1709073e1c00b006e4e1b35384mr1892893ejc.700.1649139182083; 
 Mon, 04 Apr 2022 23:13:02 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 p13-20020a50d88d000000b0041cd1a083f7sm2655884edj.1.2022.04.04.23.13.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Apr 2022 23:13:01 -0700 (PDT)
Message-ID: <a50638db-d131-2083-d64e-a8164d377759@linaro.org>
Date: Tue, 5 Apr 2022 08:13:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Hardkernel ODROID-M1 board
Content-Language: en-US
To: Dongjin Kim <tobetter@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329094446.415219-1-tobetter@gmail.com>
 <20220329094446.415219-2-tobetter@gmail.com>
 <2a5f002f-8a61-e5b0-a574-ee99591c4c12@kernel.org> <YkuqTBAi8d48NAOR@anyang>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YkuqTBAi8d48NAOR@anyang>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_231304_790112_EC4CA0DB 
X-CRM114-Status: GOOD (  17.01  )
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

On 05/04/2022 04:32, Dongjin Kim wrote:
> On Tue, Mar 29, 2022 at 07:12:16PM +0200, Krzysztof Kozlowski wrote:
>> On 29/03/2022 11:44, Dongjin Kim wrote:
>>> This patch is to add a device tree for new board Hardkernel ODROID-M1
>>> based on Rockchip RK3568, includes basic peripherals -
>>> uart/eMMC/uSD/i2c and on-board ethernet.
>>
>> I think the email got corrupted (incorrect To addresses).
>>
> Thank you for reviewing and sorry for late reply.
>>>
>>> Signed-off-by: Dongjin Kim <tobetter@gmail.com>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>>  .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 406 ++++++++++++++++++
>>>  2 files changed, 407 insertions(+)
>>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
>>> index 4ae9f35434b8..81d160221227 100644
>>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>>> @@ -61,3 +61,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
>>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
>>> new file mode 100644
>>> index 000000000000..d1a5d43127e9
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
>>> @@ -0,0 +1,406 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +/*
>>> + * Copyright (c) 2022 Hardkernel Co., Ltd.
>>> + *
>>> + */
>>> +
>>> +/dts-v1/;
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +#include <dt-bindings/leds/common.h>
>>> +#include <dt-bindings/pinctrl/rockchip.h>
>>> +#include "rk3568.dtsi"
>>> +
>>> +/ {
>>> +	model = "Hardkernel ODROID-M1";
>>> +	compatible = "rockchip,rk3568-odroid-m1", "rockchip,rk3568";
>>> +
>>> +	aliases {
>>> +		ethernet0 = &gmac0;
>>> +		i2c0 = &i2c3;
>>> +		i2c3 = &i2c0;
>>> +		mmc0 = &sdhci;
>>> +		mmc1 = &sdmmc0;
>>> +		serial0 = &uart1;
>>> +		serial1 = &uart0;
>>> +	};
>>> +
>>> +	chosen: chosen {
>>
>> No need for label.
>>
> Ok. Will fix it.
>>> +		stdout-path = "serial2:1500000n8";
>>> +	};
>>> +
>>> +	dc_12v: dc-12v {
>>
>> Generic node name, so "regulator" or "regulator-0"
>>
> I've followed the node names as already merged device tree files
> for other boards and thought this would be acceptable. Same for other
> node names 'vcc3v3-sys' and node names with underscore below.

Poor code once it gets in, it's difficult to get it out... Don't use it
as an example. :)


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
