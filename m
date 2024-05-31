Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB0B2C25B7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 11:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aP/050Y93ISR11sdjyU8DpIcNUYMQjBQnkIBr4yKCYI=; b=ewqQvHqHceQt6Q
	aWHkedyuiZFDBuiX5djqcUhY23QC6JdZnu5/r4Zl5NLiVgfeYKxqYGgv1Z7kNOCKCuUohH/wIPNPl
	sVcCVnGKTdgofbosCbY00iTqF7GV3xKFTeFHrRUg4eBhtH+5f71m1o75d4hsaiHb1eed4yC8v13FW
	HUfEgoU4iZMv0iRo3eZIXqqkLHNAdKtWSOitupLJhEPTLXJDN2UUV2BGg7VUCWgLoVGe6yWPpsAVB
	l5QpE+LFeF+X7BnAe1NVBk/DVcqkFZ+8wOgntyIyS/VH83YgNXSIZu+rP0cpgZkweaJ4rCTH9mIXy
	0gg6Sawri0F+BYMAumXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD0Qh-0000000A4sz-1B7f;
	Fri, 31 May 2024 11:28:15 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD0Qd-0000000A4ph-2SBV
	for linux-rockchip@lists.infradead.org;
	Fri, 31 May 2024 11:28:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1717154860;
 bh=N2xogLUhalbqd5Rj5JxRpBYbX5aMNbX37zbmgE6qPbM=;
 b=SvhJgXXEbHksx2zo7oz/sG9pvBBV2H5lstqyss23vfvbStqYXWBeuGiE81nb7g5TAzdJ5bI7V
 CDJWuwszcTQO7FFPGxM0J1P9QOML2y9bRsSYl+Kkx7sYHF2w53zj71m7qIFu+jVr+g0YdrRPAnd
 sQXxnGT21VHRXPBzjIKewSZgmCtwHoHCvfDOUi20nFxecImYuzhPL1JrGECa0bCvAiQs7P81ozS
 CuJwucilMKfXkhnPKlqHqU6bIVojFZPp6Iuiba5I15uNlFXTt0apRVYoynqErEn3/M77XghR/dC
 hQYs0nQ1fXeC1K21B0J8T0ixL7h6CKwJWAiEFjgT7Qlw==
Message-ID: <607f4da8-99b2-4379-9567-4bfd2744eab3@kwiboo.se>
Date: Fri, 31 May 2024 13:27:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] arm64: dts: rockchip: Make preparations for
 per-RK3588-variant OPPs
To: Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, quentin.schulz@cherry.de, wens@kernel.org,
 daniel.lezcano@linaro.org, didi.debian@cknow.org,
 krzysztof.kozlowski+dt@linaro.org, viresh.kumar@linaro.org
References: <673dcf47596e7bc8ba065034e339bb1bbf9cdcb0.1716948159.git.dsimic@manjaro.org>
 <CABjd4YxD41DEkBCZfkznLboEY9ZVOfTCLcj4S_kkcsVswbANyQ@mail.gmail.com>
 <8f8623e29a479c4108141302e708dc3b@manjaro.org>
 <CABjd4Yy4RMg+6-4ygV0MSwJj5LReY-ymbctq4PPfVZ6L+c1tsw@mail.gmail.com>
 <166cc4e46f31644a50306625b2ab18a6@manjaro.org>
 <CABjd4YzDNQa45=KC_t0xnTDrH+g-oUrcpgP55oOj7JcAuu7uFw@mail.gmail.com>
 <82db817a908b761d8c3d73ea04714314@manjaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <82db817a908b761d8c3d73ea04714314@manjaro.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6659b429f6613cab14c70b44
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_042811_693753_5BD3A181 
X-CRM114-Status: GOOD (  16.02  )
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

Hi Alexey and Dragan,

On 2024-05-30 21:31, Dragan Simic wrote:
> Hello Alexey,
> 

[snip]

>>>>> That way we'll have no roadblocks if, at some point, we end up with
>>>>> having
>>>>> different OPPs defined for the RK3588 and the RK3588S variants.  Or
>>>>> maybe
>>>>> even for the RK3582, which we don't know much about yet.
>>>>
>>>> Guess we'll deal with that one once we stumble upon an actual RK3582
>>>> board out in the wild and heading to the mainline kernel tree :)
>>>
>>> Of course, that was just an example for the future use.
>>
>> In fact, I've just discovered that Radxa has recently released Rock 5C
>> Lite which is based on RK3582, and starts at just $29 for the 1GB
>> version, making it interesting for tinkering. Especially given that
>> its GPU, one of the big-core clusters and one of the VPU cores seem to
>> be disabled in software (u-boot) rather than in hardware, which means
>> there is some chance that a particular SoC specimen would actually
>> have them in a working condition and possible to re-enable at no cost.
>> Ordered myself one to investigate :)
> 
> Yes, I also saw the RK3582-based ROCK 5C Lite a couple of days ago. :)
> It seems that the disabled IP blocks are detected as defective during
> the manufacturing, which means that they might work correctly, or might
> actually misbehave.  It seems similar to the way old three-core AMD
> Phenom II CPUs could sometimes be made quad-core.
> 

I can confirm that the RK3582 include ip-state in OTP indicating
unusable cores, any unusable cpu core cannot be taken online and stalls
Linux kernel a few extra seconds during boot.

Started working on a patch for U-Boot to remove any broken cpu core
and/or cluster nodes, similar to what vendor U-Boot does, adopted to
work with a mainline DT for RK3588.

On one of my ROCK 5C Lite board one of the cpu cores is unusable, U-Boot
removes the related cpu cluster nodes. On another ROCK 5C Lite board one
rkvdec core is only marked unusable and all cpu cores can be taken
online, U-Boot does nothing in this case. Guessing we should apply
similar policy as vendor U-Boot and disable cores anyway.

Following commit contains early work-in-progress and some debug output.

https://github.com/Kwiboo/u-boot-rockchip/commit/8cdf606e616baa36751f3b4adcfaefc781126c8c

Booting ROCK 5C Lite boards using U-Boot generic-rk3588_defconfig:

ROCK 5C Lite v1.1 (RK3582 with 1 bad cpu core):

  cpu-code: 3582
  cpu-version: 08 10
  data: fe 21
  package: 11
  specification: 01
  ip-state: 10 00 00
  bad-state: cpu core 4

ROCK 5C Lite v1.1 (RK3582 with 1 bad rkvdec core):

  cpu-code: 3582
  cpu-version: 08 00
  data: fe 21
  package: 11
  specification: 01
  ip-state: 00 80 00
  bad-state: rkvdec core 1

Regards,
Jonas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
