Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3164BC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 10:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDAWNMIT2vQBzQ1scg/cg18KIAgJcz3Ki3wFhFC/0vg=; b=YqlD9f7UYHtrwM
	gBsK7mAtKVokeBX6bsrxaXlv1bpyqWYiU5xBBHSPqtGh4M6XuchQrrMlsgsOwymlJKWkgtSrhkKi0
	OI9hs8Bi0HuuUcwUYrQ6JkMqwH3H1kFTDSydRPXSwXQPSQ8VIZh6Y1tQt6Q9jZw7GCIklGFuCBxw+
	WRiGJbQCleEZ7Jg7mQVxMaRfEtnmbqqGUwPQqFTKCK4RZNTdmshg3Pp02CC4nIifxjlNZ39VLOqvX
	37/TW4b2ugPdRUnqEzX2nk/qC5GU/BI+zmeafVPsYLpMuMAUFzGg+StkNtBr4mjR58MFqLGbMY5nu
	ibYSee1lRFPJpCcF5baQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7ZgV-00DEVN-1v; Tue, 20 Dec 2022 10:17:20 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7ZO4-00D6qi-Ph
	for linux-rockchip@lists.infradead.org; Tue, 20 Dec 2022 09:58:18 +0000
Received: by mail-lf1-x133.google.com with SMTP id m29so17570081lfo.11
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Dec 2022 01:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WQkIqaxBtB0Ewfz7A6he2wHq2KcHNaWctN054QYteZs=;
        b=Se8p7QFKTprIr1l5ziV9OgWwRWON80NMznYu6QzDl152RsVlSZNSRNk3SV/yPj53v5
         5GUyFMko3MHxyJV8ni/WPypCIFB/qwi1aWFUGegQBNXyVJCcfP2Q+KwWX4vQbMuqIQPW
         2Gtvnfo2rmkSO3uqI81ZVHYXA8glKSl8SZ4V/a50xOFnFkKgLTMiIlZ8VAXrQruweOXw
         AYAoWOUX2V8YB/UO9O+k8YcwhI7L0rt9wqSUfsMYg4BI86SxJMmra0anoxw06IEyYHHv
         8zkuCqbfgRCC+8Omkq0Pqqv5gAkFohFnQOLEz2yhMfYHpZBCYCEIBIlXRTwM0IUl0D27
         Cr/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WQkIqaxBtB0Ewfz7A6he2wHq2KcHNaWctN054QYteZs=;
        b=vwjmCUygA9n//s4c6qJpybNoYC6A8qAee/PU6WMZUBKm3LTAaPrUqQaOxMDTRkh7NN
         +iVRNAnYeO47erO35m1Cb41SpchfVcM0BKdUdmh8/OWJyYFpJHha6QAkL6QA62FIRIjg
         06CDjWh6ozbf4yAHI6jRQv5OxppLEMYrBvLdJopdVz/Z9Am04Y5P7B1X3pTc9Mu9LOLg
         1kZzafEzDzdkylXxV5/fRSYKRySTGqJKVme5OaS5cPzjAbVb2/EuIE/zkdQjPeh/r8F2
         BMRXnHjeTeTNxl36EApIwn/AKW6eWRswbseUITmgtu+zbkvncANtKmT1Sn2wL6Esjwfi
         /DqQ==
X-Gm-Message-State: ANoB5plGhJt1YSZkkqNpnrejDb7umlZreNggatt7MSF3ub87YwmkRsXF
	ZZJL7AFiOp8Ba8RqtboP9Pw1pQ==
X-Google-Smtp-Source: AA0mqf4fa83vKausq8IwFJxpg7iYptOZiAjPPBjemcwf6+O/3/Qq7ioCFbXlbZhwHmg6RAq9FFkVnw==
X-Received: by 2002:a05:6512:68f:b0:4b6:f595:cfde with SMTP id t15-20020a056512068f00b004b6f595cfdemr11279533lfe.12.1671530291883;
        Tue, 20 Dec 2022 01:58:11 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q5-20020a19a405000000b004b4ea0f4e25sm1397030lfc.301.2022.12.20.01.58.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Dec 2022 01:58:11 -0800 (PST)
Message-ID: <26471d96-804a-93e8-d866-e6c89ce52952@linaro.org>
Date: Tue, 20 Dec 2022 10:58:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3] dt-bindings: display: rockchip: convert
 rockchip-lvds.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <fd51df66-147d-d40f-913e-385625a71984@gmail.com>
 <8db62d1a-365c-d41d-90aa-4c78c5d5e9ce@linaro.org>
 <5e05a6d5-bc89-fb66-fcae-2e1194e23c12@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5e05a6d5-bc89-fb66-fcae-2e1194e23c12@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_015816_877270_84101308 
