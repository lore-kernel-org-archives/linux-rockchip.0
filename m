Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C908C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 12:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAKJx3iFrOOkK5kdfYCRtSuqy4h2baU4oTYZtMxpdf0=; b=rq7vxL7jamw/08
	uOd+HlxUK5QcqIhbAqD4T/CenJCEMgi2I8Le6G5mt8JFPhxYJrwaLmqa+L8xX9CXY51z6UE2s3Y7s
	l6mU8tq3xXYGVd+QYxpgJLVOZ1xrJY0x7sr6LQ8xrJIOcp8A2QzOkAoK23uY+Sq1zNPbSTp+et78q
	gzLrgmNCppmV+4JAgvdiU8LI6UIT98Hbc3E0ZxbKjBcyG7FXkbYuDvTKLLgHYOH/DEQiCiSGzsDAx
	HqlO0DIiDcG04amT1F5t9ufRpBZXSEQNtjAvIXdtLVYhE/4m7ntkzFrCP3JAI9chWzeAM4oV5y7Rj
	9DT1R9SpGfXukQiDRGUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOfYH-00CMtS-FM; Mon, 28 Feb 2022 12:54:57 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOfI6-00CGSR-1z
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 12:38:21 +0000
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 948B83FCAB
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 12:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646051885;
 bh=yBCEUorlg+xBlOPMuzfS7FMt5ush9iHU9TRaKC9MT3M=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=DQpjbOys0yb+tqHibyxbOQ+p3ChSG9QTceqi8n5kOpLLU85pNkcg+X44JZp34HEso
 c8bix4vdFFNnPZ7hYoFF7FF2o7VsFvDRXwqs9sfXHZnaDmjb7/bp38k/2Wam0FHBQa
 EGfv5PzEXmRb2sKDs2p40eRsRo4S5dPJnpCHcQBBYoo/81Cwd+guY7Kd2xBVgLii5O
 TzpoNRlFZFBrg7lGL7pBn1HlDk8u7XYl+A66Szm5DoEJDXShJr610P5rEmgwNr1DTn
 eZbPS5xyavLb8Cp71jQO3TdkPDAHISQ/YWQphTCKSNl7pSUSZzkC01IYvZREsLSQjy
 QMYNn+NbLr3yA==
Received: by mail-ej1-f71.google.com with SMTP id
 h22-20020a1709060f5600b006b11a2d3dcfso5109899ejj.4
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 04:38:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=yBCEUorlg+xBlOPMuzfS7FMt5ush9iHU9TRaKC9MT3M=;
 b=8Bbcot6hR9K0IoL8xHFSfqbn2BbKX6PNJNr6uTPdRn3QMxCW6sEL5gWce/AnENgrFT
 FhpBU7V83KJN4xo0WpDgYQNynG2cX7RR6eLaarAmJP85JmIQ8eHdoa0HAmjMkxTTTBdg
 uTFXzu4jENMkN4+6hPoTpJTSNqeQp4iNAKIsIpoDtVaiovhp4xQ0eHevhQ6L3ZGdJLtD
 T4scefEkht6RP1NFB/zkpy2+XKuIh3XfHPxynatSwR5qMgLqjSh8PUutHlZQMWM72sZm
 u1TEUg5TXQPMS+/zP4XSVH/TOLoWhJ8h76Ir3pf/N08rtP1if/yEAzdhgTm35Ts0cUpJ
 dN7Q==
X-Gm-Message-State: AOAM5322FH+WWCyr+xY5GCYEN68j9GXKLzM7BVfH6YZx9o+nSy1vXxto
 sDR2dIANCOg6kcNsw3nX77qpqJZ2eBUQdoVG5M3B47K4d7FdeFyMe36lw1FoKqNX5GsU8oMxVf4
 ua0nPqCImzm2yB620NnPLKS6HhqE+qdNcVZGe4JsZNJkBstTeHg==
X-Received: by 2002:a17:906:30d1:b0:6cf:c116:c9d3 with SMTP id
 b17-20020a17090630d100b006cfc116c9d3mr14139274ejb.245.1646051885097; 
 Mon, 28 Feb 2022 04:38:05 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzcabmO//fO9WrOuT+Tx7mXA7Z9TCYDStZV57LXD69zGXPBLH9Zc2063RzietPBwBz5cKiOxg==
X-Received: by 2002:a17:906:30d1:b0:6cf:c116:c9d3 with SMTP id
 b17-20020a17090630d100b006cfc116c9d3mr14139255ejb.245.1646051884758; 
 Mon, 28 Feb 2022 04:38:04 -0800 (PST)
