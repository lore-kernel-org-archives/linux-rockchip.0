Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA75FC38A02
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Oct 2022 19:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XG23Wjex0xraJpcnmJONjqjhX86ofPD5r4nNC6k5l2k=; b=DXsei8DcI4u7RN
	qJVFhXE8LO281WEQaIDVBptWtAL9u+BXWVBfObSQzs6m34pLI8cCE27oL8+s7wbVuI0e2Og77E+Ep
	avrCwDKiRQ2TNZ8AwHjWsFiow4JzUupk/VFCzw+39Ipy5RB1+ie4juq8PW4t7zfNJBLTc+ioTrdJe
	gIRxGte1fpcsDtQbVpn3aNDIQmKtMZy6FPMwtnPLvBKI0AqsaxnWRtdUfxH4hjZulTtpz/ySCDNMt
	nf43aiaffiT/wwcjoaGaPjdPRnpDnmy29C1giqVLy6FcrBZd3wdUjLLnokQHuC/r66LftDnfg+r5X
	XUGYmM10QoqQTFvxMkxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEFM-002R1r-Qk; Sun, 30 Oct 2022 19:45:28 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEFA-002Qv9-MG; Sun, 30 Oct 2022 19:45:18 +0000
Received: by mail-wr1-x434.google.com with SMTP id z14so13332389wrn.7;
        Sun, 30 Oct 2022 12:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NKfS4aLyhcZFouwvRqN+Hdd2h6IBU2o24ivlxdwY0Kk=;
        b=gQD2ly58el8xxV1WXPhVHbGQKb2LoinxKG6ea/7w5TYG3yCnfuD6uDIYTTz8fPthzL
         3TWJ4MnAo7iw8HU3iXq7pSPr74l64y46ogk6IL+dTG12Mn8ZkvhU5d++AACymBJQqrQ9
         mLmZYxbCTTllzu7OpKz4ZbJU7KBEUGZEJFV24az1LLwaOrOgaUQQCHznTsS48GphwBA/
         ymF8XT7gf9x9l3T4F4QsIBHyE17/Mv6fuMSffnVu1AqJ/YcPzHSt0yib8ffnE6NO7Htc
         7YBeXcfOxdcCTIlEbftaUYuN0iR+BsiMu7BGsL6SuvumvlOmMuMOvVz8ANITXUL+IHEL
         3hqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NKfS4aLyhcZFouwvRqN+Hdd2h6IBU2o24ivlxdwY0Kk=;
        b=XAJSXdRw2XnTZ3LmqhFXJyH7DPv9lIevFJo+80IaC4ftf4YBjzG4XS2gBh4MVW7HtG
         N+c9UyXYPoeG08yONSUeKm5PJmcdI6qWMUhCOAsMBvxI3uvk8KyYfDdxmO9g5Sfry87/
         XUNfu1S8jlHQGrBu/pVahk3ZMczBXz4s2l/LMQG4593rjSAcsMGpgDEic15AP90MiJkP
         Wpd/qJMAQ6tsSdQJkmrkv171xW3Uot7Njjf3UVHMC4y9owH8Ot8sSIgxl0ugCrnUblvM
         SJQ/nJDYMQlDjPYBcAdtKi800HsibKY/EWCgkJlaSF6u25rqm2q+GPRTiJV8zVNJQ2Xn
         efwA==
X-Gm-Message-State: ACrzQf1WP6tFdsUTiOc/6Fc0Bom9By1P4EuYEUr8w5McDCHepJBl4hzu
	2cz1z7PBILC7vKf9xNDeF2E=
X-Google-Smtp-Source: AMsMyM5oiGBxjmdAvLKUOJuUhqiRqr3JgCGFBbO7W6nQz88ItVLsAqDzKQPMmSwGOjNl36hM60rB4A==
X-Received: by 2002:a05:6000:1845:b0:236:90d2:f239 with SMTP id c5-20020a056000184500b0023690d2f239mr5912515wri.711.1667159114228;
        Sun, 30 Oct 2022 12:45:14 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id p12-20020a7bcc8c000000b003a682354f63sm5063992wma.11.2022.10.30.12.45.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Oct 2022 12:45:13 -0700 (PDT)
Message-ID: <1e268275-0705-8c30-5ea8-799d17278f08@gmail.com>
Date: Sun, 30 Oct 2022 20:45:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1 1/2] arm: rockchip: Kconfig: remove select
 ARM_GLOBAL_TIMER
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux@armlinux.org.uk, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <88e93a81-ef9f-adcc-db83-f8b5ba615c47@gmail.com>
 <3935573.e9J7NaK4W3@phil>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <3935573.e9J7NaK4W3@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_124516_762471_906CBDAE 
X-CRM114-Status: GOOD (  25.96  )
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



On 10/30/22 20:30, Heiko Stuebner wrote:
> Hi Johan,
> 
> Am Sonntag, 30. Oktober 2022, 19:36:01 CET schrieb Johan Jonker:
>> The clocksource and the sched_clock provided by the arm_global_timer
>> on Rockchip rk3066a/rk3188 are quite unstable because their rates
>> depend on the cpu frequency.
>>
>> Recent changes to the arm_global_timer driver makes it impossible to use.
>>
>> On the other side, the arm_global_timer has a higher rating than the
>> rockchip_timer, it will be selected by default by the time framework
>> while we want to use the stable rockchip clocksource.
>>
>> Let's disable the arm_global_timer in order to have the ROCKCHIP_TIMER
>> (rk3188) or DW_APB_TIMER (rk3066a) selected by default.
> 
> Doing that change won't help you with the issue you see.
> These days kernel images are supposed to run on as many
> platforms as possible with the _same_ kernel image.
> 
> So the muliplatform image build from the kernel's defconfig will
> include most of the time other platforms that will pull in the
> global-timer again.
> 
> 

How about "imply" instead of "select"?
It's no longer useful. One can get rid of if one wants a really lean kernel.

> I do see that you disable the global-timer
> in the rk3066 dtsi in patch2, though this would leave the rk3188
> still using the global-timer. Why not do this in the rk3xxx.dtsi?
> 
> I.e. keep the global-timer node, but add a disabled property
> together with a comment above the status=disabled, describing
> the issue. [This should keep people from re-adding the global-timer
> in the future :-) ]
> 
> Thanks
> Heiko
> 
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>
>> ARM: dts: rockchip: disable arm-global-timer for rk3188
>> https://lore.kernel.org/linux-rockchip/1492374441-23336-26-git-send-email-daniel.lezcano@linaro.org/
>>
>> clocksource: arm_global_timer: implement rate compensation whenever source clock changes
>> https://lore.kernel.org/all/20210406130045.15491-2-andrea.merello@gmail.com/
>> ---
>>  arch/arm/mach-rockchip/Kconfig | 2 --
>>  1 file changed, 2 deletions(-)
>>
>> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
>> index b7855cc66..0432a4430 100644
>> --- a/arch/arm/mach-rockchip/Kconfig
>> +++ b/arch/arm/mach-rockchip/Kconfig
>> @@ -15,8 +15,6 @@ config ARCH_ROCKCHIP
>>  	select DW_APB_TIMER_OF
>>  	select REGULATOR if PM
>>  	select ROCKCHIP_TIMER
>> -	select ARM_GLOBAL_TIMER
>> -	select CLKSRC_ARM_GLOBAL_TIMER_SCHED_CLOCK
>>  	select ZONE_DMA if ARM_LPAE
>>  	select PM
>>  	help
>> --
>> 2.20.1
>>
>>
> 
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
