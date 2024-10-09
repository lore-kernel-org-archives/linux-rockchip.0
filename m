Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBB24CED617
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 07:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SR/Uh2VM/rwGkVyROvf32Qc7O+iOCqpDNlStkfCeVmI=; b=YXXLw8FzCK8Wqg
	VLOsK9Giq87bLVRJJWW0r6O5QO/MRVimgfx0WfeBO3fyYnfHCDJXnphVCeKtvIxGHe6UEzUi/X/DY
	0k4gV71VSuS+Mu4iqAAaescJrRbX3G1j1gWF9IYSTXwwUzPgmLLpc+IV/MJVV2RuAZIt1RqpdXQAM
	a+aj26PT2/OzsfSPNHllymYXq7Q3zFj0rXQPYJRgC3iDWI95FVH5ak/9tkKLnZJzU6aAKGU+suxuH
	U3UQS0wz1MJ1rihyVyUOkyQEb0gNVdQOrtEwMm7N/LwOISK05+7URir+oBnHcxX2Cppf5ciwwXhRk
	NST+5DuK0HWQ54AXjkBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syQrV-00000008Bjy-0qqh;
	Wed, 09 Oct 2024 07:11:57 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syQqB-00000008Beh-1Nt1;
	Wed, 09 Oct 2024 07:10:36 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-7cd85502a34so1067043a12.2;
        Wed, 09 Oct 2024 00:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728457834; x=1729062634; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sA8Y4eO9DcSC+vvwrFGajiYdfHlpHkYXHi8cuKJox4c=;
        b=VA35KFyPY8xGvhRzgth1W+oJwSxIBOww+JvbhjQyFapBUnZoWY5LpQEU9BRD110xOC
         bYZiveVJP7wRszOV6D8BY9RY0yv1sYMKFOkcBlnz+MBBHaxpS4n2Jg2JmsTApFzrDEXM
         GAyiuPzIg/AztLSTVCjys1a+zpXQvkqPtMSH3yPKGXXg0lK5pel1MIsueliiar9o6lih
         qNcqSZJfddDXOGi1DYc56P4VBCsKY2FqfH0qgjmhx4HYdGNcP/4dgGj2dKoEAIWi4SxH
         1NooLEW8EGqVrUneEvKNNzcQe+sykbRZWAh8rf6PbVGTbGWK6VUxEunifFfbp+QwlZfS
         Q6Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728457834; x=1729062634;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sA8Y4eO9DcSC+vvwrFGajiYdfHlpHkYXHi8cuKJox4c=;
        b=gMYkrEaRHSL9CJ3Ubwmt4hsl2HyT4cRAMY2PC0OD7E4V3lM4nmWY5Sed/3AnWjrHO4
         odqDvZ8jpkNk8rc2Y2z2Ai3AonVgzahShzEc/eN50kP1PL/1/OwzAzrRuV17qVhY3zEs
         /pO+RY5F4O98N4zXmkiwOI4NcelhMMp6vpNOnJIEEOYkJ/i/UcY7qA/GBrpMy1iRtE8f
         KOI/hFqqLz+UOlet5swI8sxIy/ZzNcHe8C0cq7hcXAuXcqH130H1hL28LDhGnw9ojv+X
         p0ZFksXMThKBugPRMR1YbM1k0uMAoCJyVWtACBVPPCNph4JwZkKpwIEDAHSRADeRGocm
         jtBw==
X-Forwarded-Encrypted: i=1; AJvYcCUGCznHYNsZxZrJkZgD+hJ5y/v0r3HWp3yNMP4Oqr+b5nxYHXz2BOb1ZLqUcGCxfP6zrvuajkfVwphipzaYgkg=@lists.infradead.org, AJvYcCWGC/qtLSyN9iXHSlLIW2lxsEmlfT/0M+ooLMtJaHOR9H8P8OiP5/LL0JwEjIm8EyJqGS6xJeU0YXNY@lists.infradead.org, AJvYcCXbjILLTsgT8A99MZZF1D0t0CNtgIr1tKk+pV8BDcUHurnpVkl3IbdTAnXZ0ylrX5txzYiLrzfChXdAlL2f4R+A@lists.infradead.org
X-Gm-Message-State: AOJu0YxJ6yontXa7y55Giy5fiJrA4dY8VzLfd/RddVs0OJgFHldDoAGV
	jaTwefKYhJD8So23ZUqHur7cbmI1XLd+rlps/KmOK2s/RB6XA4H30cIbYm7j
X-Google-Smtp-Source: AGHT+IGjE88HafuAoQFV3trG2JzG5OQbr90aV7B+X/5s9VONZ08F7MICUKjVTHucGreZK18x0dC4MA==
X-Received: by 2002:a05:6a00:1310:b0:717:9443:9c70 with SMTP id d2e1a72fcca58-71e1db67245mr995726b3a.2.1728457834041;
        Wed, 09 Oct 2024 00:10:34 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0d66319sm7160068b3a.156.2024.10.09.00.10.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2024 00:10:33 -0700 (PDT)
Message-ID: <e1bbcaa7-bac6-4288-9c5c-ae5a292e1d1f@gmail.com>
Date: Wed, 9 Oct 2024 15:10:28 +0800
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
X-CRM114-CacheID: sfid-20241009_001035_397525_F29F3DEC 
X-CRM114-Status: GOOD (  12.44  )
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
get num_clks.
The clocks numbers (num_clks) are used for search the ref_clk in 
rockchip_usb2phy_clk480m_register().

However, right now, the optional variant of clk_*_optional functions can 
not get num_clks, or must know num_clks, then can get clk_bulk_data.


Best regards,
Frank

> Best regards,
> Krzysztof
>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
