Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3818BC6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 10:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HSLQMpQ9XYsKp1WsT3Et8cEqzXxH2rXhmGEwKRxsQA=; b=AjvFEk79wsTpCN
	vKRNArB3NZRwsXcxYxAdpvEoDtjv9MxiCJ5L1SgEKNLz8RZdAjFPUE7YtwsHAFNX6mil3RlSZtUnt
	0zouiFMgmxSULrCot46onLY1Cvpmurd4TD0GgOORw31ceXdsf5u5xdAjJai5q/GOIAedkqbW19cno
	T/VlQqzzz7o2MYyLcUUNk0OMU4TziLvZnmOscZBBt2l3324ACahj1+w9w8+173XcQ+gJu6eP+Fqml
	U6dfZ1pXt8HK9WPSTQ1iKhp4VtdSkuP3CVPcm42bqCmDZYlgSbGRaZlpphAmY8dh/C1DwaC5grIeo
	XtsjM0RAW0l7Y+d1dvqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obfve-003dxS-Lc; Fri, 23 Sep 2022 10:29:06 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obfvT-003dtj-8C
	for linux-rockchip@lists.infradead.org; Fri, 23 Sep 2022 10:28:56 +0000
Received: by mail-lf1-x131.google.com with SMTP id a2so19091657lfb.6
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Sep 2022 03:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=9Z/2h4ISg166Duv/L7tQkzRz8Gycv601fQApJ8U1hqk=;
        b=CIqmag4j3rqNMDRLZK1GWci91Se3HW/3lrhu6PMBTpoQbN87AZgLrmaM0Ot7FYH8sW
         /ewsbSqG8GMq2UoGzdQ4hwyb3DH0BpXvVMyZjM92MCqS1nC6t6mCka4cdk2+mG6JXlQr
         fnQ+U4/L+613ghIGP97oDjTQx8nsVyPq7gStNvrXaZxZ8kcUuPJUwPfFiwIe1eKYlPcJ
         wgyTViuZmaWTQmZCo3nURzKhFdN+9I56mOhrDuT7mkyqBrqmgy09eI/psQlOKut5RE+N
         +64RnuAgYbr8ny7cLs7RoLZLQdkUMP0UL2s7jxtPTgEE2EXigiO72ZXVhkRcjlUOJ0K6
         k11w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=9Z/2h4ISg166Duv/L7tQkzRz8Gycv601fQApJ8U1hqk=;
        b=1amyewTu0Kg7PkrxRODKG/xaAPbGl8AsknnptJ2ODEO2NjXWwZzvFzUVDf7DwS7cPG
         UjUlz40IvrGhk+QexSfZc5A+7c38FeXNn43sckhfemVHDBTXaCsAmtMdaOrCXfWYG9mT
         g7uQZBE6+cWyKsBZuq0GBurX990YJDL6OLWC3o6Kjs09pRryhEIITTQTMds2SOmNHSL2
         6rs6fbOtWOifxGC4apFwKi1Ci5ubmPBeBLkzmg0zAX4c3VZbIE6WJSFAPyTU+UEwUG0c
         iWWbjBVRi7A0A/ngO61PYNTs8IaPe/vQpq2L5/n1FEes4B5Mv/Lm4HWPLCG1OV+cS1w4
         a3TA==
X-Gm-Message-State: ACrzQf1xrWnBEdEqNAQhqgjdRV5f5asneth2g0uQgQ0EKqP0Apqz2Yfz
	ugbkhXcmiRW3tDSzlwDMx8LJ0w==
X-Google-Smtp-Source: AMsMyM7MBNH77N37AcVzjh4hwgWGVAm1sHl8mNVVwupE5EyJeYmwpMXtErRHycZXc0fIt/+e+lbF8g==
X-Received: by 2002:a05:6512:234c:b0:499:9c33:af96 with SMTP id p12-20020a056512234c00b004999c33af96mr2833587lfu.545.1663928931479;
        Fri, 23 Sep 2022 03:28:51 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id j3-20020a2e8003000000b0026ad753448fsm1313676ljg.85.2022.09.23.03.28.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 03:28:51 -0700 (PDT)
Message-ID: <3b0c9c24-ecb5-04df-67de-62f584fabdfd@linaro.org>
Date: Fri, 23 Sep 2022 12:28:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_2/3=5d_arm64=3a_dts=3a_rockchip=3a_add_PX3?=
 =?UTF-8?Q?0-=c2=b5Q7_=28Ringneck=29_SoM_with_Haikou_baseboard?=
Content-Language: en-US
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Quentin Schulz <foss+kernel@0leil.net>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 dmitry.torokhov@gmail.com, klaus.goger@theobroma-systems.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org
References: <20220922101211.3215888-1-foss+kernel@0leil.net>
 <20220922101211.3215888-3-foss+kernel@0leil.net>
 <e481af15-7e37-47dc-b272-6d032b5dd7a7@linaro.org>
 <f72271d7-9f42-45e9-01a4-590bd20250ab@theobroma-systems.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f72271d7-9f42-45e9-01a4-590bd20250ab@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_032855_324913_C56F8C2E 
X-CRM114-Status: GOOD (  12.10  )
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

On 23/09/2022 11:55, Quentin Schulz wrote:
>>> +
>>> +	leds {
>>> +		compatible = "gpio-leds";
>>
>> This belongs to DTSI.
>>
> 
> It is in the DTSI :)

Ah, right...


> 
>>> +		pinctrl-names = "default";
>>> +		pinctrl-0 = <&module_led_pin>;
>>> +		status = "okay";
>>
>> No need.
>>
>>> +
>>> +		module_led: led-0 {
>>
>> Why DTSI - which in logic comes first - starts with 1 and this is 0?\
>>
> 
> The first diff in this patch is for the DTS, this is now the DTSI. So it 
> does have led-0 in the DTSI and led-1 in the DTS which I think is what 
> you're requesting here? Is this a correct assumption?

Yep.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
