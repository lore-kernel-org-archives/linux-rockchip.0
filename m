Return-Path: <SRS0=S+7F=IR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE7C0C433C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 18:06:22 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 611E061950
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 18:06:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 611E061950
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ceGxq7HelYehkvaW3/r15YBQkrnpsWbkKYsYR/fvChg=; b=Wc9Tm0Wlb3Qp2fJFut4pmpAn5
	pffu+2cIC1DRx/XTsta9yafeYs20P5ARCu83IrUz5g+vHYSKe+qMgE+bom5oWE8xxVk9HN4M5E6Wk
	c7kfe9/BxJQgiom8ZXwROtpacu5aWE5FKAk1uyd0nFE4CDJiu593E1SFlYq0i0Xn77QLzohprQZbC
	1uM6H7wdSxtipKlgIJe4FhYyg4yc/MA4A3Uk4mxJwKTQAtaZstvONTM43O278Oj+ypfPQxLODyBiL
	JMiTG+sViHkRe9kej4moTTcCR8ZVxHTti0G+MaZSQtxpP9Jka3tlFOp3z+8UOO943JRF/l6/rFogu
	unIvJjlVg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNJVq-007uw8-Ax; Fri, 19 Mar 2021 18:06:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1lNJVf-007uvF-Al; Fri, 19 Mar 2021 18:06:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1AEBB31B;
 Fri, 19 Mar 2021 11:05:59 -0700 (PDT)
Received: from [10.57.50.37] (unknown [10.57.50.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A6FD83F792;
 Fri, 19 Mar 2021 11:05:56 -0700 (PDT)
Subject: Re: [PATCH] dt: rockchip: rk3399: Add dynamic power coefficient for
 GPU
To: Daniel Lezcano <daniel.lezcano@linaro.org>, heiko@sntech.de
Cc: Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Helen Koike <helen.koike@collabora.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Jacob Chen <jacob2.chen@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210319110511.24787-1-daniel.lezcano@linaro.org>
 <5db868e4-5b86-7b32-51e0-665a2e1fc1ac@arm.com>
 <9322db05-2cad-453c-ec1b-1fdb3df142fa@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <11480a47-47da-c5b3-edad-c2dd8edb2cd9@arm.com>
Date: Fri, 19 Mar 2021 18:05:50 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <9322db05-2cad-453c-ec1b-1fdb3df142fa@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_180607_747386_2340A395 
X-CRM114-Status: GOOD (  29.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 2021-03-19 14:35, Daniel Lezcano wrote:
> 
> Hi Robin,
> 
> On 19/03/2021 13:17, Robin Murphy wrote:
>> On 2021-03-19 11:05, Daniel Lezcano wrote:
>>> The DTPM framework is looking for upstream SoC candidates to share the
>>> power numbers.
>>>
>>> We can see around different numbers but the one which seems to be
>>> consistent with the initial post for the values on the CPUs can be
>>> found in the patch https://lore.kernel.org/patchwork/patch/810159/
>>
>> The kernel hacker in me would be more inclined to trust the BSP that the
>> vendor actively supports than a 5-year-old patch that was never pursued
>> upstream. Apparently that was last updated more recently:
>>
>> https://github.com/rockchip-linux/kernel/commit/98d4505e1bd62ff028bd79fbd8284d64b6f468f8
> 
> Yes, I've seen this value also.
> 
>> The ex-mathematician in me can't even comment either way without
>> evidence that whatever model expects to consume this value is even
>> comparable to whatever "arm,mali-simple-power-model" is. >
>> The way the
>> latter apparently needs an explicit "static" coefficient as well as a
>> "dynamic" one, and the value here being nearly 3 times that of a
>> similarly-named one in active use downstream (ChromeOS appears to still
>> be using the values from before the above commit), certainly incline me
>> to think they may not be...
> 
> Sorry, I'm missing the point :/
> 
> We dropped in the kernel any static power computation because as there
> was no value, the resulting code was considered dead. So we rely on the
> dynamic power only.

Right, so a 2-factor model is clearly not identical to a 1-factor model, 
so how do we know that a value for one is valid for the other, even if 
it happens to have a similar name? I'm not saying that it is or isn't; I 
don't know. If someone can point to the downstream coefficient 
definition being identical to the upstream one then great, let's use 
that as justification. If not, then the justification of one arbitrary 
meaningless number over any other is a bit misleading.

>>> I don't know the precision of this value but it is better than
>>> nothing.
>>
>> But is it? If it leads to some throttling mechanism kicking in and
>> crippling GPU performance because it's massively overestimating power
>> consumption, that would be objectively worse for most users, no?
> 
> No because there is no sustainable power specified for the thermal zones
> related to the GPU.
OK, that's some reassurance at least. Does the exact value have any 
material effect? If not, what's to stop us from using an obviously 
made-up value like 1, and saying so?

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