Received: from [192.168.0.133] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 x12-20020a50d9cc000000b0040f70fe78f3sm6005540edj.36.2022.02.28.04.38.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Feb 2022 04:38:03 -0800 (PST)
Message-ID: <8fbbce9e-4fd9-d420-43ef-953e846d29f1@canonical.com>
Date: Mon, 28 Feb 2022 13:38:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: Aw: Re: [PATCH v3 1/3] dt-bindings: Convert ahci-platform DT
 bindings to yaml
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, Rob Herring <robh+dt@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20220227182800.275572-1-linux@fw-web.de>
 <20220227182800.275572-2-linux@fw-web.de>
 <4c3303f5-7af5-9974-7bea-b7f0d6c7ef53@canonical.com>
 <trinity-ac45bde6-392d-4810-8aad-9a06d2bcd85a-1646050780475@3c-app-gmx-bs53>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <trinity-ac45bde6-392d-4810-8aad-9a06d2bcd85a-1646050780475@3c-app-gmx-bs53>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_043814_266235_5EB9A8C7 
X-CRM114-Status: GOOD (  40.59  )
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

On 28/02/2022 13:19, Frank Wunderlich wrote:
> Hi Krzysztof,
> 
> thanks for first review.
> 
>> Gesendet: Montag, 28. Februar 2022 um 11:08 Uhr
>> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@canonical.com>
> 
>> On 27/02/2022 19:27, Frank Wunderlich wrote:
>>> From: Frank Wunderlich <frank-w@public-files.de>
> 
>> You missed devicetree mailing list (corrupted address).
> 
> sorry, devicetree ML was To, but forget the Cc-Header (prepared addresses in coverletter)
> 
>>> imho all errors should be fixed in the dts not in the yaml...
> 
>>> -- reg               : <registers mapping>
>>> -
>>> -Please note that when using "generic-ahci" you must also specify a SoC specific
>>> -compatible:
>>> -	compatible = "manufacturer,soc-model-ahci", "generic-ahci";
> ...
>>> +properties:
>>> +  compatible:
>>> +    contains:
>>> +      enum:
>>> +        - brcm,iproc-ahci
>>> +        - cavium,octeon-7130-ahci
>>> +        - generic-ahci
>>> +        - hisilicon,hisi-ahci
>>> +        - ibm,476gtr-ahci
>>> +        - marvell,armada-380-ahci
>>> +        - marvell,armada-3700-ahci
>>
>> Order entries alphabetically.
> 
> ok
> 
>>> +        - snps,dwc-ahci
>>> +        - snps,spear-ahci
>>
>> You converted the TXT bindings explicitly, but you missed the comment
>> just below the 'reg' about generic-ahci. The generic-ahci never comes alone.
> 
> How should this comment be added? description above/below the compatible-property?
> Sorry for dumb questions...this is my first yaml ;)

No, this has to be oneOf. See for example
Documentation/devicetree/bindings/gpio/gpio-vf610.yaml or many other files.

> 
> e.g.
> 
> properties:
>   compatible:
>     description:
>       Please note that when using "generic-ahci" you must also specify a SoC specific
>       compatible:
>          compatible = "manufacturer,soc-model-ahci", "generic-ahci";
>     contains:
>       enum:
> 
>> The snps,dwc-ahci could come, although history shows that Synapsys
>> blocks are commonly re-used and they should have specific compatible.
>> Current users still have single snps,dwc-ahci, so it could be fixed a
>> bit later.
>>
>> On the other hand, I expect to fix all the DTS in the same series where
>> the bindings are corrected.
> 
> i don't know the marvell/broadcom-hw so i cannot fix them.
> Just converted the txt to check my rockchip sata nodes and to be more
> future-proof (no more exceptions like the marvell/broadcom)
> 
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  clocks:
>>> +    minItems: 1
>>> +    maxItems: 3
>>
>> Items should be described. Next or this patch could add also clock-names.
> 
> i was told to drop clock-names (same for interrupt-names and reset-names) from dts
> and in txt it was not there so have not added it
> 
> https://patchwork.kernel.org/comment/24755956/

OK, then let's skip them now. The clock items should be described if it
is possible.

> 
>>> +
>>> +  interrupts:
>>> +    minItems: 1
>>
>> You mean maxItems?
> 
> no, minItems, as interrupts suggests 1+ (same for phys)

You cannot have infinite number of interrupts... What suggests "1+"?
What does it mean "as interrupts suggests"? Do these hardware blocks
really have many interrupt lines?

The same for phys.

