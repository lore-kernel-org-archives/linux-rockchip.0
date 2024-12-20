Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6D68E7718C
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 17:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wS2yj5C5Yc13xohMatWQQGiW9oPjQaieUThMClSEw/Y=; b=Qv9dqwMkv2L9AI
	rddh7HlWKeE/k68rwoWhCY/+KpcM+K4mi6QQRzSyOBpUOdYwT9Xi3sKCxKRl1iGg39AY4Az9APeAI
	UnmJ50ASHeGZAj2VC/qY84NhyWbsfELn/hQnJLuD+V/t98+2YXV75I/m8eTpwoSOSbQhQ6jwtDdG1
	Tgx1t5TiomFPjc6pxJJ6ulk+Tem6AfxKRv/DzRNWWCwxlLE6a4t4Ir3pXYTJAQ6yi/hX0N/SiB+Rh
	9qjjqX+Ktp1qmoZcy5KQ+LI17yVoDEShuZgdlumwnD60LwJvfSFgsnQFBre5Uo6cnSeZz5acKeuvw
	Z6RpdAMo8hEJBG9wPopg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOhCV-00000005i2k-1rdB;
	Fri, 20 Dec 2024 17:54:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOgov-00000005e2v-2bSa
	for linux-rockchip@bombadil.infradead.org;
	Fri, 20 Dec 2024 17:29:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=PbUIMKeTcturAYAiScPBcnakmAn3H8mySmvMPtWwkkM=; b=gtA3hGSyv6PDh1L5dMRNTYCQtN
	6wrgW4b2Qifhn1jgkNVKy1SMf5/gwOWsMtc55Tn4MbU8O4vfTpTC7h/71LHV9YfDZsCs8doz08IFk
	lTYWJvoafQAsMIctVZTq1rbqzHI1EtAzcTbrqq5CVzzuSxXtzsbZSoV42OrnScgbSy3Q1C9eWPJph
	65I3vT7ycWZ5rlyd3R5+pvrc67g8qE780XKLdBOvSPL2X/ntIt1Aic83bgUoKWXfpD6lcv2EoXxUo
	uO6+QK3Satd/4IX3L7CBoSZ5lYPxKg8CzHoV6nXeEHkFH0raSORJwBzWW1dbevlCjBnsYTXotXm/P
	NN9OXiuQ==;
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOgos-00000005k5T-1pKh
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 17:29:48 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-aa6b4cc7270so317182966b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2024 09:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1734715784; x=1735320584; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PbUIMKeTcturAYAiScPBcnakmAn3H8mySmvMPtWwkkM=;
        b=AmgUd9GjQ2Lxnrf4IiKFyxRdGKcFuQpsj3R1FO/+sVdaZKKPmVrdZlwNPwfqbWOn4W
         qcdGWpg7phVplxV8HMvtLZt2vDOThUQbs8ESPiH+GXdQUa4XIEl5XHxeaDrh97uGKWuN
         6Q9YjFJ0RNocjRAW4uEMRUP2JFfpLzYaWc2dwd9zeui2rqFyUR7WdF6Ggj+l9IyMnhBF
         ZU6537ovNI7mQ6z0eKdGwz8RGlIIfVu/KE1hqDK+6YixpFI1H7tJ8yNdR//cRKAW8ZxI
         NYqQjm33VpARxmRqlo+0RRufhGEUZYOCPreHI5byU6GIvttci41DWteEBEfycCM+3oQ0
         i8JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734715784; x=1735320584;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PbUIMKeTcturAYAiScPBcnakmAn3H8mySmvMPtWwkkM=;
        b=bWTSjrMdYwqej2JT5zLiPxED/IuNWCcKEKYdgRQ50qE8lfFR09Mvq+KEdALm01yb0T
         PDaN0cUa5PAXo5o8xWkD76TGhO3y4ZWcqJd6RWLkB4qQdVhfEFaXf8uK7P15LrPqrBIc
         Usjkm6Lg1jhSGovEjuyWTgFyRugosdzP0zpgdHo+vAqQP7MlIyq262iyefQ5O0z8tZZ2
         LHOzz5tX5TPqMB+tSEvN2CMpXm0vtkxbn3I7UyFuyuJ7fElxEBB0E8RfWWyzYL2NBiUu
         TZR+dYlTZXKh9y+qCEIYC4h1LeI+DFE9lgNmI1Lq8nO9H1kq0d0tnTZJswDXYiVt7pES
         DQEg==
