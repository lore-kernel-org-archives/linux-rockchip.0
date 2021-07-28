Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBF1EC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 08:48:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 94D6A60462
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 08:48:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 94D6A60462
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IX0qc4S5Ve+KGvV2fuLuu1V9WHrCOZWL1xxU6CCudaM=; b=liqwxY3FPNBN8S7ZpJLWzlWZAy
	nS8V8zPf1RH5H1K2qGi7HvEG3RRPV9j5mzMcfkOvZIo8/baAVFOxXu0Eu81ILrqC1C31oJp0w1ZYK
	x4z7JcYuNS/5sv+ki6+UrpzgohNs5PhdnN1DVbVekPfe6wOwRGNeHTXAdb8aCuXqQRUHmpfAbilFb
	vEOGateL/BhEkQAi1dVHunw8286dITUQsm1cwYYydF9KQxlj/N6dhhRBF5Cr0twkovzndj72mQbhC
	85Cbgi5IDc/ubSVku3zPW+DhuRB58GwhKO4+UkcrO//N7rOihKrBHfcQa6ficzKHHI9kc2+yn91BD
	xKXytCZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8fEo-0001Or-BP; Wed, 28 Jul 2021 08:48:26 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8fEV-0001I1-B8; Wed, 28 Jul 2021 08:48:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 38E131F4328D
Subject: Re: renesas/master bisection:
 baseline-nfs.bootrr.rockchip-usb2phy0-probed on rk3399-gru-kevin
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: kernelci-results@groups.io, Johan Jonker <jbx6244@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Maciej Matuszczyk
 <maccraft123mc@gmail.com>, Marc Zyngier <maz@kernel.org>,
 Jacob Chen <jacob2.chen@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Cameron Nemo <cnemo@tutanota.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>,
 Helen Koike <helen.koike@collabora.com>, Robin Murphy
 <robin.murphy@arm.com>, Shunqian Zheng <zhengsq@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Collabora Kernel ML <kernel@collabora.com>
References: <61002766.1c69fb81.8f53.9f6a@mx.google.com>
 <c52f6cfb-1316-dd6a-46fa-17abfcc4bf18@collabora.com>
 <CAMuHMdUi_=xnvYFgiWXxSyrfoMn0JJCcH+TXFUh+1JUf=4u87A@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <2fc2b898-434c-3288-2052-70b1e1427b39@collabora.com>
Date: Wed, 28 Jul 2021 09:48:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdUi_=xnvYFgiWXxSyrfoMn0JJCcH+TXFUh+1JUf=4u87A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_014807_568430_C6535708 
X-CRM114-Status: GOOD (  30.24  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 28/07/2021 09:17, Geert Uytterhoeven wrote:
> Hi Guillaume et al,
> 
> On Wed, Jul 28, 2021 at 8:05 AM Guillaume Tucker
> <guillaume.tucker@collabora.com> wrote:
>> Please see the bisection report below about usb2phy failing to
>> probe on rk3399-gru-kevin.
>>
>> Reports aren't automatically sent to the public while we're
>> trialing new bisection features on kernelci.org but this one
>> looks valid.
> 
> Thanks for your report!
> 
>> The bisection was run in the Renesas tree but the same regression
>> is present in mainline for both usb2phy0 and usb2phy1 devices:
> 
> Exactly, the faulty commit is part of v5.14-rc1.
> 
>>> Breaking commit found:
>>>
>>> -------------------------------------------------------------------------------
>>> commit 8c3d64251ac5c5a3d10364f6b07d3603ac1e7b4a
>>> Author: Johan Jonker <jbx6244@gmail.com>
>>> Date:   Tue Jun 1 18:47:59 2021 +0200
>>>
>>>     arm64: dts: rockchip: rename nodename for phy-rockchip-inno-usb2
> 
> P.S. KernelCI is sending lots of reports to linux-reneas-soc[1] for
>      (a) issues on non-Renesas platforms[2], and

One thing to distinguish here is that changes in a tree like the
Renesas one might actually break other platforms, even if it
seems unlikely.  But the improvement explained below addresses
this issue.

>      (b) issues not originating in the renesas-devel tree, like this one.

That is just because I found the bisection report from the
Renesas tree before getting one from mainline.  As we're manually
triaging reports, I mentioned it in my email.  And you're right,
we would need to take this into account before having all the
bisection reports sent automatically.

> Suggestions for improvement:
>   1. If a regression is detected in an upstream tree, there is no
>      need to report it for downstream trees, unless it affects
>      the downstream tree, or originated there.

That's right, we're working on an improvement to be able to
detect "2nd order" regressions, that is to say new failures in a
branch relatively to new failures in an upstream branch.  That
would be typically mainline or stable, but sometimes a subsystem
specific one.

>   2. If a regression is detected for a platform, there is no need
>      to report it for different platform trees, unless it originated
>      there.
> 
> BTW, I do look at the reports for Renesas platforms, but usually I
> don't see what's wrong, and the same platform works fine locally.

Until this has been improved, maybe we can just stop sending
email reports to linux-reneas-soc if they're mostly noise.  The
bisections will still run and reports like this one are sent to
the people and lists who are related to the changes in the patch
rather than the git tree so it's always relevant to them.

> Note that yesterday and today I get "Error while loading data from the
> server (error code: 500). Please contact the website administrator".

Yes that's because the Mongo DB service keeps crashing.  It's a
sysadmin issue that should hopefully get resolved soon, sorry for
the inconvenience.


Thanks for your feedback.

Best wishes,
Guillaume

> [1] https://lore.kernel.org/linux-renesas-soc/?q=kernelci.org
> [2] https://lore.kernel.org/linux-renesas-soc/60ff86ff.1c69fb81.dfe6f.6a7c@mx.google.com/


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
