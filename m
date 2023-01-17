Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1020FC3DA78
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 12:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PSwbzvkiyU296GMiFiWsXX5BJ4ZV1OI5OtdtrOF7mVA=; b=Xd0CwEmiEdwDEM
	EyRmwq+qBmyHLun/YGkPPMy2o+aPqj3xl14Bzu2rjJEqieSZrLkEgyVoGKdLmrkqocm4XHE5MqcLl
	Ndi5QYt1oEiZnJI+jt6onrya3sQqpMoikvbPkxxesIz+DUR9utDXbW12cskU1A+/456Y9bh1MAuMi
	WackI7DO4IoEPbSP+cNgB4VValCW6zgKQAucCMAEBZPNTg47RvN8zRRLqV0aHCiV1qPECTdX6tkFC
	dV6XdXEKOUJyWbGZfzuIViUBPhh81tgCtU/rloOI9b04DQXmr2d1MM4b23cNXX6+mqBhS3/w3BlKR
	FHt4QGQRn0OlHD+21IKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlY2-00EHeW-Gv; Tue, 17 Jan 2023 12:58:42 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHlXq-00EHbD-6o
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 12:58:31 +0000
Received: by mail-wm1-x32b.google.com with SMTP id f25-20020a1c6a19000000b003da221fbf48so8059573wmc.1
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 04:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wSsXyk03ywnQUqDx7XCJIEj/SElIyzJeF7Cm3UzPcUk=;
        b=gterr9ulCcSSQVEcnIUwQz1SgWJ1e00EZkhsrtnr7Hqaf7dVahXfIxQS7kAy3HfPfR
         AJrgMFi3ClZzuwxJsl63bN0kW+LsPTrgbihqCDGxOKBzlCUC5hpqns3IvBpwot7eez2N
         GZ6TNGIfeSvv9oPWFOBupmo/b9ByB9XoNG1jlePFwk35VTJar/NwknSiK6G6f+H9UmgP
         gEOTLnb44IOohk5N0jXKmzK7AanaPJkG6J2JfVRNDEMgn6KK/ZIjF3NwKtNroSYEbML6
         M9noG+XxkYA0qWy50yhW4NLcdCjQqg/W5LQT6gkYl2jY49KrjalF8VWLxlUUJQAxNWOz
         fPTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wSsXyk03ywnQUqDx7XCJIEj/SElIyzJeF7Cm3UzPcUk=;
        b=UQijNJ0KorPzvTbHfTCs/VrakiM5taHxwqB4tk/WA9wuHLGgIjL01LqY4fPIdv1mS7
         cAug432CZC8q1Ce8MqWNiuIaH01aujzf5fk/YfgwC9dpIjf8gR2taNDx/vr9nAVpR+Ad
         hPFRG1zhdz00/ViCYHk1Ss5fI7sWxJBJAlD8T5JbwColuQ4gwfVPzPKwVEu9VvaTmrSD
         EUw9SzjsTSjUmQoyVeBGVhQtY40XB0LYanTSOFHZbeZUMgdYKJegf0BnI+2e5DJcSFma
         9/FM9rwjyJitHUE+ABbbMR0ZpT2W7lGpwy0kh7cxLL7YzBuVmeMjYehLhoQ7gNntTDab
         zVxA==
X-Gm-Message-State: AFqh2kohKll29+MWacoD0G6pMYJwAy8m+bjtOtKGjTtM2DUbliJ8ssgS
	kyTuvnp1VtT2ldupcFUH8JkHwg==
X-Google-Smtp-Source: AMrXdXv2YOf0E3sSYx2v6QrWr9BMdWNfNovpW/d+5FRDKmv4TxUc9m4QxIFiXfl7EeKQegI2BK4tiQ==
X-Received: by 2002:a05:600c:4f0c:b0:3d9:7062:e0b7 with SMTP id l12-20020a05600c4f0c00b003d97062e0b7mr2916789wmq.33.1673960308935;
        Tue, 17 Jan 2023 04:58:28 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bg42-20020a05600c3caa00b003b4cba4ef71sm48073293wmb.41.2023.01.17.04.58.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 04:58:28 -0800 (PST)
Message-ID: <c23bf1ef-de1d-ee64-f624-11e65915680a@linaro.org>
Date: Tue, 17 Jan 2023 13:58:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 4/7] arm64: dts: rockchip: Fix compatible and model for
 Radxa CM3i
Content-Language: en-US
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-4-jagan@amarulasolutions.com>
 <2dcb7b4a-9751-ec7a-f0ea-6de748ca3bf7@linaro.org>
 <CAMty3ZD_LWBR2+fu41Z5LEBcNw1KXEaY8P92Ypa-4rg2t8BH_A@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMty3ZD_LWBR2+fu41Z5LEBcNw1KXEaY8P92Ypa-4rg2t8BH_A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_045830_286889_4EB2DB42 
X-CRM114-Status: GOOD (  20.91  )
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

On 17/01/2023 13:52, Jagan Teki wrote:
> On Tue, Jan 17, 2023 at 4:37 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 17/01/2023 11:55, Jagan Teki wrote:
>>> Fix the model name and compatible strings for Radxa CM3i SoM
>>> and Carrier board based on Radxa recommendation.
>>>
>>> Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
>>> Cc: Chukun Pan <amadeus@jmu.edu.cn>
>>> Reported-by: FUKAUMI Naoki <naoki@radxa.com>
>>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 2 +-
>>>  arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 4 ++--
>>>  2 files changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
>>> index 225dbbe4955d..0c9a918b809a 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
>>> @@ -7,7 +7,7 @@
>>>
>>>  / {
>>>       model = "Radxa CM3 Industrial Board";
>>> -     compatible = "radxa,cm3i", "rockchip,rk3568";
>>> +     compatible = "radxa,radxa-cm3i", "rockchip,rk3568";
>>
>> Nope, second radxa is redundant.
> 
> It is not redundant, Product name and vendor name is same. Vendor name
> is Radxa and product name is Radxa CM3i

If this was true, then on their website the product would be called
"Radxa Radxa CM3i", but it is not. It is called Radxa CM3i, to denote
the company name with the model name. Anyway, in the name of model you
can call it. In the context of compatible it is redundant.

> 
>>
>>>
>>>       aliases {
>>>               mmc0 = &sdhci;
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
>>> index a4c33310ca42..8ca15b723799 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
>>> @@ -4,8 +4,8 @@
>>>  #include "rk3568-radxa-cm3i.dtsi"
>>>
>>>  / {
>>> -     model = "Radxa E25";
>>> -     compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
>>> +     model = "Radxa E25 Carrier Board";
>>> +     compatible = "radxa,radxa-e25", "radxa,radxa-cm3i", "rockchip,rk3568";
>>
>> NAK. You just changed it in patch 2. Don't add broken compatibles in one
>> patch (cm3i) and fix them next one. It's like adding intentional bugs
>> and fixing them immediately...
> 
> I did squash this with previous patch but the check patch showing
> warning to separate the dt-bindings patch from actual devicetree file
> change.

Patch 2 was not a bindings patch, so you squashed wrong files.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
