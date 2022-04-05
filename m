Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8252AC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 14:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyGx2D1bAy6kFXRv3zg5m5vFuIDMLdnojTpKOGhPmM0=; b=VcEalQX6L4eaem
	9Bc1SKnJ6d8yIyQBHqk3Wde/1bngfi5i4ZTvKQnAu4AMHMnPukan+LzQylHE0SwodIxzuepS8kaup
	2z6XeTvbP2GvRmmrmFGg72MFsPyXmDqI8aPTX3ZkPGq9wgVBngb/O6H3FeDo/Fgb9SuR002GIV0xC
	0ZEH9HW9vLZm6/khAeAc8fVIMKfON5vpRs9CM6AUpOI7eqooSngiurOI8NRmLPBgyPLofgdrm2Yrg
	i0XCx5uxSJzmHGBGa8LkdrcCH6Lb01rHtaDPBadjfvsAzKi3hyse0HvfqSM4p8f+Hm2+g571IqHTC
	zScvgZPDzNsYpfsG1hEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbjr3-001KpY-Rv; Tue, 05 Apr 2022 14:08:21 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbjjC-001Gqt-3M
 for linux-rockchip@lists.infradead.org; Tue, 05 Apr 2022 14:00:16 +0000
Received: by mail-ed1-x534.google.com with SMTP id d10so10222524edj.0
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 07:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=yssQkD7Do9xm8UR+YlTAdHUKXFIsMM4DyfogZGeGdwI=;
 b=ZkxMexE503Eff9aL8DCM5qBZDdllnLfsgdU8bEgtKsMA0FNvX8+exKDt8wSqv7O0cP
 qeWqstaDcKx9wgdTMOAtcq7iCVGOSXuDbSasBuerncoIzc6tbJ1Gyd8vmiRuURoqmPWz
 hROPZJYXqWEEblhiinEuLB0D0uGaZgdsuy88r1t/j7MEMBsMGYPNuCgrLozjilFWQ9gT
 wk1iv+EW18vEyz+Os1sxl3Qsnl8RIy61YU/zd3dUlQ7UxHwOtNxlywQE1T4TV5FMMdKt
 4SHQKSHmgPeG/b6l2oC+7WDAlzIHC0FNdlOgsa7JCUNVxz0s6uWX3CLd/FuT/wfTh/aC
 4IAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=yssQkD7Do9xm8UR+YlTAdHUKXFIsMM4DyfogZGeGdwI=;
 b=oGm6iDtIXY7EO435oRPNnAG3zD7/N1HHG+f3uHCzXPsfg+eniSxycQPbiZrBuys2eb
 H8F535WrGKf/YSejFIrMgeBGiWKf1sujypx2AV9rE+a4wPMdXVR2Irz1scYH44wrheju
 K7DUgI67y4dJnO48HqLDKArirSvP/j3CaCqRhPLA3SNJONTDYGtMbf+0/GUZGDmSqUF2
 QP0wlUMt3VaYOPm7VUVTECeSsdlzFBcnBFopkH9SCywPZiUqAOTG+FIkvTzd5ZR0BbJZ
 6sksA4hWv7IVfNfgs6FQuD/TjMXLvCMWwqEF6/CGtrspfe2k36ts4YIpjdGWG5lzlMME
 jTMw==
X-Gm-Message-State: AOAM531TWJ/PsG0wkCxzc4FjieYYAObc1F6ge2V+chQ8Nev4+IEt0HYP
 3tVqzBDb8PngjHhX0bQuMlArUw==
X-Google-Smtp-Source: ABdhPJz1bWR2hBZu8gqH0382mWzhtYAnndbapb86xJpCSXunZFL73rVdqd6pzmIP0a/dTleS03+msQ==
X-Received: by 2002:a05:6402:5243:b0:419:4ce2:cb5c with SMTP id
 t3-20020a056402524300b004194ce2cb5cmr3773653edd.151.1649167211320; 
 Tue, 05 Apr 2022 07:00:11 -0700 (PDT)
