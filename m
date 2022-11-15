Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3562C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Nov 2022 07:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBoHTa9+/YWicfrtTUnQdGBFr8nlUE2QlueD1uGBn3Q=; b=LX2br3+fBdKSGf
	LY2bxoz46jmipXzkhRWMtLAnfwEAhH1l5djX09F6Htr3ipHNdEOLpBgPAtjD6Ise6x9PumCwNoy3i
	r9uTWFxaSn7usg9FXCQGIySLixlw5xC/XBwDbUxnhRyy4rVfXC2R9xDYrV65XEUiT/bcBCqUbgzq1
	Orh/bQooJQDzi+Egb5rrbEYXuIHE/nCFSxXI62PaOhxik6HvKQeRYG5YSDxN6P59kwpjiTsNbSnzu
	0pJtf4cJeVwbtjnic6pu7jfvl1uGysqPce4cP7671YM4LR8VB8kqjJn9nRgJ+uHZN1VCgOEa8TVGR
	FRH71+r+fzt1drCp4g3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouqnF-008lAj-Kp; Tue, 15 Nov 2022 07:55:41 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouqnC-008l54-PW
	for linux-rockchip@lists.infradead.org; Tue, 15 Nov 2022 07:55:40 +0000
Received: by mail-lf1-x131.google.com with SMTP id j4so23249138lfk.0
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Nov 2022 23:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P7kkKFOWrQTLKoBV+P616xRwUnjPXKHV1RSaoFXjrwk=;
        b=nU4Xft6mucL3YYPTT2rOdwfMaPDmlzKB+SXc2b8TMzAjoD8Oa2vVuhSAzPHtgSdtFf
         pQe1VLYW1k2hhJMjMEuIGIMLPA4bSG1+K17pFKI7paDvqzuxRCKKEu9dfI+1db6VKGDp
         2MLLf2atNHYN83JQHWUFg2oO5dQ+WE6XFzsbzA6e5t3GxVqgrGIQuPP7fHV3HVWRFvDo
         sslcJVAILxa0cG0Px+b1LYckjf477PsEn+V3dS59r5vVFk2ofY091SCVpMbtXXQPufRx
         VJhnJR5/eKaUNNQsZvWOIU2z6OM9xbom9jVvi0pEpL7nLHQ6lH8N2gQ4176t40PrfV7d
         3K3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P7kkKFOWrQTLKoBV+P616xRwUnjPXKHV1RSaoFXjrwk=;
        b=NEZTGjdFc01gTl9zpXdFcpd8aqcj+2TJIoPR9b1+Xin3spNqcK33HyR1TVCCB9c/aR
         uTIYGvFXzX3Zjf4vQRG2L91boDdKYsPwhXWDgN9TeciV7sRKoFLe/fiahTRgXLIvYrfC
         mf8Xo+6zt1Gy30TJa5APJQVyyLRFIr4ug6550q2UQkeZ2KprrUQHeWIUKnNyt9t8z67a
         3eVEWHEalhciJWK3YfMRAO20b4bfEeUz1lrWGsQKJUfg3Df2f/1KuV5mUphrpuGi7VdQ
         DMay0N5+/5Q9PBq2u0r4EhAAs34wbSG5SVvxeA0+4vD3wlpT3YOa7Q2HmjmzAdC+aMrZ
         0seg==
X-Gm-Message-State: ANoB5pnJOM+3je/qkUNX/PGzPw2WunqrhuBd+oXSwX5s8r3HGE60yL9V
	9Ke2S5sZucZty79lakn4CEDOEA==
X-Google-Smtp-Source: AA0mqf4FyXkIRGKiAqc/xbfNN0Lu9l5xTvPrUw9htGPNKpPwHE7EwirGDRYqoe756ovqlKw+rsxQlQ==
X-Received: by 2002:a05:6512:acf:b0:4a2:2a60:ecda with SMTP id n15-20020a0565120acf00b004a22a60ecdamr5182538lfu.81.1668498935795;
        Mon, 14 Nov 2022 23:55:35 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id h4-20020ac25964000000b004979da67114sm2102833lfp.255.2022.11.14.23.55.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 23:55:35 -0800 (PST)
