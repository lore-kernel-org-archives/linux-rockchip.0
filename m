Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D1F5C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Mar 2022 13:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrdyjXgGW9ANLg4NJAvnqKWj1Hd0h7/C40ekcfreFi8=; b=v1S119liK+om3n
	vECsMIPytC1OXmnRwpOsqdT708iMi+5MsIo2i9loFBg2KhL/ZNheZWHUUDn5Rhy/Y/12cljEknxX/
	fWDb6NXqHHf46x6eEbw7i9E/Spw81xzpWFAvhI+2wVcejXeMBUevNy9tGBhCl3DSnPRlZVTYJwgFD
	ZrNQ7i9TcH/Nuiu2gfW7Fg//XxG9ajMMd46tNR2DuEmoZeSpjYLhWelXORtPpSh9/iUVFlEsSeGCG
	GYNYuHi6VJiEQL0ye6kyNAJ7hjIW9e4Oo45RChBasUo1+UXYZupc+ALPsDaDQue+diLOaUy2CFXXA
	BHuvRG7foRw0qsCclVAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUq0k-00GDTM-Hq; Thu, 17 Mar 2022 13:17:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUq0h-00GDSl-BD
 for linux-rockchip@lists.infradead.org; Thu, 17 Mar 2022 13:17:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7E60D1515;
 Thu, 17 Mar 2022 06:17:45 -0700 (PDT)
Received: from [10.57.42.204] (unknown [10.57.42.204])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 151153F766;
 Thu, 17 Mar 2022 06:17:43 -0700 (PDT)
Message-ID: <6f5aaddd-e793-e5f1-17aa-71e7804f035f@arm.com>
Date: Thu, 17 Mar 2022 13:17:39 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: radeon ring 0 test failed on arm64
Content-Language: en-GB
To: Peter Geis <pgwipeout@gmail.com>
Cc: Kever Yang <kever.yang@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Alex Deucher <alexdeucher@gmail.com>,
 "Deucher, Alexander" <alexander.deucher@amd.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <CAMdYzYptw9L=5SECtVkNZruTT-x57+03vj0A+5efvq8cESzLyQ@mail.gmail.com>
 <CADnq5_NXmRr_Q7JuWZxJAjmavVkvJjNcWayQ1x8LhfcX5CS0uA@mail.gmail.com>
 <CAMdYzYoamh-igvBbKaLSJ6bSc3wA29=8mooJDLMJkj9YQ=wj0A@mail.gmail.com>
 <CADnq5_NXFZPA_z6413FDgr8WRObhCB+HdkHE5P=PAAMV4FiWiA@mail.gmail.com>
 <20dffd4d-fa54-5bc3-c13b-f8ffbf0fb593@arm.com>
 <599edb94-8294-c4c5-ff7f-84c7072af3dd@gmail.com>
 <546bf682-565f-8384-ec80-201ce1c747f4@arm.com>
 <8afb06c4-7601-d0d7-feae-ee5abc9c3641@amd.com>
 <CAMdYzYqH57HuqMMydMtQw2Ep2A_Qhjg3N_gTw6GuO6Kuxd9chQ@mail.gmail.com>
 <c3bd7c08-f7e3-153e-8445-8e867916d03c@arm.com>
 <CAMdYzYpt1vOCXiDUHCnuVRKnQ51Qissj9-w75FB6nVrFWS-9iw@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CAMdYzYpt1vOCXiDUHCnuVRKnQ51Qissj9-w75FB6nVrFWS-9iw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220317_061747_517656_15C330B1 
X-CRM114-Status: GOOD (  29.70  )
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