X-CRM114-Status: GOOD (  17.20  )
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

On 19/12/2022 15:23, Johan Jonker wrote:
> 
> 
> On 12/19/22 14:04, Krzysztof Kozlowski wrote:
>> On 19/12/2022 13:32, Johan Jonker wrote:
>>> Convert rockchip-lvds.txt to YAML.
>>>
>>> Changed:
>>>   Add power-domains property.
>>>   Requirements between PX30 and RK3288
>>>
>>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>>> ---
>>>
>>> Changed V3:
>>>   Filename matching compatible style
>>>   Drop "Regulator phandle for "
>>>   Specify properties and requirements per SoC
>>>   Sort order and restyle
>>>
>>> Changed V2:
>>>   Fix title
>>> ---
>>>  .../display/rockchip/rockchip,lvds.yaml       | 170 ++++++++++++++++++
>>>  .../display/rockchip/rockchip-lvds.txt        |  92 ----------
>>>  2 files changed, 170 insertions(+), 92 deletions(-)
>>>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
>>>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
>>> new file mode 100644
>>> index 000000000..03b002a05
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
>>> @@ -0,0 +1,170 @@
>>> +# SPDX-License-Identifier: GPL-2.0
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/display/rockchip/rockchip,lvds.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Rockchip low-voltage differential signal (LVDS) transmitter
>>> +
>>> +maintainers:
>>> +  - Sandy Huang <hjc@rock-chips.com>
>>> +  - Heiko Stuebner <heiko@sntech.de>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - rockchip,px30-lvds
>>> +      - rockchip,rk3288-lvds
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  clocks:
>>> +    maxItems: 1
>>> +
>>> +  clock-names:
>>> +    const: pclk_lvds
>>> +
>>> +  avdd1v0-supply:
>>> +    description: 1.0V analog power.
>>> +
>>> +  avdd1v8-supply:
>>> +    description: 1.8V analog power.
>>> +
>>> +  avdd3v3-supply:
>>> +    description: 3.3V analog power.
>>> +
>>> +  rockchip,grf:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description: Phandle to the general register files syscon.
>>> +
>>> +  rockchip,output:
>>> +    $ref: /schemas/types.yaml#/definitions/string
>>> +    enum: [rgb, lvds, duallvds]
>>> +    description: This describes the output interface.
>>> +
>>> +  phys:
>>> +    maxItems: 1
>>> +
>>> +  phy-names:
>>> +    const: dphy
>>> +
>>> +  pinctrl-names:
>>> +    const: lcdc
>>> +
>>> +  pinctrl-0: true
>>> +
>>> +  power-domains:
>>> +    maxItems: 1
>>> +
>>> +  ports:
>>> +    $ref: /schemas/graph.yaml#/properties/ports
>>> +
>>> +    properties:
>>> +      port@0:
>>> +        $ref: /schemas/graph.yaml#/properties/port
>>> +        description:
>>> +          Video port 0 for the VOP input.
>>> +          The remote endpoint maybe vopb or vopl.
>>> +
>>> +      port@1:
>>> +        $ref: /schemas/graph.yaml#/properties/port
>>> +        description:
>>> +          Video port 1 for either a panel or subsequent encoder.
>>> +
>>> +    required:
>>> +      - port@0
>>> +      - port@1
>>> +
>>> +required:
>>> +  - compatible
>>> +  - rockchip,grf
>>> +  - rockchip,output
>>> +  - ports
>>> +
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: rockchip,px30-lvds
>>> +
>>> +    then:
>>> +      properties:
>>> +        reg: false
>>> +        clocks: false
>>> +        clock-names: false
>>> +        avdd1v0-supply: false
>>> +        avdd1v8-supply: false
>>> +        avdd3v3-supply: false
>>> +
>>
> 
>> I see one compatible expects regmap from parent (grf is the parent here)
>> and other is directly on MMIO bus. Not the best combination... Maybe
>> this  should be just split to two separate bindings? Looking at driver,
>> their code is also very different between these two variants.
> 
> Looking at the manufacturer tree we can expect the rest with grf parent, but also in the same driver combined with different registers and common probe.
> Due to common probe I prefer one common document.

Bindings are not representing Linux driver structure, so common probe is
not really argument. If you create one driver (one probe) handling
different devices like RTC, extcon, regulator and clocks, does it mean
it must be one binding? No.

You are over-complicating bindings now.

These are entirely different devices - their programming model and how
they are modeled in the DTS.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
