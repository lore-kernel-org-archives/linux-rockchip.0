Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23365CED617
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 07:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2iJQRRhDpu7O1G9kNEtUQ67OSH2iYd1b/4hWLwbpAEY=; b=CFRk5eQ9So9dyL
	SfVOlogPyGxrQWUP/602qWeSxnI9m/yiQ/xIDTQTNu7Bzk13S4jXBE4TtB02WX2j2d+/1ai84HRTj
	9mvPYwxKG1uNnLRWrAMPiXJdhUWL8s+LjXphQt6/ZNhoBPuMKllMVC678lX1PgQ6jt2/KROUGL5KM
	LhS+GVY8ibi38x3XVDzSuChmhveY000fZz4DwlhGcYdlJ5PjG053YGrJMxfu416bgmDSzgyNrT69N
	jXuN33sEK+bB6PbOjz2dSLs+Howg+zUjILclut1T6G7ECZ2EXl/yLFTP0nXymymXxeK/VluJPg9+G
	16OkzG/qpzfUackaj32w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syQoW-00000008BJU-2IxN;
	Wed, 09 Oct 2024 07:08:52 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syQl4-00000008Av1-18ot;
	Wed, 09 Oct 2024 07:05:19 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-2e2a96b242cso54134a91.3;
        Wed, 09 Oct 2024 00:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728457517; x=1729062317; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3PsttQzQnb+x++Ac4O21sV5bCfoQ9BqH8BGu0KsKCls=;
        b=NH5+urFl8b+gyAV249oJHuZriPO4cQmK2bRN/5lfAvgLatAoYMk8GZOEgwIITJUck5
         pnu9PTCcnnB5kQcGLlcjZXH/A9NlC4/SNSg2zoMIQIm26oWtUoxN69mBbZl7K0IyBPst
         UvTBgrZzF4uPj4KAKuYtErY+JIh/RdAJuvsCF5YJwvYycUGGMXycEWJDJUD6CZ8Yk69d
         Os+dyUI4mJZ7TtD8QQ+rDOvbbkOUvjzP0mVeQsxd0+FsOFVCBbV5TeupMrs0+rW/MZMl
         FJqS+Vni3BE9Pv7b3WmNxlSVc3rN1qjLkcTrlLxOeLPdTBwpcWcPgy0DpgbkIAPL7TTT
         Gryg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728457517; x=1729062317;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3PsttQzQnb+x++Ac4O21sV5bCfoQ9BqH8BGu0KsKCls=;
        b=dr/C4PRB18tur61h6WhC+ebyq4/IZWlRnmFe18m5ruB78gOnelspMJxovHLiyhcwb7
         +hitgFos9l6gOKVTLe2yen3Neug0ZkizlGXC/cP0+SaB/UFQOjr1qURrUxEwS42Dib73
         F2yyIuyA89iw3wnCyrsWWn0LO+STfbP0Z/iFPkxKfvsqOw7Y1D8rXCkamfYpK53KW6wn
         TFqK9oddClR0gzFNzh0orwsGiZGRTefEaeiYI1r5D2DJ1fFdxy/Yq/3Lzp94f371Equh
         CxLhpp41GZrr93EDeHWgrLS9fjmdiUUzbxbG4INnxkuFptP7dxbQUm6eg8SoMH7HfkiC
         aN3g==
X-Forwarded-Encrypted: i=1; AJvYcCU4tJ7CINOkJLo7CbriugHNVwhLgUtHexUUUiqVG7UKT78wN9yuUy8jA5mM/Hikuzw5wvNh8Ljo/RVb8TjFtvE=@lists.infradead.org, AJvYcCUfcsTXZMSXn+6K/lM/rI5ZZSoYzq3GBmURKQpb77j4qNBdF5+blBTwgl0boKoIP7I1yVGtv5tcCqhP@lists.infradead.org, AJvYcCX754ME2ZMyc2Ih4pyuHYPJo4QNf7cZSPxf9HxI6yY7bimZj7uwHwnofsemAZ9G7qxczAM+ydpa8Hpw5fRZLk5G@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0wyV/SJAJN2n3pkA2LPwhruOgtxg7xfUEUwMIU/Anq9NKwa7Z
	8vSTmV8G4Prmlti6/9FCQWI0weUOnTYo1y4BX6G+7ByOOO1wTtgI
X-Google-Smtp-Source: AGHT+IG7PnAUHEJLpzgaXL9YFNjOnk7DuRaS4UAqakjWFQ9FWQK1+0D/8QDxNJWl5tLElNKe+gPb4w==
X-Received: by 2002:a17:902:c40b:b0:207:457f:b8f6 with SMTP id d9443c01a7336-20c636eba31mr9875125ad.2.1728457516823;
        Wed, 09 Oct 2024 00:05:16 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c139a2bbbsm65245605ad.294.2024.10.09.00.05.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2024 00:05:16 -0700 (PDT)
Message-ID: <e107c9b1-f3b0-43f1-b50a-988fa978188c@gmail.com>
Date: Wed, 9 Oct 2024 15:05:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] phy: rockchip: inno-usb2: convert clock management
 to bulk
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com, frank.wang@rock-chips.com
References: <20240929061025.3704-1-frawang.cn@gmail.com>
 <jx55slsincpzq6mugfsyc6qpbku2555azj7lithwggo733ggnb@rkqsxpsyoaw7>
 <13fe91e1-2471-4a59-9581-628ce7773fdc@gmail.com>
 <ac325385-cb3e-4002-b100-de73eb5a9ac7@kernel.org>
Content-Language: en-US
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <ac325385-cb3e-4002-b100-de73eb5a9ac7@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_000518_366664_55918EE5 
X-CRM114-Status: GOOD (  12.45  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,
On 2024/10/8 22:35, Krzysztof Kozlowski wrote:
> On 08/10/2024 05:07, Frank Wang wrote:
>>>> +	}
>>>> +
>>>> +	if (!IS_ERR(refclk)) {
>>>> +		clk_name = __clk_get_name(refclk);
>>>>    		init.parent_names = &clk_name;
>>>>    		init.num_parents = 1;
>>>>    	} else {
>>>> @@ -1406,18 +1424,29 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>>>>    	if (IS_ERR(rphy->phy_reset))
>>>>    		return PTR_ERR(rphy->phy_reset);
>>>>    
>>>> -	rphy->clk = devm_clk_get_optional_enabled(dev, "phyclk");
>>>> -	if (IS_ERR(rphy->clk)) {
>>>> -		return dev_err_probe(&pdev->dev, PTR_ERR(rphy->clk),
>>>> +	ret = devm_clk_bulk_get_all(dev, &rphy->clks);
>>>> +	if (ret == -EPROBE_DEFER) {
>>> This does not make much sense. Why would you proceed on other critical
>>> errors?
>>>
>>> You want to use optional variant, I guess?
>> Yes, the clock properties are optional.
> And? So are you going to use optional variant of clk get or not? Is it
> appropriate? Are you going to improve it?

Using devm_clk_bulk_get_all() not only get clk_bulk_data, but also can 
get num_clks. The clocks numbers (num_clks) are used for search the 
ref_clk in rockchip_usb2phy_clk480m_register(). However, right now, the 
optional variant of clk_*_optional functions can not get num_clksor must 
know num_clks, then can get clk_bulk_data. Best regards, Frank
> Best regards,
> Krzysztof
>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
