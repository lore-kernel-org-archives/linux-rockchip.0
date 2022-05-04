Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BD1EC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 13:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSFCU+yM2EfW/hODaHLi+YaR8b5iJt0zUl6kalVDFWk=; b=WwtvKMYvyT2Xmh
	NyvftZX0FQh3y+zheipj8DkdrhJ6EIJlxIpi/EYbB54JtrDmuOOJj4K02dVJ918/9lfnWr4TsDcu0
	2aq8rInIwEcy0pY8wS0gfi19Bq5OkCxk898EiAoBpsAKfZFGv6LhqXl6wxVxMG3q3NkS16uLkgvQR
	RF0F6HAkkcsE7WD0kX7WesGqAR9noI9YAZTKgv689xkCddyn29RUncHW1RnTd/Vcx1vZnQW44NtkT
	z0yPyzOlbe/UWZvKOYQcfBzAZesM7frrvOHvS/wsEmaAi0zFwQqiavFZOr+GLG53Mvz3WfIDb8AxI
	Ckd2gGiK+BOZnudHIZnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmEx6-00B2hl-FD; Wed, 04 May 2022 13:22:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmEwh-00B2Uh-Sa; Wed, 04 May 2022 13:21:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 141F21042;
 Wed,  4 May 2022 06:21:34 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5FA33FA49;
 Wed,  4 May 2022 06:21:32 -0700 (PDT)
Date: Wed, 4 May 2022 14:21:30 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Cristian Marussi <cristian.marussi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>,
 linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [BUG] New arm scmi check in linux-next causing rk3568 not to
 boot due to firmware bug
Message-ID: <20220504132130.wmmmge6qjc675jw6@bogus>
References: <1698297.NAKyZzlH2u@archbook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1698297.NAKyZzlH2u@archbook>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_062136_043712_B111C4FA 
X-CRM114-Status: GOOD (  27.28  )
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

+ Cristian

Hi Nicolas,

Thanks for the formal report.

On Wed, May 04, 2022 at 02:49:07PM +0200, Nicolas Frattaroli wrote:
> Good day,
> 
> a user on the #linux-rockchip channel on the Libera.chat IRC network
> reported that their RK3568 was no longer getting a CPU and GPU clock
> from scmi and consequently not booting when using linux-next. This
> was bisected down to the following commit:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/firmware/arm_scmi/base.c?h=next-20220503&id=3b0041f6e10e5bdbb646d98172be43e88734ed62
> 
> The error message in the log is as follows:
> 
> arm-scmi firmware:scmi: Malformed reply - real_sz:8  calc_sz:4, t->rx.len is 12, sizeof(u32) is 4, loop_num_ret is 3
> 
> The rockchip firmware (bl31) being used was v1.32, from here:
> 
> https://github.com/JeffyCN/rockchip_mirrors/blob/rkbin/bin/rk35/rk3568_bl31_v1.32.elf
>

So this platform is not supported in upstream TF-A like its predecessors ?

> This seems like a non-fatal firmware bug, for which a kernel workaround is
> certainly possible, but it would be good if rockchip could fix this in their
> firmware.
>

Indeed, we added this check finding issue in one of our tests. Luckily
it helped to unearth the same issue on this platform, but due to the
nature of its f/w release, it is bit unfortunate that it can't be fixed
easily and quickly. But I really wish this gets fixed in the firmware.
Are there any other f/w bugs reported so far ? If so how are they fixed
as I don't expect all such bugs can be worked around in the kernel though
this might be. I would like to hear details there if possible.

> The user going by "amazingfate" reported that commenting out the
>   ret = -EPROTO; break;
> fixes the issue for them.
>

Sure, or we could relax the check as calc_sz <= real_sz or something so
that the reverse is still caught and handled as OS might read junk data in
the later case.

> I'm writing here to get the discussion started on how we can resolve this
> before the Linux 5.19 release.
>

Agreed, I just sent by pull request for this literally few hours ago.

> Sudeep Holla has already told me they'll gladly add a workaround before
> the 5.19 release, but would rather see this fixed in the vendor firmware
> first. Would rockchip be able and willing to fix it and publish a new
> bl31 for rk3568?
>

Indeed and as mentioned above details on how other such f/w bugs are dealt
in general esp that the firmware is blob release and one can't fix it easily.
Do we have a bugzilla kind of setup to report and get the bugs fixed ?

-- 
Regards,
Sudeep

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
