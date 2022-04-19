Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F32E8C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Apr 2022 19:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mV5CjA82JlQ6CGk0GZHgiWhKxQwKXmZ8Eo9xWE9lz6Q=; b=SCHe5yo8A9mgiQ
	/JTYOF/azkdmCm1zh5xRrxCeFaO31bZWIFjfCL+G1oqpzMbKPzo4RS6QhzNi/8t9cYnIkVeL8splk
	kQXXsLyV3ECPOgwoCJktl6JvUEOzYy9ieAI2wX2THRAtm+1TTn8hNfJYh+G3MGezypvTbF03Jg14P
	pWu1Z9ogUjB+R0NnucJithX4KbbfsyI91ibhsEY39LleHF+eVqtQWtOaAphHOPC2hAFUEo0MJ9SSf
	nRh1LkWg3LHHBE3r5acOaM4gwvZUgXKs3Ct7yHyBd7kz/w7f4WDmXWaWc7C02iY1AbzlIbQhXKz2b
	sk+M0XtzIywLmJjC0/mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngtiN-005zk0-5j; Tue, 19 Apr 2022 19:40:43 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngtiA-005zdu-0w
 for linux-rockchip@lists.infradead.org; Tue, 19 Apr 2022 19:40:32 +0000
Received: by mail-ej1-x636.google.com with SMTP id lc2so34969906ejb.12
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Apr 2022 12:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=QPOqgsEid6Wqxx1M40rGK1q2D5Xysrda2vwxz+DKUPc=;
 b=Ov/14cWHpDKy5PQzUQZKB6HCjf/IXjwsbqJGUZ5ZgQSB0Nvi5HVGxGRPW0J73z29L7
 cQAMtVhwFPyV4fsWvz9sin/nxOJ5nX76c3cwKLa7RU/Af+R+NwozF+GGqqmzhV/z7r+z
 B6/hzWzcQzCs+P6k40mSURlW7eG0E9z/ZXS/qG2MiiseRag8zVEOM3tRGquuk+C7BC6T
 SfQLe+ElfqVxf04HDySjhuEZdLIaexqei9P73XfigZ3VCeWoEJHdCl6rz0RNdxv/j9fR
 JA1Log/TBQ8umsABpgUIR5JFXjU9Jmt98jqQmeZgCSnZDELufrTubTIFo1U7gBgDcoF0
 LzoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=QPOqgsEid6Wqxx1M40rGK1q2D5Xysrda2vwxz+DKUPc=;
 b=gqUgkxvV5gOa4/F/bHdNmOxT5eJ89IcYkwEM3Bxm07Yr8bnkuUXii6gPUhMSGVX0QG
 b4fwQ898ATUjNXfuzLveLtA08UM9JdzHpuOBVs6chd7FwjvbENStEK9nGHj9IkE5K8+u
 eYDSNt09rEdqeTdpxYOPhOVmAQrsybsRER5fjNOnepmxpeHZtxhpGexyl0XF4yHbFehv
 b6QlkVH2r6Tzv6GX3dvTjlavhLGh+1mtMj6RkxyoYnYWcQxEnDWpk3v61j2blp2O9I9V
 Fe6lZFEzJdrwJrGxwMXy0irlgzz1nkBQw7KTMCtVSb9AT66JsTEWaVG+A9+jRwlQnpGh
 yXwA==
X-Gm-Message-State: AOAM530PbX+yBbiOcQmEt3XeoQLlG0A212ruXykwMHTpejA3os3MXDv6
 wZOKAw34QZQXEpZi3sfXvaYMKw==
X-Google-Smtp-Source: ABdhPJx6DouuY7dAxuX1ycupL8N+u0hCgEeKCHYUoIMUdZg7qUxXIXsBqnuYBYopZ2gDNL26oum7Kg==
X-Received: by 2002:a17:907:6e92:b0:6e4:de0d:464 with SMTP id
 sh18-20020a1709076e9200b006e4de0d0464mr14986441ejc.348.1650397226276; 
 Tue, 19 Apr 2022 12:40:26 -0700 (PDT)
Received: from [192.168.0.221] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 u6-20020a17090626c600b006e74ef7f092sm6012164ejc.176.2022.04.19.12.40.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Apr 2022 12:40:25 -0700 (PDT)
Message-ID: <8b9ad0a6-acc0-aad9-c49d-e4a4b38374bb@linaro.org>
Date: Tue, 19 Apr 2022 21:40:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: Aw: Re: [RFC/RFT 2/6] dt-bindings: soc: grf: add
 pcie30-{phy,pipe}-grf
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
 <20220416135458.104048-3-linux@fw-web.de>
 <02b3fe1c-12f9-8f96-a9b5-df44ca001825@linaro.org>
 <trinity-c60358c4-ebd1-47bf-91e0-9ae0beefd39f-1650389348418@3c-app-gmx-bap70>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <trinity-c60358c4-ebd1-47bf-91e0-9ae0beefd39f-1650389348418@3c-app-gmx-bap70>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_124030_209111_F580A176 
X-CRM114-Status: GOOD (  11.38  )
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

On 19/04/2022 19:29, Frank Wunderlich wrote:
>> Gesendet: Montag, 18. April 2022 um 17:54 Uhr
>> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
> 
>>> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
>>> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
>>> @@ -14,6 +14,8 @@ properties:
>>>      oneOf:
>>>        - items:
>>>            - enum:
>>> +              - rockchip,pcie30-phy-grf
>>> +              - rockchip,pcie30-pipe-grf
>>
>> These are without SoC parts. Are these PCIe v3 General Register Files
>> part of some PCIe spec?
> 
> imho they are shared across SoCs rk3568 and rk3588, but have only seen rk3568 implementation yet.
> PCIe driver currently supports these 2 Soc (different offsets in the Phy-GRF), but can only test rk3568.
> 
> pipe-grf seems only be used for rk35688 (offset used in probe is defined for this SoC), which i cannot test.
> 
> so i have left them SoC independed.

Compatibles should be SoC dependent, with some exceptions. Lack of
documentation or lack of possibility of testing is actually argument
against any exception, so they should be SoC specific/dependent.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