Message-ID: <149c2614-d87a-4406-5552-f444709a6e09@linaro.org>
Date: Tue, 15 Nov 2022 08:55:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To: Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Jon Lin <jon.lin@rock-chips.com>, Sugar Zhang <sugar.zhang@rock-chips.com>
References: <20221108041400.157052-1-jagan@edgeble.ai>
 <20221108041400.157052-7-jagan@edgeble.ai>
 <429df965-bd4a-afa4-e66c-6907677fbf8c@linaro.org>
 <CA+VMnFxs06_KvZc5p_rNAep9aJ+t908CUtVcVTBV7c_b1mu+Xg@mail.gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFxs06_KvZc5p_rNAep9aJ+t908CUtVcVTBV7c_b1mu+Xg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_235538_908912_9BF42EEC 
X-CRM114-Status: GOOD (  18.78  )
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

On 15/11/2022 07:38, Jagan Teki wrote:
> On Tue, 8 Nov 2022 at 23:43, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 08/11/2022 05:13, Jagan Teki wrote:
>>> RV1126 is a high-performance vision processor SoC for IPC/CVR,
>>> especially for AI related application.
>>>
>>> It is based on quad-core ARM Cortex-A7 32-bit core which integrates
>>> NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
>>> and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
>>> hybrid operation and computing power is up to 2.0TOPs.
>>>
>>> This patch add basic core dtsi support.
>>>
>>> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
>>> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
>>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>>> ---
>>> Changes for v7:
>>> - fix dtbs_check
>>> - rearrange nodes
>>> - remove Edegble in license text
>>> Changes for v6:
>>> - add psci node
>>> Changes for v5:
>>> - none
>>> Changes for v4:
>>> - update i2c0
>>> - rebase on -next
>>> Changes for v3:
>>> - update cru and power file names
>>> Changes for v2:
>>> - split pinctrl in separate patch
>>>
>>>  arch/arm/boot/dts/rv1126.dtsi | 438 ++++++++++++++++++++++++++++++++++
>>>  1 file changed, 438 insertions(+)
>>>  create mode 100644 arch/arm/boot/dts/rv1126.dtsi
>>>
>>> diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
>>> new file mode 100644
>>> index 000000000000..a485420551f5
>>> --- /dev/null
>>> +++ b/arch/arm/boot/dts/rv1126.dtsi
>>> @@ -0,0 +1,438 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +/*
>>> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
>>> + */
>>> +
>>> +#include <dt-bindings/clock/rockchip,rv1126-cru.h>
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +#include <dt-bindings/interrupt-controller/irq.h>
>>> +#include <dt-bindings/pinctrl/rockchip.h>
>>> +#include <dt-bindings/power/rockchip,rv1126-power.h>
>>> +#include <dt-bindings/soc/rockchip,boot-mode.h>
>>> +
>>> +/ {
>>> +     #address-cells = <1>;
>>> +     #size-cells = <1>;
>>> +
>>> +     compatible = "rockchip,rv1126";
>>> +
>>> +     interrupt-parent = <&gic>;
>>> +
>>> +     aliases {
>>> +             i2c0 = &i2c0;
>>> +             serial0 = &uart0;
>>> +             serial1 = &uart1;
>>> +             serial2 = &uart2;
>>> +             serial3 = &uart3;
>>> +             serial4 = &uart4;
>>> +             serial5 = &uart5;
>>
>> These are not properties of a SoC but board. They depend on the
>> particular routing on the board... unless this SoC is an exception from
>> all others?
> 
> Was this a new feature to follow, didn't see this before at least
> rockchip SoC's.
> 

It's not exactly new comment, but rather not always enforced/given.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
