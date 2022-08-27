Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9978C0502C
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Aug 2022 09:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOhD67NK1bQrGCZUUOyDp7rNXuHhq1XJQCMhVROJi7Q=; b=eF+aoI/nV2pDaT
	37H43bBVRszoggRRJpkSJFKmiQjMR6ic9O/5c3Qc3AA7S4Exx3TAu6CV3roQ1S9lASFG9Tr9UDMmG
	4Xh9YNmGxzmZ/bMKGRkqiMD9qHr3L9eBGahI3ij2MEv8BXBY+oHxq8OzGe1fWI5cKaFSn5MMl8A0m
	0O/XFrsoBSbocfnxeV4Sbfne4TlG4zE0Y1hvlSTLj/Ix5cYxDmdo5b4Uccn2G2Ek47mCM0hBvqyVl
	UtA58oEVtKynDjfWYN8dK7rd1t4KM3zJzOoY2Qb05WQ7SdjjXJ/LnttPqci7Bu94/+3TsvZWdgQ7V
	Wexl0bQdtGwpmCfVbk0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRryx-006i5T-OS; Sat, 27 Aug 2022 09:19:59 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRryu-006huJ-R4
	for linux-rockchip@lists.infradead.org; Sat, 27 Aug 2022 09:19:58 +0000
Received: by mail-lj1-x236.google.com with SMTP id z20so3628055ljq.3
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Aug 2022 02:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=P5IKHw0PPwsgve7Zpk2kqjbiuJZNeLQkkjQUnI5YT3Y=;
        b=QeaCRvzIQ7HdjCRxOb/aMHZ+OwqTZ51R27GFaNnFtPAnw8haUixp2xvCEqendjo7wE
         UGufRjIKNLoQgvZBLl+Eogct45CsnCLuj16DzZ+82F+n2o7uHSUJ2rVUiJstlm25d8py
         +Jn5FG/hoJw7XiSn0jNAFY5DR6b+mdUIK4s5PN2e4kZVDwOYXgPtOc33ejb4AilHDJ4V
         CfYz9+DWHCi9TM2GqImZ3aNJ8iSwWSBN7fvLJYDJF2g7sigWd2QKPXB6OmGB/ZuN/sQN
         FYcBMpkcIRJcmtP0WqMEgCq+gmIe3yEYWhCqK3JqUq0ZzeEEP79a3mXlHyuuLN2QVgbW
         NadQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=P5IKHw0PPwsgve7Zpk2kqjbiuJZNeLQkkjQUnI5YT3Y=;
        b=JN2DiJIgWqrZOJ9IyLcadK3IohzjUT+5oo8NPszwkSXTVTR4Uvo6Ko/Sc392x8GZVu
         miBryIvHgw+itDTgpAdeM6EjcHVJBUiTZR5X9KsQWzisoVWgziLdFKB89ewCf3CI5eRA
         1yC6oZGuPXEjh9CQdzSG0QCxHNbLLPRK5Uirx5OhElsPiog5JHS3p/tqqMMsrQqlcEdd
         1WDLSjYNY3N+BdrYXXE3m3aGbw2LKPC3/cmYkeQV2CzA7wVhCTLV+bmG/gKHFV/u9RVr
         LAoopQe3OZW5odUWR5OfX3FwaQt5O3niktvAfVp6EcG0F3xB9E/gHcietvALd44gxQ3B
         F56A==
X-Gm-Message-State: ACgBeo3WGj1nE/Ak9kLp7R1hKwX5qxsgwO2AFpUYxZCNi73FWP0ABCDv
	7yaayYryXx5u76kz7mr5+c0bbA==
X-Google-Smtp-Source: AA6agR6edN6BcBtXJ+BLtILymRaC0Fp66FwzG+ppD8pr+j7o714Swgc1fW+ugd3qvO26b+4oSEHE5g==
X-Received: by 2002:a2e:851a:0:b0:261:e2cb:6390 with SMTP id j26-20020a2e851a000000b00261e2cb6390mr3028495lji.104.1661591994596;
        Sat, 27 Aug 2022 02:19:54 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id o3-20020ac25e23000000b0048b12ff12e8sm619619lfg.99.2022.08.27.02.19.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Aug 2022 02:19:54 -0700 (PDT)
