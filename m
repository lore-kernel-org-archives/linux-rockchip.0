Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFC2AC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 13:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cacCFpDuEQJ30E5lgtyrzySunvXGaep7zY7mabZMAR0=; b=vT/T7bA2gs2p/l
	TKfKxQyBaX1sSxR4KepM4hghmYA5orRbNK3w6soQy/zYmjPVaYVaq7RgNTIMQSELmhOuiHXsKxlTY
	O55e+YzPUDDEGxJQen1aIrKbVC+JonEPfMIX3ZQ8ilk9rRU0A9Kd7/3Uj0ZtOBBHX3EJMRR1wOdMz
	jWCkm6uRs0d1FejAh0YzvYVk7x/IasYrvwcVmUbzJ8jojXgsiPxAT4EAT3B966PkxyItckvBi7wpa
	LEOimANllrbIg+VqUFobn0eOTLlLouaQ1sNzYHWE+0+3M7qGnkRbZ6eSg7CzZz23unBr7+i6g/JCv
	osdXse7tox+KbWN2LVvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbjKz-001AxQ-4Q; Tue, 05 Apr 2022 13:35:13 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbjKw-001AwL-FH
 for linux-rockchip@lists.infradead.org; Tue, 05 Apr 2022 13:35:11 +0000
Received: by mail-ed1-x52b.google.com with SMTP id k2so7693505edj.9
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 06:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=5dwM+wZpTO3dJm2C/zTXFC7RztJX3MC1/t/cmygFHpM=;
 b=U0esJs4rP0x+B/7le3KzQk0G9D9jf8luw+Lhb+RWPQ520F2Pkjzs3DVjaaHodh5Ejw
 K7bJwFQphX/lsr8r79a9uqQIcQUtCWuYFPYkehbagjXAt4reilNZRI6JcOroNXL3HSm1
 c1Dirae4HlQOeBoqs/mTgxhlSJw8YJjTlR92APx6zOXG6vyTCaqbTuliyVuR0CayEq60
 NXSZzvAYgfZSRp66eov4utbzned9N9+RHLZFEfRHkCARQSBTK5GeS4KDiIh3xIUtJ8h+
 vWME8qOzqa/NzEVS4/LMjrZG6mz8ojmpH5XjH38KhClsdBMdQuAdpllbk6spsPl8Fp6f
 IAeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=5dwM+wZpTO3dJm2C/zTXFC7RztJX3MC1/t/cmygFHpM=;
 b=B3HzcLh8N7IZortD425x1J41tbEcfyzHtfblup2YhED48Ri+IFCrnJ15PjabbTuxGY
 CuoJcKTOipaqNl9iNVYJnLclThABz35DLC9Z8ZIeqYLHGc2y4wdfYGqrTFirxAmvY/kw
 dSXxck05yHvc9aVhdbLTrXarItMobrrL62dHGeraffzpydomKOPBQU1HnSBK7Hcvgnzf
 hsziK/Mcd9EKm30TnwFfKz/EdwsyD+I4quy6RYfnhYENeAwZ4cvtJionLXPbBJn6U7YG
 hDFvTrIM9oGAC2SQV33/2p5rXnV+4GmEQFSSy5PW2f3O/tYbzuGDoBoPEbqUDinSvHxp
 /Y6w==
X-Gm-Message-State: AOAM5304kV7Fd4cwDBklJOkgvtuLYZtk8dYjVseyhwVVtdJzE8B3bZJY
 TGyRWqz9C2MYnSIWHZnIrwQjFQ==
X-Google-Smtp-Source: ABdhPJyMdghdEM2XuZgbpwldmrRTm3as2pia+nLSDQYWpSbi7EJHANLmyvBkobO5HTtK6Wvy1FRIPg==
X-Received: by 2002:a05:6402:3553:b0:419:6552:11b7 with SMTP id
 f19-20020a056402355300b00419655211b7mr3644088edd.286.1649165706043; 
 Tue, 05 Apr 2022 06:35:06 -0700 (PDT)
Received: from [192.168.0.182] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 e3-20020a170906374300b006e7f060bf6asm2501343ejc.207.2022.04.05.06.35.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Apr 2022 06:35:05 -0700 (PDT)
Message-ID: <ac2b29c2-b3ec-eb03-595f-b0328e40015c@linaro.org>
Date: Tue, 5 Apr 2022 15:35:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/4 v5] dt-bindings: Add Rockchip rk817 battery charger
 support
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, zhangqing@rock-chips.com, zyw@rock-chips.com,
 jon.lin@rock-chips.com, maccraft123mc@gmail.com, sre@kernel.org,
 heiko@sntech.de, krzk+dt@kernel.org, robh+dt@kernel.org,
 lee.jones@linaro.org, Chris Morgan <macromorgan@hotmail.com>
References: <20220404215754.30126-1-macroalpha82@gmail.com>
 <20220404215754.30126-2-macroalpha82@gmail.com>
 <74f445c2-3194-80a6-6d52-21368eb6172a@linaro.org>
 <20220405131228.GA20@wintermute.localdomain>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220405131228.GA20@wintermute.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_063510_572091_754B6E66 
X-CRM114-Status: GOOD (  18.76  )
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

On 05/04/2022 15:12, Chris Morgan wrote:
> On Tue, Apr 05, 2022 at 01:16:55PM +0200, Krzysztof Kozlowski wrote:
>> On 04/04/2022 23:57, Chris Morgan wrote:
>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>
>>> Create dt-binding documentation to document rk817 battery and charger
>>> usage. New device-tree properties have been added.
>>>
>>> - rockchip,resistor-sense-micro-ohms: The value in microohms of the
>>>                                       sample resistor.
>>> - rockchip,sleep-enter-current-microamp: The value in microamps of the
>>>                                          sleep enter current.
>>> - rockchip,sleep-filter-current: The value in microamps of the sleep
>>>                                  filter current.
>>>
>>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>>> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
>>> ---
>>>  .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
>>>  1 file changed, 48 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>>> index bfc1720adc43..b949d406a487 100644
>>> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>>> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>>> @@ -117,6 +117,47 @@ properties:
>>>          description:
>>>            Describes if the microphone uses differential mode.
>>>  
>>> +  battery:
>>
>> I wonder why do you call it a batter while it is a charger, isn't it?
> 
> It is a driver for both the battery and charger. I'd argue about 95% of
> it is battery functions and the other 5% is managing the IRQs for plug
> removal/insertion and capturing the incoming voltage and current. In
> the BSP kernel these were two seperate drivers, but there was so little
> that needed to be done for the charger (and users probably don't need
> plug IRQs if they aren't using a battery anyway since the system will
> shut off on a plug out event due to no power...).

What do you mean by driver for "battery"? Like some smart-battery
system? with embedded battery (RK817 comes with embedded battery) Or a
fuel gauge? Judging by power supply properties it looks like fuel gauge.

"Battery" should rather be used for the node referenced by
"monitored-battery"...

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
