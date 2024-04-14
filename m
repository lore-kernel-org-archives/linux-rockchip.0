Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 046FBC4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 14:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gYr2/juJ2tqEU3yqGKwuNrV9gBpyhghMm71NkSBc0w=; b=qT+/9kIwnd04pC
	DN/0eYl/eR+Bp/sXHteNOtbyD4zRQI0JxNtLcu6yIrTu/A4zok4ryfHjzk/8/CQnIn+HB+dVMu05M
	uGw0TpeddyiWaDqhbaVFAOak+FL1cD/SIUqAmuSpk5+9T0uS9l0CSJ5fnlfli/TM1XAGAlPeX1v4w
	FP4C63oX4l1MftHT39UXtAW3sKrux9BpVqftYQig8w1OzftgszAFTV39PzLxz3WnlQF41k5KTIBgN
	DVOwLAhS0RVX3Co2D+2ShIQEi6yMCq36tl/D9LLVGZcuZ4N5kVJ7O8VjNz5RGZMyroZDFSm7AEUXE
	ix8VqpyRqXjcgjkLB0MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw0Zz-00000005bJW-04LM;
	Sun, 14 Apr 2024 14:11:35 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw0Zu-00000005bIK-21FK
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Apr 2024 14:11:33 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-56e509baddaso2086109a12.1
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Apr 2024 07:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713103887; x=1713708687; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1tMpo/zuSFQ2iQW3o8k6ZDetDDrHwQ8KrFnSgtE+JhE=;
        b=ZrCORX7iHSZ7uz+UZuTZYVuespiLgJ9nPyhKR1bCnx0h0YkZ2CKjhvx9qNztjVKmIn
         j/J6Ks5w1Rs6E9cSpAe8zdQvw+PWBPvdm2P4ZmuxFXMIgysRrxYzztYQRXe56zvMph7J
         gVtPAkdeVp77npoqs1mOzacNxWFKebZOXM6oGA1NZH0V12U3Nib1+sVlF+rYeTlKexIc
         GID6VvKQzKQR4InC2pwXDLDkF6L/s5g3iBGZwuM7zqSzwUkVbH4Hzdj2PIe2QBDPuLru
         DB7pYqv9e66/MhXZa16lUeD5DFnDqK1ClBhbtTecQHV+OfsHAVdV0ZpSYDxnwprdScEz
         1LwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713103887; x=1713708687;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1tMpo/zuSFQ2iQW3o8k6ZDetDDrHwQ8KrFnSgtE+JhE=;
        b=FGrNyZp3HmGJQ9QqoPh9PrE1+dDWF/sP319nuMDkOA1WlBe4mVgHBoZ8AxB4FYClfr
         4xeK52fjl9SBkMIdh4AwLDsSVEUlprkknJnW2+SE4WBS7MIAz9rjllK5ljQpezy3wX8L
         A79D9kXkPcU/Nj0Fck6Jv7RWXUbLp2acVKVsyLjjpgTSWpbU7A1f3y4Ka3MFudogxxDI
         lgUK+qFz1MgMWGAohZnvbkD7H4cR51Wk+JTfb4a724sEfJnK0BiH7xbLvzgQlzynakWy
         jqDPh4E+iQ8YMRxEwAjvpeHPliF1clMj6t3SvCANNcxy0632cGgQTBdSlMdYauQ+PISe
         4dCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXv4TpjdO7zV5GPTpSk+S1DGUE05bzCfEth3qdcuQ0U1mJCqZW/lcggOBQKNn7L4NwmuKRVfJW3HncVli8J2IsWdRxAvUIeYBeJnb0R3ezOHpVB
X-Gm-Message-State: AOJu0YxgtIdFyMKSiam7qvSNWhCbS5P/VJ98OEesZ+hjCEdCCqEld6hv
	6OmdKn6upzDQN82mEkL6dVNcSUXJaEHe3GJjCYgTHjYTuJBAEKPHpr7Du0j0rhQ=
X-Google-Smtp-Source: AGHT+IGnJxsmae6YrIT6o794astGVI6Dy1GaKU3o0017CUwUPHiQmtFXrO4tt5YaMDXk2xRQOVhCFA==
X-Received: by 2002:a50:cd1a:0:b0:56e:2332:cb4b with SMTP id z26-20020a50cd1a000000b0056e2332cb4bmr3855535edi.40.1713103886855;
        Sun, 14 Apr 2024 07:11:26 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id s24-20020a056402037800b0056e44b681a6sm3707332edw.57.2024.04.14.07.11.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Apr 2024 07:11:26 -0700 (PDT)
Message-ID: <cbcd0cf9-9e2a-43cd-afe8-844b513e3a7b@linaro.org>
Date: Sun, 14 Apr 2024 16:11:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240414131529.1730506-1-jonas@kwiboo.se>
 <20240414131529.1730506-3-jonas@kwiboo.se>
 <efd1eb32-afd6-4383-be45-89b0f71f118f@linaro.org>
 <3abd2dfe-e4c9-42d0-89a4-4c340c08aea1@kwiboo.se>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <3abd2dfe-e4c9-42d0-89a4-4c340c08aea1@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_071130_622442_2B3B8BA4 
X-CRM114-Status: GOOD (  12.65  )
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

On 14/04/2024 15:56, Jonas Karlman wrote:
> Hi Krzysztof,
> 
> On 2024-04-14 15:33, Krzysztof Kozlowski wrote:
>> On 14/04/2024 15:15, Jonas Karlman wrote:
>>> The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
>>> computer based on the Rockchip RK3566, with a compact form factor and
>>> rich interfaces.
>>>
>>> The ZERO 3W and ZERO 3E are basically the same size and model, but
>>> differ only in storage and network interfaces.
>>>
>>> - eMMC (3W)
>>> - SD-card (both)
>>> - Ethernet (3E)
>>> - WiFi/BT (3W)
>>>
>>> This adds initial support for eMMC, SD-card, Ethernet, HDMI and USB.
>>>
>>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>>> ---
>>>  .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
>>>  .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  26 +
>>>  .../boot/dts/rockchip/rk3566-radxa-zero3.dtsi | 443 ++++++++++++++++++
>>>  3 files changed, 510 insertions(+)
>>
>> How do you build your patches? That's rhetorical, because they cannot be
>> built... Missing Makefile.
> 
> They where built using the generic .dtb-file make target, will include
> in Makefile in v2, thanks.
> 
>>
>> Are you sure therefore that your dts pass dtbs_check? If this is not in
>> Makefile, how did you run the command?
> 
> I built and tested dts files using the following make commands:
> 
> make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 defconfig
> make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 CHECK_DTBS=y rockchip/rk3566-radxa-zero-3w.dtb
> make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 CHECK_DTBS=y rockchip/rk3566-radxa-zero-3e.dtb

OK, thanks, wasn't sure it works without makefile. Anyway you still need it.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