X-Forwarded-Encrypted: i=1; AJvYcCWyTHxDisM9hGX9nRCcSnwxINOPG3EXCtUWIDMEfljEBLeZQgv7//LhJwQZjQNqzT2R/5kYS/QYePtlGGbSLQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJDd6WrXzD6t3sQY2iEvyTiuBnE/z1amGYzV8Bmi6brTDjmktI
	ojPJwtfXQizgNNl4LYBLBJYBrclbRkdlfNli7VEIF26j+tjl1iTe3K/9e7lAaXqYXHAS5JUtONp
	RluqIoA==
X-Gm-Gg: ASbGncuQCinMoPPP3Ucacy02SoAmLR/0qX2xR3OhKY+hiXjsNiobxJmJ8hu4J6oUWVt
	0lQijPUA5jc2QXUVuC5Vujh/GmQznLeRia7oYWFt181pxPDMG4so6SPBkmleG1wjAINk2AXyoDN
	eDTlW7RJa07FM4fZ4h8EOcQZe0mPxffeeaOfS3FVbnSb4WOcLYpAJPA41eDjy2p++uPP0iPe3Qn
	UPEJ9kHqIVQzcxwgLvX7wSNsfSq0TE9ZGUrqMjYmT9Nhv74jt6ObAmbEbVrVfLzTh4WvkgNJtMn
	KR0vv4SaAavVD4z70yvxyeyvKIageGFGveEc7oI1n+fZrA==
X-Google-Smtp-Source: AGHT+IGYaeNQMvLczVdOyx6urQde/IHpnQcuF5g22rELY4crh7l7GYBXhQy6Gdckf+dJbl0sUORUfQ==
X-Received: by 2002:a05:6402:3206:b0:5d1:2377:5af3 with SMTP id 4fb4d7f45d1cf-5d81dd83b23mr8339389a12.5.1734715783962;
        Fri, 20 Dec 2024 09:29:43 -0800 (PST)
