Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19057C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Apr 2022 19:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aELDrq1TQs3qLiSxvH0s5Gs7tZbIFdIjZ1ZctyqxIc0=; b=jfRnCQ4nWnigoF
	MXJELN9eSfkWbvRi9FIHdLiCGDlTw7XA8jZnArDJU8akJ+cPyqhdZdV7aFlz+1YJZ4UiiUHYga2az
	0EqfyAOfhKs7aZ+DquA20HqsGxJrfvei7nZhofd8xenBrJd5yVjXKnE2kcOVvxbMvHlmm3G+tZ0GE
	rzLYgUX6Xice/U9zpPEtQTc7HMIl2wXh7AoIiJuoLz2iJK7zCdR+66r6i6KGdiYuYj1aq9YC0eXqb
	yGCpgqr3ahrEJYvAXh2HwU5oix/6YTdFVga7UAVchU21qYKUlJ3bQYNKTvbfRhtEsR+f9fgiHYdGR
	iwLjtO9EQDvrPBqtl4dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngtl8-0060KH-2g; Tue, 19 Apr 2022 19:43:34 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngtku-0060FG-Qr
 for linux-rockchip@lists.infradead.org; Tue, 19 Apr 2022 19:43:23 +0000
Received: by mail-ej1-x62e.google.com with SMTP id s18so35128700ejr.0
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Apr 2022 12:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=go6T1fc0TY6wvIhs3nqLqYh80BHNHvnkKYmeIA/Ug5g=;
 b=FnR/UqpbQcZweANaWULrc5vOPvEyZDiktgqeeWVBZHnhccMdR712M18FDpAcMnkzc9
 jlIzR3B1e/LNOoK5HMJlQlmrOl3Z/jkhxV/vDRG77/gB3QgeFkd64O2w8FuOg6c11TNG
 pW2tLHdyOLcF6AJxmmnySnf0KTu8HES9wkSp1p6MFrgy4ap4GlnqcvMDc9ejHtObHWQG
 NH3Uut2wV5oTdC3mkmcQUxSW/XATXf1hONToXNyoaZQeLbX7b6UTQZqbUttPvFrD2+bC
 6smkt4/zN1pAbos6YHgDf2ICLsvX2KEwNSZFcaodRGabXBG7f889U53Xu3G6OcHux3I+
 cVTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=go6T1fc0TY6wvIhs3nqLqYh80BHNHvnkKYmeIA/Ug5g=;
 b=Vsy0cA+y4IkXcXJY8EDo5OzlBlEKUCGOeUyXOR6liCqQB9Zzkz4Ev25NiKzRaugJ77
 SyFAe/QeAgONNlq1PmCLiXocbnRjuvIYQ4/8+STXPGy8WmUbrVvm8UOdqe0Iq2HcxZyE
 28y+ITs39RicKaNNs/pOFyX1Y9Pc7jCXx7NoSac7UVXP2iLdBagUQEY1HVo8rr0mCVva
 x+AweDuhLGO2NyYVU6qgBvcU7ifgRFdBqKSpXl5ucmmhPOy1p2A1nYpVRvq6gdg4MIzy
 twZLixkr3XIB7z8E0Rx1oLV2BYdLinwqJxk5L2hMP/8w+T4alqp/j+IP1cfTTug1kr6x
 zhwA==
X-Gm-Message-State: AOAM533QdPm2parAVd2Dd2ccYV9UDi+qsf5/oU/Or6Z4r0G3GG5WB2H9
 0oYRYEYDxm6XjnYx7CpyPZKhXw==
X-Google-Smtp-Source: ABdhPJxN+zqmAT7T1BJC0xIRHgTKTkUJwlFx08wQXWb7+EHLMa/kEqxDmWxHQi8JY5CwtSTfjM3hCg==
X-Received: by 2002:a17:906:fa8f:b0:6e4:de0d:45f with SMTP id
 lt15-20020a170906fa8f00b006e4de0d045fmr14839252ejb.235.1650397395281; 
 Tue, 19 Apr 2022 12:43:15 -0700 (PDT)
Received: from [192.168.0.221] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 f5-20020a1709067f8500b006da68bfdfc7sm5999584ejr.12.2022.04.19.12.43.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Apr 2022 12:43:14 -0700 (PDT)
Message-ID: <fce0337a-0c71-a040-0a01-f20b55eb568b@linaro.org>
Date: Tue, 19 Apr 2022 21:43:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: Aw: Re: [RFC/RFT 1/6] dt-bindings: phy: rockchip: add pcie3 phy
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
References: <20220416135458.104048-1-linux@fw-web.de>
 <20220416135458.104048-2-linux@fw-web.de>
 <38e60bb2-123b-09cf-d6ef-3a07c6984108@linaro.org>
 <trinity-597cf8a3-2ad4-41e6-b3c9-b949f8610533-1650390552136@3c-app-gmx-bap70>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <trinity-597cf8a3-2ad4-41e6-b3c9-b949f8610533-1650390552136@3c-app-gmx-bap70>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_124320_900101_5BC6F901 
X-CRM114-Status: GOOD (  20.30  )
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

On 19/04/2022 19:49, Frank Wunderlich wrote:
>> The list should be strictly ordered (defined), so:
>>   items:
>>     - const: ...
>>     - const: ...
>>     - const: ...
>>   minItems: 1
>>
>> However the question is - why the clocks have different amount? Is it
>> per different SoC implementation?
> 
> i only know the rk3568, which needs the clocks defined here, don't know about rk3588 yet.
> in rk3568 TPM i have the pcie-part seems missing (at least the specific register definition), so i had used the driver as i got it from the downstream kernel.
> 
> not yet looked if i find a rk3588 TPM and if this part is there as i cannot test it (one of the reasons this is a rfc/rft).

You can skip RK3588 compatible or define it this strictly also for that
chip.

> 
>>> +
>>> +  "#phy-cells":
>>> +    const: 0
>>> +
>>> +  resets:
>>> +    maxItems: 1
>>> +
>>> +  reset-names:
>>> +    const: phy
>>> +
>>> +  rockchip,phy-grf:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description: phandle to the syscon managing the phy "general register files"
>>> +
>>> +  rockchip,pipe-grf:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description: phandle to the syscon managing the pipe "general register files"
>>> +
>>> +  rockchip,pcie30-phymode:
>>> +    $ref: '/schemas/types.yaml#/definitions/uint32'
>>> +    description: |
>>> +      use PHY_MODE_PCIE_AGGREGATION if not defined
>>
>> I don't understand the description. Do you mean here a case when the
>> variable is missing?
> 
> yes, if the property is not set, then value is PHY_MODE_PCIE_AGGREGATION = 4

Then just use "default: 4"

> 
>>> +    minimum: 0x0
>>> +    maximum: 0x4
>>
>> Please explain these values. Register values should not be part of
>> bindings, but instead some logical behavior of hardware or its logic.
> 
> it's a bitmask, so maybe
> 
>     description: |
>       bit0: bifurcation for port 0
>       bit1: bifurcation for port 1
>       bit2: aggregation

That's good. I got impression you have a header with these values. If
yes - mention it here.

>       use PHY_MODE_PCIE_AGGREGATION (4) as default

Just use default as I wrote above.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