On 2022-03-17 12:26, Peter Geis wrote:
> On Thu, Mar 17, 2022 at 6:37 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 2022-03-17 00:14, Peter Geis wrote:
>>> Good Evening,
>>>
>>> I apologize for raising this email chain from the dead, but there have
>>> been some developments that have introduced even more questions.
>>> I've looped the Rockchip mailing list into this too, as this affects
>>> rk356x, and likely the upcoming rk3588 if [1] is to be believed.
>>>
>>> TLDR for those not familiar: It seems the rk356x series (and possibly
>>> the rk3588) were built without any outer coherent cache.
>>> This means (unless Rockchip wants to clarify here) devices such as the
>>> ITS and PCIe cannot utilize cache snooping.
>>> This is based on the results of the email chain [2].
>>>
>>> The new circumstances are as follows:
>>> The RPi CM4 Adventure Team as I've taken to calling them has been
>>> attempting to get a dGPU working with the very broken Broadcom
>>> controller in the RPi CM4.
>>> Recently they acquired a SoQuartz rk3566 module which is pin
>>> compatible with the CM4, and have taken to trying it out as well.
>>>
>>> This is how I got involved.
>>> It seems they found a trivial way to force the Radeon R600 driver to
>>> use Non-Cached memory for everything.
>>> This single line change, combined with using memset_io instead of
>>> memset, allows the ring tests to pass and the card probes successfully
>>> (minus the DMA limitations of the rk356x due to the 32 bit
>>> interconnect).
>>> I discovered using this method that we start having unaligned io
>>> memory access faults (bus errors) when running glmark2-drm (running
>>> glmark2 directly was impossible, as both X and Wayland crashed too
>>> early).
>>> I traced this to using what I thought at the time was an unsafe memcpy
>>> in the mesa stack.
>>> Rewriting this function to force aligned writes solved the problem and
>>> allows glmark2-drm to run to completion.
>>> With some extensive debugging, I found about half a dozen memcpy
>>> functions in mesa that if forced to be aligned would allow Wayland to
>>> start, but with hilarious display corruption (see [3]. [4]).
>>> The CM4 team is convinced this is an issue with memcpy in glibc, but
>>> I'm not convinced it's that simple.
>>>
>>> On my two hour drive in to work this morning, I got to thinking.
>>> If this was an memcpy fault, this would be universally broken on arm64
>>> which is obviously not the case.
>>> So I started thinking, what is different here than with systems known to work:
>>> 1. No IOMMU for the PCIe controller.
>>> 2. The Outer Cache Issue.
>>>
>>> Robin:
>>> My questions for you, since you're the smartest person I know about
>>> arm64 memory management:
>>> Could cache snooping permit unaligned accesses to IO to be safe?
>>
>> No.
>>
>>> Or
>>> Is it the lack of an IOMMU that's causing the alignment faults to become fatal?
>>
>> No.
>>
>>> Or
>>> Am I insane here?
>>
>> No. (probably)
>>
>> CPU access to PCIe has nothing to do with PCIe's access to memory. From
>> what you've described, my guess is that a GPU BAR gets put in a
>> non-prefetchable window, such that it ends up mapped as Device memory
>> (whereas if it were prefetchable it would be Normal Non-Cacheable).
> 
> Okay, this is perfect and I think you just put me on the right track
> for identifying the exact issue. Thanks!
> 
> I've sliced up the non-prefetchable window and given it a prefetchable window.
> The 256MB BAR now resides in that window.
> However I'm still getting bus errors, so it seems the prefetch isn't
> actually happening.

Note that "prefetchable" really just means "no side-effects on reads", 
i.e. we can map it with a Normal memory type that technically *allows* 
the CPU to make speculative accesses because they will not be harmful, 
but that's not to say the CPU will do so. Just that if it did, you 
wouldn't notice anyway.

It's entirely possible that the PCIe IP itself doesn't like unaligned 
accesses, so changing the memory type just moves you from an alignment 
fault to an external abort.

> The difference is now the GPU realizes that an error has happened and
> initiates recovery, vice before where it seemed to be clueless.
> If I understand everything correctly, that's because before the bus
> error was raised by the CPU due to the memory flag, vice now where
> it's actually the bus raising the alarm.
> 
> My next question, is this something the driver should set and isn't,
> or is it just because of the broken cache coherency?

The general rule for userspace mmap()ing PCIe-attached memory and 
handing it off to glibc or anyone else who might assume it's regular 
system RAM is "don't do that". If it's not access size or alignment that 
falls over, it could be atomic operations, MTE tags, or any other 
new-fangled memory innovation. For the ultimate dream of just plugging 
in a card full of RAM, you either need to look back to ISA or forward to 
CXL ;)

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