Received: from [10.93.128.164] (ip-078-094-000-050.um19.pools.vodafone-ip.de. [78.94.0.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f05fd7csm196164466b.172.2024.12.20.09.29.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 09:29:43 -0800 (PST)
Message-ID: <9a210e3d-90eb-42d4-83fd-7bbad7b00e86@9elements.com>
Date: Fri, 20 Dec 2024 18:29:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: ROCK3B: Correct clock rates for
 Ethernet PHYs
To: Jonas Karlman <jonas@kwiboo.se>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20241220163227.1501912-1-alicja.michalska@9elements.com>
 <17251add-40b7-4d18-8626-2d74b29532fc@kwiboo.se>
Content-Language: en-US
From: Alicja Michalska <alicja.michalska@9elements.com>
In-Reply-To: <17251add-40b7-4d18-8626-2d74b29532fc@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_172946_640540_53F57FE2 
X-CRM114-Status: GOOD (  24.12  )
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

Hello Jonas,


On 20/12/2024 18:09, Jonas Karlman wrote:
> Have you used mainline or vendor u-boot when testing?
>
> There is an existing issue with RTL8211F PHYs that they must be reset
> before Linux can identify them, see [1] for more details on the issue.
>
> Mainline U-Boot will reset the Ethernet PHYs on this board and that
> should allow for Linux to identify and use the Ethernet PHYs.
>
> [1] https://lore.kernel.org/r/47d55aca-bee6-810f-379f-9431649fefa6@kwiboo.se/

Thank you for the link. I've tested with vendor-provided U-Boot build:

U-Boot latest-2023.10-11-cc60ff40-gcc60ff40 (Aug 14 2024 - 03:56:35 +0000)

I can test with upstream in upcoming days.

> The snps,reset props is deprecated and reset- props should be used in
> the PHY node.
>
> This also changes to use 20/100 ms delay instead of current 20/50ms
> delay. If anything it could be changed to 20/80ms, I have only seen
> datasheets for rtl8211f mention minimum 10 ms and minimum 30-76 ms.
>
>> +
>> +	tx_delay = <0x36>;
>> +	rx_delay = <0x2d>;
> Are you having issue with use of rgmii-id on your board?

Interesting insight, thank you!

I have to admit that I haven't read the current documentation, just seen that other RK356X boards in the tree used it. My apologies.

I've ran into issues with rgmii-id, but that's with vendor U-Boot (as mentioned above), will try with upstream next and see a follow-up if I will still experience issues.

>> +
>>  	status = "okay";
>>  };
>>  
>>  &gmac1 {
>>  	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
>>  	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
>> -	clock_in_out = "input";
>> -	phy-handle = <&rgmii_phy1>;
>> -	phy-mode = "rgmii-id";
>> +	assigned-clock-rates = <0>, <125000000>;
>> +	clock_in_out = "output";
>>  	phy-supply = <&vcc_3v3>;
>> +	phy-mode = "rgmii";
>> +	phy-handle = <&rgmii_phy1>;
>>  	pinctrl-names = "default";
>>  	pinctrl-0 = <&gmac1m1_miim
>>  		     &gmac1m1_tx_bus2
>>  		     &gmac1m1_rx_bus2
>>  		     &gmac1m1_rgmii_clk
>> -		     &gmac1m1_rgmii_bus
>> -		     &gmac1m1_clkinout>;
>> +		     &gmac1m1_rgmii_bus>;
>> +	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
>> +	snps,reset-active-low;
>> +	snps,reset-delays-us = <0 50000 150000>;
> Same here, but now this is 50/150 ms?
I wasn't sure about those delays, as I've taken them from vendor's sources. They did seem awfully high, though.
>> +
>> +	tx_delay = <0x47>;
>> +	rx_delay = <0x28>;
> Same here, is use of rgmii-id causing issues on your boards?
Answer above :)
>> +
>>  	status = "okay";
>>  };
>>  
>> +&mdio0 {
>> +	rgmii_phy0: ethernet-phy@0 {
>> +		compatible = "ethernet-phy-ieee802.3-c22";
>> +		reg = <0>;
> The phy addr used for these boards is 0x1.
>
>> +	};
>> +};
>> +
>> +&mdio1 {
>> +	rgmii_phy1: ethernet-phy@0 {
>> +		compatible = "ethernet-phy-ieee802.3-c22";
>> +		reg = <0>;
> Same here.
Makes sense, other boards in the tree had it configured the same way.
>> +	};
>> +};
> There should be no need to move these nodes, they should already be in
> alphabetical order?
There's no reason to, just thought moving them closer to PHYs would look cleaner and make a bit more sense. It's just a nitpick though.
>> +
>>  &gpu {
>>  	mali-supply = <&vdd_gpu>;
>>  	status = "okay";
>> @@ -512,26 +540,6 @@ &i2s1m0_sdi0
>>  	status = "okay";
>>  };
>>  
>> -&mdio0 {
>> -	rgmii_phy0: ethernet-phy@1 {
>> -		compatible = "ethernet-phy-ieee802.3-c22";
> If you want to use vendor u-boot you can probably change this to
> "ethernet-phy-id001c.c916".
>
>> -		reg = <1>;
>> -		reset-assert-us = <20000>;
>> -		reset-deassert-us = <50000>;
>> -		reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
>> -	};
>> -};
>> -
>> -&mdio1 {
>> -	rgmii_phy1: ethernet-phy@1 {
>> -		compatible = "ethernet-phy-ieee802.3-c22";
> Same here.

True, but in this case it likely wouldn't be accepted in upstream, right?

I really would prefer devicetrees to be passed to the OS by bootloader, just like ACPI does on x86 and some (i.e Ampere) platforms.

This way we wouldn't need to maintain per-board DTs in the tree, and would keep functionality between kernel versions/BSDs... but one can dream, huh? :)

Thank you,

Alicja


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
