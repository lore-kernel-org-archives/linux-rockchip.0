Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DF46C352A1
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Nov 2022 09:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ytn7tIVWcg06Tkhbx4SdPYFJu5JZ32vnG+6SeJstDKI=; b=rLejrI+So32r7y
	4QX8S+D8+wkTlRBtGEuoCU0uhFz/2ZIhguagFN/u9nmFknERdvdjPOzMA4MHVBfGrPWisGUqjSG3L
	ECuy2MlNX7QOLrJI256+cVw2VIKjNaa0CLW9JRGtKnbuNh6z/KOOXdjVo4flTV5EO5Bj5wc+JbwXM
	auc96bmOTT9C4Xikx1LxIJwiEjYwJt/JunK7EzeMatvAzgscPzXVJCTqP7xkvR/wH1z7/SPu5/ptX
	CbQ4zvcNZf/jatCxsj6NQhmRqWK70BAfEM9iNxViiH8700nC4pknlOOjSE6JTLbKbuoT+Owv8ftqc
	Njg2r5Ws7GDldY5tDvgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy8fD-007ASP-59; Thu, 24 Nov 2022 09:36:59 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oy8f0-007AGT-AU
	for linux-rockchip@lists.infradead.org; Thu, 24 Nov 2022 09:36:47 +0000
Received: by mail-lj1-x230.google.com with SMTP id u2so1367950ljl.3
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Nov 2022 01:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eQoxUqheIIUXkBBHc597S7FcX3x5ol0V65y9COFeJmM=;
        b=ELaGzy52J+9x+jIHZFcSmYA5AY2T/zwoXMooAQYVyMcZNgJa7pVamgalTD5Mjb0Jua
         ZDDA0f3b0ULsl4EaHY/OCE31UOdJr8jsZUWoh7RuXaUfOAUXGX+4sDCqZQzPSn3aSM0Y
         udjI/95KAiANwL0nCZgScS2bQHPtI4oe2hVPjhEQzH6qXzpXrgLKeh4pL7tGrsoujbCp
         gM4Jg0tZtrpMR6LDazx5nLf85Vr+UofN6y4e/H1u2GDvQGPbA1xZNeddzR0oSLXveMwa
         2moOmn67AbDVsGRH4kI+GGYWRT/T6CXhEMQzxYBiNOPdwU+C5K0dYgB/7elTM/mS7nb/
         HhXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eQoxUqheIIUXkBBHc597S7FcX3x5ol0V65y9COFeJmM=;
        b=k2L6iEt/BjijLkhA89+AsGlgt4FDjUHIgkmPNL5LqeX3lf/vcJDyOHnshZg3Y0HFQ1
         ruuFCVLw8BgUjyf16ufpbCxQ8qXi+CF2jPcDgF+MX0+YUrZZhcMjhvFGQb3Hd4B7WiBc
         K0z2TVbkTNkp9h8m7pDFasqSvFKnZ5RXsE5whOkaQepS3pfW5W+jahIMVRpOzDujNUQc
         GVEt0Fub30assPIRwJM8fkhMGg/WpsSNSS9HQaGRLhx4EE4bHwdlg/9JY14eoxZ8x7cq
         HHcO+vbR3ot8o3oFUfY1tqv0ARUfkcU9gW4ngkql0AwuH7mQCkksBILDjqMkKqctw8Yz
         9nMQ==
X-Gm-Message-State: ANoB5pmggdlnb9KO/veEqyAjjNmIPkmJxSmzgDILjv2m7ofJzZ4SHo/n
	E3HJ4Tq5IGR9bI3GKP1BmOS+fA==
X-Google-Smtp-Source: AA0mqf5l5Dag0MyizsyxNs7sSnAb2cu5cjqpk1wqcO2Kw7BnlOzl2/suy+6nY+p3dwXJxV2OeIGlxA==
X-Received: by 2002:a2e:bd88:0:b0:279:86e:7a09 with SMTP id o8-20020a2ebd88000000b00279086e7a09mr10444801ljq.277.1669282603721;
        Thu, 24 Nov 2022 01:36:43 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p5-20020ac24ec5000000b00494603953b6sm71345lfr.6.2022.11.24.01.36.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 01:36:43 -0800 (PST)
Message-ID: <1f8eb33b-1979-ec28-e3cf-6e6552959b3a@linaro.org>
Date: Thu, 24 Nov 2022 10:36:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
Content-Language: en-US
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Jon Lin <jon.lin@rock-chips.com>, Sugar Zhang <sugar.zhang@rock-chips.com>
References: <20221108041400.157052-1-jagan@edgeble.ai>
 <20221108041400.157052-7-jagan@edgeble.ai>
 <429df965-bd4a-afa4-e66c-6907677fbf8c@linaro.org>
 <CA+VMnFxs06_KvZc5p_rNAep9aJ+t908CUtVcVTBV7c_b1mu+Xg@mail.gmail.com>
 <149c2614-d87a-4406-5552-f444709a6e09@linaro.org>
 <CA+VMnFybPA=6-LvSDd=7EXk6fo4oY_hNBwCcDURgnFs4DP_hzA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFybPA=6-LvSDd=7EXk6fo4oY_hNBwCcDURgnFs4DP_hzA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_013646_369683_3D345C88 
X-CRM114-Status: GOOD (  11.94  )
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

On 23/11/2022 17:35, Jagan Teki wrote:

>>>>> +     aliases {
>>>>> +             i2c0 = &i2c0;
>>>>> +             serial0 = &uart0;
>>>>> +             serial1 = &uart1;
>>>>> +             serial2 = &uart2;
>>>>> +             serial3 = &uart3;
>>>>> +             serial4 = &uart4;
>>>>> +             serial5 = &uart5;
>>>>
>>>> These are not properties of a SoC but board. They depend on the
>>>> particular routing on the board... unless this SoC is an exception from
>>>> all others?
>>>
>>> Was this a new feature to follow, didn't see this before at least
>>> rockchip SoC's.
>>>
>>
>> It's not exactly new comment, but rather not always enforced/given.
> 
> It seems like i2c0 and serial aliases are required across SoC instead
> of the specific board. An example of which i2c0 connected via PMIC
> which indeed require aliases to get a probe, which is common across
> SoC.
> 
> [    1.778941] i2c_dev: i2c /dev entries driver
> [    1.780877] rk3x-i2c ff3f0000.i2c: rk3x-i2c needs i2cX alias
> [    1.781410] rk3x-i2c: probe of ff3f0000.i2c failed with error -22
> [    1.791312] Bluetooth: HCI UART driver ver 2.3

I2C driver indeed seems to require them, so then it's fine. That's not
the argument for serials though.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
