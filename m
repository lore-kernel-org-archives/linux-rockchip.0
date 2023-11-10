Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B876CC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Nov 2023 14:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5yXvfqVS49h1p7HPdZ9xJ7oc81FYyARDlCf2YMtLcE=; b=IG/6M+2vb0wmsN
	pzcMWT1FdUBkOvVJhGSAktPdFZVfYghtoVEAlmyKD8oYqjtRsbg0Rsu1M4/mBxDyvB6NLed1n8lmM
	3a9hqlV31Xj8ntpw1jxVt69RmoqlJvUL38T7ooFC7wWQh0u47Wqt4u3h8vgSewDj9lXWzUtQUZFuA
	KKmjtaXVhr6jtv/XgXaKYoqMj2moWLFoPkvIcCAm8LBJmgLXRlmxZfB4d2UroLCTgbOGSGbhNZ7bk
	bTrdWMqice1qUOYYaAYLwuanfVAcG/YtlG5vO8+dkw7VKbnYcscl2UZJHdz8KkGgXbyzAuRZRZtcB
	IJKB+63MXKx6g4gs820A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Ss5-008xNS-1G;
	Fri, 10 Nov 2023 14:52:33 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Ss2-008xLk-2E
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Nov 2023 14:52:32 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40a4859b231so2617825e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Nov 2023 06:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699627942; x=1700232742; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1gS1wyuI8aGNfo6PKmYKdIjYheQswElfmN9q70KQxSA=;
        b=z8Va5uNEwlebDSccLUyMB+Wijs+zg8iTmW3lJDDhEU30f3S3IW+1BRMl+ZRwKczN+D
         tDEWMTkTNPSlw1fDfSpqAMrxVbRSISRXbOZkuwF2f+rnwrEM6I52u4xHB/H3UepGS4kg
         aSaK/2FT2GIye+XWcT1ypMROxQXGPpb9Qe7R2nwmFucUuLtTHzFZnAZjQUJnSH7BPexT
         DjVeUfFrruhkgEH1JdMshpNEGT0VuwnVfTGdfJpaxDcDPEZbayBVruXK4R/HLS+00zkP
         TzXJkZCNgbrcNxSo3+xvXPJBsBi9zvnsM74s+cYjpsGJ2OerOvBrHoDLQDsbnZkfDiGX
         LSvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699627942; x=1700232742;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1gS1wyuI8aGNfo6PKmYKdIjYheQswElfmN9q70KQxSA=;
        b=IxhbhNkBdn4aCjlFwTXln+2dKmIM+ekrxNg0M90pzoQLWHKHIgXh+TKJWVzfBEftYX
         ukBg6PQn2TX/x7fOE6mJeOHve69lY/ZEzb+jfIj22o3Nxrw8Rh1Wanmo7wvu6lTSAYDJ
         E8fI+b0negC/3xEDCXBELinolsNg/LclbtFDPg6G+QLJqyEInoNsTKmvZhXe/5wWYcIP
         aZfJlQSQAD6LQOJa8H2YPLonQ/SJrHxEU0vVOkpwX24c2WiHxpKwJvOoUL1/IvSNYrbm
         0+BIB0IssEdphtV1nPPydhg0szHIIg6PpaZpBuEhWd86wslumhazhptdfkDSpV8BoTzr
         od4w==
X-Gm-Message-State: AOJu0YzzoDjppnIWUUntpY5DAmRKfyNIRzL6h3S1IVLMi0RWcodkVSeK
	qNYFtU5wBwUAf1Qmr3dw8japGA==
X-Google-Smtp-Source: AGHT+IF1IA3tdVq3xOJBj+v0ShieNBu/cCS8yER/wl8D4FRkmn+rmYKDDekN1L4VcG7NbJ+8/1LIDA==
X-Received: by 2002:a05:600c:4446:b0:408:4120:bad2 with SMTP id v6-20020a05600c444600b004084120bad2mr6775783wmn.9.1699627942103;
        Fri, 10 Nov 2023 06:52:22 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id h10-20020a05600c350a00b004097881d5f0sm5412328wmq.29.2023.11.10.06.52.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Nov 2023 06:52:21 -0800 (PST)
Message-ID: <ad64aa78-1874-4a92-8a79-6f45bb19dbe2@linaro.org>
Date: Fri, 10 Nov 2023 15:52:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 1/4] dt-bindings: display: panel: Update NewVision
 NV3051D compatibles
Content-Language: en-US
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 neil.armstrong@linaro.org, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
References: <20231109215007.66826-1-macroalpha82@gmail.com>
 <20231109215007.66826-2-macroalpha82@gmail.com>
 <c012c0b3-d6ca-4291-aa0c-05a192f30dcb@linaro.org>
 <SN6PR06MB5342A696F25065F9C253154CA5AEA@SN6PR06MB5342.namprd06.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <SN6PR06MB5342A696F25065F9C253154CA5AEA@SN6PR06MB5342.namprd06.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_065230_731093_A68F6757 
X-CRM114-Status: GOOD (  15.69  )
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

On 10/11/2023 15:28, Chris Morgan wrote:
> On Fri, Nov 10, 2023 at 02:11:58PM +0100, Krzysztof Kozlowski wrote:
>> On 09/11/2023 22:50, Chris Morgan wrote:
>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>
>>> Update the NewVision NV3051D compatible strings by adding a new panel,
>>> the powkiddy,rk2023-panel, and removing another entry, the
>>> anbernic,rg353v-panel. The rg353v-panel is exactly identical to the
>>> rg353p-panel and is not currently in use by any existing device tree.
>>> The rk2023-panel is similar to the rg353p-panel but has slightly
>>> different timings.
>>>
>>> I originally wrote the driver checking for the newvision,nv3051d
>>> compatible string which worked fine when there was only 1 panel type.
>>> When I added support for the 351v-panel I *should* have changed how the
>>> compatible string was handled, but instead I simply added a check in the
>>> probe function to look for the secondary string of
>>> "anbernic,rg351v-panel". Now that I am adding the 3rd panel type of
>>> "powkiddy,rk2023-panel" I am correcting the driver to do it the right
>>> way by checking for the specific compatibles.
>>
>> I don't understand how any of this driver behavior is a reason to drop
>> rg353v. You wrote two paragraphs to justify this removal, but I feel the
>> only reason is that rg353v is just not needed, because it is duplicating
>> rg353p? Is this right? You actually did not write it explicitly...
> 
> Sorry if I wasn't clear, I did note that the rg353p-panel is exactly
> identical to the rg353v-panel. Should I add additional details beyond
> that to clarify?

The entire paragraph about driver feels redundant. Your first paragraph
should still say why you remove it.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
