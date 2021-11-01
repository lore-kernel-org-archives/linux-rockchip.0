Return-Path: <SRS0=5X13=PU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2054CC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 21:59:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C98A560E98
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Nov 2021 21:59:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C98A560E98
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G5tsohjAU6ua/yh6PuAakAI3gmNxvGfP2xnbXt8clW4=; b=atek2hFiTAuYu+
	brVgdZA2qvgefTDDICiYllmZlvUkpt0TvlY195/X6BI9MX8UIWklKOt5jl1ZfljQWeMaEqr2jcd1x
	eVKllR0VpmqfMkcHONhGdlYUw971LPAfCbt6IO0VPNdxy+jyBTN3HepUYKW8o2Hf361tZXevS4hCG
	RoQKZRBOSuUvdL6FYE2klfgSIAgYC9UODPk6g0oaxFinJZzbzKY9IN5L/YZXDKtRGTvxOI4llZ0Da
	l1dDOSkd1N/Wf3df1w0fO4u7mlFRlzajghhx5Ko7xmI6D6WPOj8APzsJ7J882zGern/3Eo2qtv4l+
	ZF8ValMLlOcc75t/Rx/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhfL4-00HNNY-SQ; Mon, 01 Nov 2021 21:59:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhfKs-00HNLm-ER; Mon, 01 Nov 2021 21:59:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0171CD6E;
 Mon,  1 Nov 2021 14:59:21 -0700 (PDT)
Received: from [10.57.80.217] (unknown [10.57.80.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1FF463F5A1;
 Mon,  1 Nov 2021 14:59:18 -0700 (PDT)
Message-ID: <b6468523-a730-6a44-f4b9-3fd5b9ea2354@arm.com>
Date: Mon, 1 Nov 2021 21:59:14 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH] clk: composite: Also consider .determine_rate for rate +
 mux composites
Content-Language: en-GB
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: sboyd@kernel.org, heiko@sntech.de, knaerzche@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 "kernelci@groups.io" <kernelci@groups.io>,
 Collabora Kernel ML <kernel@collabora.com>, Chen-Yu Tsai <wens@csie.org>
References: <163425193558.1688384.15520943968787313145@swboyd.mtv.corp.google.com>
 <20211015120559.3515645-1-martin.blumenstingl@googlemail.com>
 <04a58d50-634b-fa20-95b4-eb6831f77e85@collabora.com>
 <CAFBinCAEt9_EfLYWZEzTBK6iN97+Wacho7pNd2LYDPX3+goMzg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CAFBinCAEt9_EfLYWZEzTBK6iN97+Wacho7pNd2LYDPX3+goMzg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_145922_613698_86CCEFA4 
X-CRM114-Status: GOOD (  32.61  )
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

On 2021-11-01 20:58, Martin Blumenstingl wrote:
> Hi Guillaume,
> 
> On Mon, Nov 1, 2021 at 9:19 PM Guillaume Tucker
> <guillaume.tucker@collabora.com> wrote:
>>
>> Hi Martin,
>>
>> Please see the bisection report below about a boot failure on
>> rk3328-rock64.
>>
>> Reports aren't automatically sent to the public while we're
>> trialing new bisection features on kernelci.org but this one
>> looks valid.
>>
>> Some more details can be found here:
>>
>>    https://linux.kernelci.org/test/case/id/617f11f5c157b666fb3358e6/
>>
>> Here's what appears to be the cause of the problem:
>>
>> [    0.033465] CPU: CPUs started in inconsistent modes
>> [    0.033557] Unexpected kernel BRK exception at EL1
>> [    0.034432] Internal error: BRK handler: f2000800 [#1] PREEMPT SMP

What's weird is that that's really just the same WARN that's also 
present in 'successful' logs, except for some reason it's behaving as if 
the break handler hasn't been registered, despite that having happened 
long before we got to smp_init(). At this point we're also still some 
way off getting as far as initcalls, so I'm not sure that the clock 
driver would be in the picture at all yet.

Is the bisection repeatable, or is this just random flakiness misleading 
things? I'd also note that you need pretty horrifically broken firmware 
to hit that warning in the first place, which might cast a bit of doubt 
over the trustworthiness of that board altogether.

Robin.

>> There doesn't appear to be any other platform in KernelCI showing
>> the same issue.
> That's a strange error for the changes from my patch.
> At first glance I don't see any relation to clk-composite code:
> - the call trace doesn't have any references to CCF or rockchip clock drivers
> - clk-rk3328.c uses drivers/clk/rockchip/clk-cpu.c to register the CPU
> clock which does not use clk-composite
> 
> Chen-Yu has tested this patch (plus [0]) on RK3399 and didn't observe
> any problems.
> So maybe this is a RK3328 specific issue?
> Anyways, I am interested in fixing this issue because reverting is
> becoming more and more complex (since I think we're at eight commits
> which would need to be reverted in total).
> 
>> Please let us know if you need help debugging the issue or if you
>> have a fix to try.
> Could you please try [0] which is the second patch in the series which
> finally made it upstream.
> This second patch is not in 5.15 because I believed that it's only
> something to make the code in clk-composite.c more future-proof. It's
> not a condition that I am aware of.
> 
> I don't have any Rockchip boards myself.
> So I am thankful for any help I can get.
> 
> 
> Best regards,
> Martin
> 
> 
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git/commit/?h=clk-next&id=6594988fd625ff0d9a8f90f1788e16185358a3e6
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
