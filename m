Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67C38C04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 09:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iQWUejHLDgi0e/grIGwgKmo9fsD+lSo5+eoidZK74WQ=; b=zHkUqc8oR2eMJw+B4lX2pduZEN
	oZqd5+dDP2GGLMuPEub5G9aGg4XmfBP4oJKFWTQFo5URTp+ycYRdZaoOSwppudvTJ8E0zEeDBmsGf
	IXLZ/rKKCrzVaveZ/DNH0O36k2hBEoEhzxgBvUTmcjoMr4oVJVau7kuVR5vI3udQLwQyJ3+cF5YBL
	9H5e6I2Z0hUsKeyA4XOVwt2asmFSwoSO39JPj1j9geet1uI2Fcxty8Vcp24PxvYdJ9BLX6gT9K5oP
	Vk8jYd91Tz400LCk9xIIoE3h4gNyVpDV9EzeO0+mZqFgDxnsh6DXCYu2f42S1qX3AuVv9r7W5NHI1
	eEFvYlQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4dcU-0000000Em4p-0nqY;
	Wed, 08 May 2024 09:29:50 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4dcQ-0000000Em3S-2MtN;
	Wed, 08 May 2024 09:29:48 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1715160582;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JL7Cqc7rpixgBgbCXhIQMAAO82vWRkxls15BxMKvRjg=;
	b=yI4LvrKFeze38qylAOEwDE+u0aDLwijFZ11pRQXLtPq+5cRr4L29GioAoB+XHJJDyJS4SF
	dYIhMJAXL01yhOISHYCff80gnsnbRlJjsKG6TCf4LS1ODA4AJ9t67oUGzH4ISIZDALxboo
	gdoTbP5qvSjdWBwukr/zNQnLi6bvSeISFQ6/PHSSCnZ08BywqcGtOG8PJtO84fGlMs1fSD
	snRkHQU1XjAAncDkgSsXaoQVWdgM9rBRrTVmCn+3xTLCgHk1394fEio19jL9iJEsXEUw01
	ts0CTGePsVsnx/F2vIjQY0+BetXaqSm0qvR9tqLxnXB4gwwNq+qMV6QRH7xSvg==
Date: Wed, 08 May 2024 11:29:41 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Kever Yang
 <kever.yang@rock-chips.com>
Subject: Re: [PATCH v4 6/6] arm64: dts: rockchip: Add OPP data for CPU cores
 on RK3588
In-Reply-To: <e220061e-0bb5-4fa4-9a91-aefd81e6636c@cherry.de>
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-6-271023ddfd40@gmail.com>
 <e220061e-0bb5-4fa4-9a91-aefd81e6636c@cherry.de>
Message-ID: <dd9c76519ee0eee177528488a4946056@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_022947_225725_0DE7C7D4 
X-CRM114-Status: GOOD (  24.95  )
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

Hello Quentin,

On 2024-05-08 11:12, Quentin Schulz wrote:
> On 5/6/24 11:36 AM, Alexey Charkov wrote:
>> By default the CPUs on RK3588 start up in a conservative performance
>> mode. Add frequency and voltage mappings to the device tree to enable
>> dynamic scaling via cpufreq.
>> 
>> OPP values are adapted from Radxa's downstream kernel for Rock 5B [1],
>> stripping them down to the minimum frequency and voltage combinations
>> as expected by the generic upstream cpufreq-dt driver, and also 
>> dropping
>> those OPPs that don't differ in voltage but only in frequency (keeping
>> the top frequency OPP in each case).
>> 
>> Note that this patch ignores voltage scaling for the CPU memory
>> interface which the downstream kernel does through a custom cpufreq
>> driver, and which is why the downstream version has two sets of 
>> voltage
>> values for each OPP (the second one being meant for the memory
>> interface supply regulator). This is done instead via regulator
>> coupling between CPU and memory interface supplies on affected boards.
> 
> I'm not sure this is everything we need though.
> 
> For the LITTLE cores cluster, all OPPs up to 1.416GHz are using the
> same opp-supported-hw, however the ones above, aren't.
> 
> 1.608GHz, 1.704GHz and 1.8GHz are all using different opp-supported-hw.
> 
> Similarly, for the big cores clusters, all OPPs up to 1.608GHz are
> using the same opp-supported-hw, but not the ones above.
> 
> 1.8GHz and 2.016GHz, 2.208GHz, 2.256GHz, 2.304GHz, 2.352GHz and 2.4GHz
> all have a different opp-supported-hw.
> 
> The values in that array are coming from cpu leakage (different for
> LITTLE, big0 and big1 clusters) and "specification serial number"
> (whatever that means), those are coming from the SoC OTP. In the
> downstream kernel from Rockchip, the former value is called "SoC
> Version" and the latter "Speed Grade".
> 
> I think this may have something to do with "binning" and I would see
> the ones above the "common" OPPs as "overclocking". Not all CPUs would
> support them and some may not run stable at some lower frequency than
> their stable max. Adding Kever from Rockchip in Cc to have some input
> on the need to support those.

Good point.  We should remove the OPPs for both clusters that aren't
supported by all RK3588(s) binnings, to be on the safe side.

I'll hopefully dive into supporting different Rockchip binnings rather
soon.  There's even more about that, and not just with the RK3588(s),
which I think I'll get all covered.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