Received: from [192.168.0.182] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 n5-20020a1709065e0500b006e4dae9b1besm5150568eju.145.2022.04.05.07.00.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Apr 2022 07:00:10 -0700 (PDT)
Message-ID: <b269be83-3e45-fb36-75ab-e1c20ad6906f@linaro.org>
Date: Tue, 5 Apr 2022 16:00:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/4 v5] dt-bindings: Add Rockchip rk817 battery charger
 support
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, zhangqing@rock-chips.com, zyw@rock-chips.com,
 jon.lin@rock-chips.com, maccraft123mc@gmail.com, sre@kernel.org,
 heiko@sntech.de, krzk+dt@kernel.org, robh+dt@kernel.org,
 lee.jones@linaro.org, Chris Morgan <macromorgan@hotmail.com>
References: <20220404215754.30126-1-macroalpha82@gmail.com>
 <20220404215754.30126-2-macroalpha82@gmail.com>
 <74f445c2-3194-80a6-6d52-21368eb6172a@linaro.org>
 <20220405131228.GA20@wintermute.localdomain>
 <ac2b29c2-b3ec-eb03-595f-b0328e40015c@linaro.org>
 <20220405135424.GA20@wintermute.localdomain>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220405135424.GA20@wintermute.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_070014_338402_953991F3 
X-CRM114-Status: GOOD (  25.88  )
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

On 05/04/2022 15:54, Chris Morgan wrote:
> On Tue, Apr 05, 2022 at 03:35:04PM +0200, Krzysztof Kozlowski wrote:
>> On 05/04/2022 15:12, Chris Morgan wrote:
>>> On Tue, Apr 05, 2022 at 01:16:55PM +0200, Krzysztof Kozlowski wrote:
>>>> On 04/04/2022 23:57, Chris Morgan wrote:
>>>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>>>
>>>>> Create dt-binding documentation to document rk817 battery and charger
>>>>> usage. New device-tree properties have been added.
>>>>>
>>>>> - rockchip,resistor-sense-micro-ohms: The value in microohms of the
>>>>>                                       sample resistor.
>>>>> - rockchip,sleep-enter-current-microamp: The value in microamps of the
>>>>>                                          sleep enter current.
>>>>> - rockchip,sleep-filter-current: The value in microamps of the sleep
>>>>>                                  filter current.
>>>>>
>>>>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>>>>> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
>>>>> ---
>>>>>  .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
>>>>>  1 file changed, 48 insertions(+)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>>>>> index bfc1720adc43..b949d406a487 100644
>>>>> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>>>>> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>>>>> @@ -117,6 +117,47 @@ properties:
>>>>>          description:
>>>>>            Describes if the microphone uses differential mode.
>>>>>  
>>>>> +  battery:
>>>>
>>>> I wonder why do you call it a batter while it is a charger, isn't it?
>>>
>>> It is a driver for both the battery and charger. I'd argue about 95% of
>>> it is battery functions and the other 5% is managing the IRQs for plug
>>> removal/insertion and capturing the incoming voltage and current. In
>>> the BSP kernel these were two seperate drivers, but there was so little
>>> that needed to be done for the charger (and users probably don't need
>>> plug IRQs if they aren't using a battery anyway since the system will
>>> shut off on a plug out event due to no power...).
>>
>> What do you mean by driver for "battery"? Like some smart-battery
>> system? with embedded battery (RK817 comes with embedded battery) Or a
>> fuel gauge? Judging by power supply properties it looks like fuel gauge.
> 
> It's basically just additional registers in the rk817 PMIC. The PMIC is
> controlled via I2C and contains multiple regulators, an audio codec,
> an RTC, some GPIO, some nvram, a columb counter for the battery, and an
> ADC for measuring input current/voltage/temperature (for battery or
> charger). 

Actually you mentioned it in the cover letter - it's a PMIC, not a
battery. I doubt that it's embedded with a battery. :)

> This driver deals with the columb counter, the ADC, and a few
> bits of nvram for storing battery values to retain backwards
> compatibility with the BSP kernel and bootloader, and handling IRQs
> related to inserting or removing the charger (curiously my
> implementation ALSO has a charger sense GPIO in addition to the PMIC
> being able to sense that).
> 
> The driver itself is named rk817_charger. If you think I should change
> this from battery to "fuel gauge" or "charger" let me know and I can
> resubmit. Whatever makes it clearer for everyone.

Yeah, the property name and bindings should describe the hardware, so in
such case the hardware is rather a "charger" or "fuel-gauge". Your
"battery-cell" from DTS is probably just a "battery" (unless you expect
multiple cells?).

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
