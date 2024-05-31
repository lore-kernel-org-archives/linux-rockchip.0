Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 474AEC25B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 23:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g/k/5y+Y0lON1ccE4637grcLIL9y9s4XYz05RXPvyLU=; b=puZQaNSl4jFl/Gi3XLCAQCB1Ta
	T3E3qHPlO2orYw3qmPR9uubgMrSjS1o5Ph8w5oeiyMBcmgp7gr5ZQz5+7m5vvn4ZbUP+YiwEfsc/z
	lyV1jYC4TJ6ZUGzh9ZKsnhjYJZgN+uf5l49pYEXDc/scW6FDx5a8zffRKJ9C0SreyHkboS9j1WbDp
	WnvAAHtKyHr98zGTTYUtMWnyxWTpR0dvk9vMYokVakQIzKcR4py0ZOvTji6wa9198S05+z/g99diP
	rTAeOdqf66Fn9vjA7OSPAB6ec6lEEvLSueP0/T+dq2oHdrgURY6Dib4jl4u89PKUkP6Cm80LNy6I/
	goaJvcjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDBqm-0000000BgSZ-0YYp;
	Fri, 31 May 2024 23:39:56 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDBqi-0000000BgRM-0f7q;
	Fri, 31 May 2024 23:39:53 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1717198788;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kc8wjIrdYAxjt7EjGwSxy0E0ldbUq9FWdaX7wPmdMFk=;
	b=ZOGwrFSsE9140iRXKfuif9Lont71yZB0NhWcJvuZT5imXE7nlQrHys0tXYG4QEJy94qouu
	GoeV2faCN8ClwwFWZpFobR+U3t45f4wYEIJ/OQuM6L7MOcICjOrYqt7jl+pIvQ2gLTIxKR
	XO0gVylzWUQVGIU2r/FxPRZq7uXZUcJd9kk9UQJAwlNAq4G6pofSfZquYn9ZD6sJdg/clY
	06GQwX8Qa+tPKqf4no/i4FxZtmn0EDm/LYYMx3CtdOS6ovidVWWY9iChB3VYRy4xPphAqo
	HLo4mx0sNMc7s37LKs/Kv6hbDUtUFfsyeuEJionhX2Tc6+aNXBcKWAMzjrQ2tQ==
Date: Sat, 01 Jun 2024 01:39:47 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Alexey Charkov <alchark@gmail.com>, linux-rockchip@lists.infradead.org,
 heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org, quentin.schulz@cherry.de,
 wens@kernel.org, daniel.lezcano@linaro.org, didi.debian@cknow.org,
 krzysztof.kozlowski+dt@linaro.org, viresh.kumar@linaro.org
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Make preparations for
 per-RK3588-variant OPPs
In-Reply-To: <33ee8446-aa01-47df-8e20-5ae2d384ed0e@kwiboo.se>
References: <673dcf47596e7bc8ba065034e339bb1bbf9cdcb0.1716948159.git.dsimic@manjaro.org>
 <CABjd4YxD41DEkBCZfkznLboEY9ZVOfTCLcj4S_kkcsVswbANyQ@mail.gmail.com>
 <8f8623e29a479c4108141302e708dc3b@manjaro.org>
 <CABjd4Yy4RMg+6-4ygV0MSwJj5LReY-ymbctq4PPfVZ6L+c1tsw@mail.gmail.com>
 <166cc4e46f31644a50306625b2ab18a6@manjaro.org>
 <CABjd4YzDNQa45=KC_t0xnTDrH+g-oUrcpgP55oOj7JcAuu7uFw@mail.gmail.com>
 <82db817a908b761d8c3d73ea04714314@manjaro.org>
 <607f4da8-99b2-4379-9567-4bfd2744eab3@kwiboo.se>
 <66677077acf4e970444cea829436fd0a@manjaro.org>
 <33ee8446-aa01-47df-8e20-5ae2d384ed0e@kwiboo.se>
Message-ID: <82301b2c4effe105e7238f6c3e3ffc8f@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_163952_541030_57C8B8BF 
X-CRM114-Status: GOOD (  21.08  )
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

