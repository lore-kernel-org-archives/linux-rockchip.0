Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66677D68BDA
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Dec 2025 10:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0IUAlZOjThr3T8TS/WMY1M4JnyHq1Cp3x2q1+2BNeM=; b=i5CRJio/yYoQvg
	olsgRZBUbLAOQcdsWtpxt8O1SRG1M/z1j5eXYftNx+y7VmIvItQ73Zbjl8nTJTNJ8od9kilYiF3s6
	alfZ8bExr7q/udQBbNry/F0MwEcibY3iVbFcFEWfyiFNy2qJz9g/SlMy6V7YAWpmg4EcuIGq8jLiX
	HYhwFKEVfM9sldC8ijXDelam0oYV7LmiiAav7rw6WFq3hNHXe8mYK16DP31qSH+AJZmS5zBP1QVIf
	8poS8h9ZT9GgKfcSg/cXYKDuS4R9FMcGUUIkeS+mRhpGQ/6UAFNH7J6N4nMeWzfQlyQCm0woE/YZ/
	JXzq/PsJxi0LAtOczYpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWAzm-00000008CZS-2lVv;
	Thu, 18 Dec 2025 10:12:30 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWAzl-00000008CZM-3U55
	for linux-rockchip@bombadil.infradead.org;
	Thu, 18 Dec 2025 10:12:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=cFttlWF0jgG52QNDRCCrAUH/tOMpNN661+8S5v4EyIc=; b=ocVfmz9AGIaeIiqfBMe8QGL8IF
	fdCF7zrB/ULoBVkSLspw2aRhZJxuWViuH7yUPuGHQQX6R9tBpfWkGHeN8uaK5PrQkvoNwNOZKJVrs
	0VKxXsZAd7lGMOyYakJr+s5hRYWiklMm6WAT81qm2YNwzDpYjr5A54dwIhZuPXPOMKp5Q7XYXMrHe
	LSB3aRJ0cuEVAzJdBpo15FLjGynOBxpDrps5qKp36AICSfXnUQNplTRnkWqFZ83vgTkgZMNRRtSj+
	aQbpNUtBL8RCPMEghDvfQEJS+ptJMx5DS0jL1vXRiYDhomOuyZVob7H+SDxnpAmPqeMRPZwmHHtge
	RN9p4vPg==;
Received: from 77-249-17-252.cable.dynamic.v4.ziggo.nl ([77.249.17.252] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWAzh-00000005yLv-0o7c;
	Thu, 18 Dec 2025 10:12:25 +0000
Received: by noisy.programming.kicks-ass.net (Postfix, from userid 1000)
	id 2E388300578; Thu, 18 Dec 2025 11:12:24 +0100 (CET)
Date: Thu, 18 Dec 2025 11:12:24 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: mingo@kernel.org, vincent.guittot@linaro.org,
	linux-kernel@vger.kernel.org, juri.lelli@redhat.com,
	dietmar.eggemann@arm.com, rostedt@goodmis.org, bsegall@google.com,
	mgorman@suse.de, vschneid@redhat.com, tj@kernel.org,
	void@manifault.com, arighi@nvidia.com, changwoo@igalia.com,
	sched-ext@lists.linux.dev, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 4/5] sched: Add assertions to QUEUE_CLASS
Message-ID: <20251218101224.GN3707891@noisy.programming.kicks-ass.net>
References: <20251127153943.696191429@infradead.org>
 <20251127154725.771691954@infradead.org>
 <CGME20251218100916eucas1p2258bd5447be988f61f3358963de1cebf@eucas1p2.samsung.com>
 <a6150003-7f87-4f24-9156-bec10dfb70ce@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6150003-7f87-4f24-9156-bec10dfb70ce@samsung.com>
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

On Thu, Dec 18, 2025 at 11:09:13AM +0100, Marek Szyprowski wrote:
> On 27.11.2025 16:39, Peter Zijlstra wrote:
> > Add some checks to the sched_change pattern to validate assumptions
> > around changing classes.
> >
> > Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> 
> 
> This patch landed recently in linux-next as commit 47efe2ddccb1 
> ("sched/core: Add assertions to QUEUE_CLASS"). In my tests it turned out 
> that it triggers the following warning during simple 'rtcwake' test on 
> Hardkernel's Odroid-M1 board 
> (arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts):
> 
> root@target:~# time rtcwake -s5 -mon
> rtcwake: wakeup using /dev/rtc0 at Thu Dec 18 10:01:28 2025
> ------------[ cut here ]------------
> WARNING: kernel/sched/core.c:10837 at sched_change_end+0x160/0x168, 

https://lkml.kernel.org/r/176596899373.510.17191516261088315233.tip-bot2@tip-bot2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