Message-ID: <670dee09-4e37-abb6-dea3-898eb04dd2ee@linaro.org>
Date: Sat, 27 Aug 2022 12:19:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: Aw: Re: Re: [PATCH v5 5/5] arm64: dts: rockchip: Add PCIe v3
 nodes to BPI-R2-Pro
Content-Language: en-US
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220825193836.54262-1-linux@fw-web.de>
 <20220825193836.54262-6-linux@fw-web.de>
 <cae915f6-c951-ba97-346d-00922c85067d@linaro.org>
 <trinity-88fbbdbe-de76-4479-9580-70edc34a4181-1661590200169@3c-app-gmx-bs16>
 <ee6dc940-8b90-1f57-28b7-6de8e3483027@linaro.org>
 <trinity-9006aaf2-5bc2-467c-a86e-ba43efc692e6-1661591668494@3c-app-gmx-bs16>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <trinity-9006aaf2-5bc2-467c-a86e-ba43efc692e6-1661591668494@3c-app-gmx-bs16>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220827_021956_928303_208F792C 
X-CRM114-Status: GOOD (  15.41  )
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

On 27/08/2022 12:14, Frank Wunderlich wrote:
>> Gesendet: Samstag, 27. August 2022 um 10:56 Uhr
>> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
> 
>> On 27/08/2022 11:50, Frank Wunderlich wrote:
>>> Hi
>>>
>>>> Gesendet: Freitag, 26. August 2022 um 08:50 Uhr
>>>> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
>>>> On 25/08/2022 22:38, Frank Wunderlich wrote:
>>>>> From: Frank Wunderlich <frank-w@public-files.de>
>>>
>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
>>>>> index 93d383b8be87..40b90c052634 100644
>>>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
>>>>> @@ -86,6 +86,66 @@ vcc5v0_sys: vcc5v0-sys {
>>>>>  		vin-supply = <&dc_12v>;
>>>>>  	};
>>>>>
>>>>> +	pcie30_avdd0v9: pcie30-avdd0v9 {
>>>>
>>>> Use consistent naming, so if other nodes have "regulator" suffix, use it
>>>> here as well.
>>>
>>> only these 3 new have the suffix:
>>>
>>> vcc3v3_pi6c_05: vcc3v3-pi6c-05-regulator
>>> vcc3v3_minipcie: vcc3v3-minipcie-regulator
>>> vcc3v3_ngff: vcc3v3-ngff-regulator
>>>
>>> so i would drop it there...
>>>
>>> so i end up with (including existing ones to compare):
>>>
>>> vcc3v3_sys: vcc3v3-sys
>>> vcc5v0_sys: vcc5v0-sys
>>> pcie30_avdd0v9: pcie30-avdd0v9
>>> pcie30_avdd1v8: pcie30-avdd1v8
>>> vcc3v3_pi6c_05: vcc3v3-pi6c-05
>>> vcc3v3_minipcie: vcc3v3-minipcie
>>> vcc3v3_ngff: vcc3v3-ngff
>>> vcc5v0_usb: vcc5v0_usb
>>> vcc5v0_usb_host: vcc5v0-usb-host
>>> vcc5v0_usb_otg: vcc5v0-usb-otg
>>>
>>> is this ok?
>>>
>>> maybe swap avdd* and pcie30 part to have voltage in front of function.
>>>
>>
>> I prefer all of them have regulator suffix. I think reasonable is also
>> to rename the old ones and then add new ones with suffix.
> 
> ok, will change these to add -regulator in name (not label). and then rename the others in separate Patch outside of the series.
> 
> so basicly here
> -       pcie30_avdd0v9: pcie30-avdd0v9 {
> +       pcie30_avdd0v9: pcie30-avdd0v9-regulator {
> -       pcie30_avdd1v8: pcie30-avdd1v8 {
> +       pcie30_avdd1v8: pcie30-avdd1v8-regulator {
> 
> how about the swapping of pcie30 and the avddXvY? In Schematic they are named PCIE30_AVDD_0V9 / PCIE30_AVDD_1V8, so better leave this?
> 
> avdd0v9-pcie30 will be more similar to the other regulators, but inconsistent with Schematic.

Does not matter to me - it is still a specific prefix, so whatever you
put there it's for you, not for me. Keeping something aligned to
schematic - even if not consistently named - makes sense to me.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