On 2024-06-01 01:15, Jonas Karlman wrote:
> On 2024-05-31 23:24, Dragan Simic wrote:
>> On 2024-05-31 13:27, Jonas Karlman wrote:
>>> On 2024-05-30 21:31, Dragan Simic wrote:
>>> [snip]
>>> 
>>>>>>>> That way we'll have no roadblocks if, at some point, we end up
>>>>>>>> with
>>>>>>>> having
>>>>>>>> different OPPs defined for the RK3588 and the RK3588S variants.
>>>>>>>> Or
>>>>>>>> maybe
>>>>>>>> even for the RK3582, which we don't know much about yet.
>>>>>>> 
>>>>>>> Guess we'll deal with that one once we stumble upon an actual
>>>>>>> RK3582
>>>>>>> board out in the wild and heading to the mainline kernel tree :)
>>>>>> 
>>>>>> Of course, that was just an example for the future use.
>>>>> 
>>>>> In fact, I've just discovered that Radxa has recently released Rock
>>>>> 5C
>>>>> Lite which is based on RK3582, and starts at just $29 for the 1GB
>>>>> version, making it interesting for tinkering. Especially given that
>>>>> its GPU, one of the big-core clusters and one of the VPU cores seem
>>>>> to
>>>>> be disabled in software (u-boot) rather than in hardware, which 
>>>>> means
>>>>> there is some chance that a particular SoC specimen would actually
>>>>> have them in a working condition and possible to re-enable at no
>>>>> cost.
>>>>> Ordered myself one to investigate :)
>>>> 
>>>> Yes, I also saw the RK3582-based ROCK 5C Lite a couple of days ago. 
>>>> :)
>>>> It seems that the disabled IP blocks are detected as defective 
>>>> during
>>>> the manufacturing, which means that they might work correctly, or
>>>> might
>>>> actually misbehave.  It seems similar to the way old three-core AMD
>>>> Phenom II CPUs could sometimes be made quad-core.
>>> 
>>> I can confirm that the RK3582 include ip-state in OTP indicating
>>> unusable cores, any unusable cpu core cannot be taken online and 
>>> stalls
>>> Linux kernel a few extra seconds during boot.
>> 
>> Thanks for this confirmation!
>> 
>>> Started working on a patch for U-Boot to remove any broken cpu core
>>> and/or cluster nodes, similar to what vendor U-Boot does, adopted to
>>> work with a mainline DT for RK3588.
>> 
>> Nice, thanks for working on that. :)
>> 
>>> On one of my ROCK 5C Lite board one of the cpu cores is unusable,
>>> U-Boot
>>> removes the related cpu cluster nodes. On another ROCK 5C Lite board
>>> one
>>> rkvdec core is only marked unusable and all cpu cores can be taken
>>> online, U-Boot does nothing in this case. Guessing we should apply
>>> similar policy as vendor U-Boot and disable cores anyway.
>> 
>> Just checking, you're referring to disabling the rkvdec core only,
>> for the latter case?
> 
> No, the vendor U-Boot will remove cluster2 if no cpu core is bad.
> 
> RK3582 policy:
> - always remove gpu node
> - always remove both rkvdec nodes
> - remove bad rkvenc node, if both are normal, remove rkvenc1 anyway
> 
> RK3583 policy:
> - remove bad rkvdec node, if both are normal, remove rkvdec1 anyway
> - remove bad rkvenc node, if both are normal, remove rkvenc1 anyway
> 
> CPU core policy:
> - remove both cores within a cluster having a bad core
> - if core4~7 are all normal, remove core6 and core7 anyway

Thanks for the clarification.  Though, what's RK3583, is there
really another SoC variant?  I've heard only about the RK3582.

I think that the upstream U-Boot policy should be to follow closely
what the OTP data says about unusable portions of the SoC.  IOW, just
disable what OTP specifically says to be unusable, exactly as Alexey
already proposed. [1]

Though, the disabling of the GPU and the rkvdec would be an exception
to the "disable only what OTP says" rule, but that could be justified
by the absence of the related OTP data.

[1] 
https://lore.kernel.org/linux-rockchip/CABjd4YxdM+cM+z7ou3=DF2SrFM0235DSTZ45o0NsKBwGrgW8Bg@mail.gmail.com/

>>> Following commit contains early work-in-progress and some debug 
>>> output.
>>> 
>>> https://github.com/Kwiboo/u-boot-rockchip/commit/8cdf606e616baa36751f3b4adcfaefc781126c8c
>>> 
>>> Booting ROCK 5C Lite boards using U-Boot generic-rk3588_defconfig:
>>> 
>>> ROCK 5C Lite v1.1 (RK3582 with 1 bad cpu core):
>>> 
>>>   cpu-code: 3582
>>>   cpu-version: 08 10
>>>   data: fe 21
>>>   package: 11
>>>   specification: 01
>>>   ip-state: 10 00 00
>>>   bad-state: cpu core 4
>>> 
>>> ROCK 5C Lite v1.1 (RK3582 with 1 bad rkvdec core):
>>> 
>>>   cpu-code: 3582
>>>   cpu-version: 08 00
>>>   data: fe 21
>>>   package: 11
>>>   specification: 01
>>>   ip-state: 00 80 00
>>>   bad-state: rkvdec core 1
>> 
>> Thanks again for these nice details!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