> 
>>> +
>>> +  ahci-supply:
>>> +    description:
>>> +      regulator for AHCI controller
>>> +
>>> +  dma-coherent:
>>> +    description:
>>> +      Present if dma operations are coherent
>>
>> Skip description, it's obvious. Just 'true'.
> 
> ok, took this from the txt
> 
>>> +
>>> +  phy-supply:
>>> +    description:
>>> +      regulator for PHY power
>>> +
>>> +  phys:
>>> +    minItems: 1
>>
>> maxItems?
>>> +
>>> +  phy-names:
>>> +    minItems: 1
>>
>> Describe the items.
>>
>>> +
>>> +  ports-implemented:
>>> +    description:
>>> +      Mask that indicates which ports that the HBA supports
>>> +      are available for software to use. Useful if PORTS_IMPL
>>> +      is not programmed by the BIOS, which is true with
>>> +      some embedded SoCs.
>>> +    minItems: 1
>>
>> You need a type and maxItems.
> 
> what will be the type of a mask?

`git grep ports-implemented` gives pretty straightfoward answer. All DTS
have u32 and driver also uses u32.

> 
>>> +
>>> +  resets:
>>> +    minItems: 1
>>
>> maxItems?
> 
> if there is a known maximum....

Must be. You cannot have infinite number of reset lines... Please check
all DTS and drivers. If there is public documentation, it also might be
useful.

> 
>>> +
>>> +  target-supply:
>>> +    description:
>>> +      regulator for SATA target power
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - interrupts
>>> +
>>> +patternProperties:
>>> +  "^sata-port@[0-9]+$":
>>
>> You limit number of ports to 10. On purpose? What about 0xa? 0xb?
> 
> oh, right, there can be hexadecimal...
> thought this is only true for the main-node (address) and have only seen @0, @1 and @2
> 
>>> +    type: object
>>> +    description:
>>> +      Subnode with configuration of the Ports.
>>> +
>>> +    properties:
>>> +      reg:
>>> +        maxItems: 1
>>> +
>>> +      phys:
>>> +        minItems: 1
>>
>> maxItems? Why do you put everywhere minItems? Are several phys really
>> expected?
> 
> name suggests that it can be more than 1.

What do you mean "name suggests"? Name of property? No, it does not
suggest that. Name is standard. Please check example schema and other
existing schema bindings to see how it is done. For example earlier
gpio-vf610.yaml is not bad.

> i know from usb subsystem (dwc3 usb3) that a device can have more than one phy, and because in the txt there are no ranges i set everywhere MinItems to 1 with open end as i do not know all possibilities. Anything else will be trial and error...for all properties

The bindings need to be specific, so only properties which really,
really can have many unknown elements we could keep here some high
maxItems limit. In 99% of cases maxItems are clearly defined.

> 
>>> +
>>> +      target-supply:
>>> +        description:
>>> +          regulator for SATA target power
>>> +
>>> +    required:
>>> +      - reg
>>> +
>>> +    anyOf:
>>> +      - required: [ phys ]
>>> +      - required: [ target-supply ]
>>> +
>>> +allOf:
>>> +- $ref: "sata-common.yaml#"
>>
>> This goes before properties.
>>
>>> +
>>> +unevaluatedProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +        sata@ffe08000 {
>>
>> Wrong indentation. It starts just below |
> 
> will fix it
> 
>>> +               compatible = "snps,spear-ahci";
>>> +               reg = <0xffe08000 0x1000>;
>>> +               interrupts = <115>;
>>> +        };
>>> +  - |
>>> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> +        #include <dt-bindings/clock/berlin2q.h>
>>> +        sata@f7e90000 {
>>> +                compatible = "marvell,berlin2q-achi", "generic-ahci";
>>
>> This clearly won't pass your checks. I don't think you run
>> dt_binding_check. You must test your bindings first.
> 
> i had them tested ...needed to add the includes...after that the dt_bindings_check was without errors/warnings
> 
> these are the commands i used:
> 
> ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/ata/ahci-platform.yaml
> ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/ata/ahci-platform.yaml

Install dependencies (libyaml-dev) and you will see first error:
Documentation/devicetree/bindings/ata/ahci-platform.yaml:110:1:
[warning] wrong indentation: expected 2 but found 0 (indentation)

But the one I am thinking is indeed not visible by default. You would
need to run it like Rob's boot is running, so add DT_CHECKER_FLAGS=-m.
Then you see:

Documentation/devicetree/bindings/ata/ahci-platform.example.dt.yaml:0:0:
/example-1/sata@f7e90000: failed to match any schema with compatible:
['marvell,berlin2q-achi', 'generic-ahci']




Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
