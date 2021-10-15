Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D6FBC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 21:32:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D00F460EE2
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 21:32:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D00F460EE2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzWSFh/usy44UkjAT1aKxbaJ+oFYAlvHbaNcBvw3YIM=; b=etus5KzjPYQ6zJ
	EZil/qGioGjL4k2FOxEEmyW0E9iNpGzJBcEHy0LYOhUHAaqsZ7NBY+Y0BdP2aBqG5G0LIZIyHrVU3
	d5KI4CfbKs0B7WWwnb5ZaSCx3o00BtdzXZJjRju6+8zvgp0P78uQwMxS8EG3/XUe1BLgKvJJWsWCw
	Bj4pGG3YU8/e9ZUx0oMlge7hVOTYnDbwuZRMOOmrsFfbbL6ycs6ptRvvruqhNVlnfs66orn8E8kws
	cslzAoYhUi/Uy3miB0ajWYFRxSW7kj07RUMiej0YhrywhyvScVMhYwj2Y7eoEzdrzQspLMiWFcmg1
	xN4rHheRa/Vm7KJ4pq2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbUoG-008p8d-Sh; Fri, 15 Oct 2021 21:32:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbUo4-008p6e-U5; Fri, 15 Oct 2021 21:32:02 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7644360F6F;
 Fri, 15 Oct 2021 21:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634333520;
 bh=QNUJyl7CqYF0RbqP23fSOKnChSyYkX1cJLYbSZI3y6c=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=nZAIRxyIefzTQjuUcjAkQS6tBZGi2E/PNKa9rWuzxuoJnPleMLaww7w9jfjjNCK/D
 zaRcmRQ+ui7QHF5dmiLXHIOdAO5r1LzJ+yxpm4PBqHqY65mNCqcGjbpWYIQ7pVHdz+
 NSRpMQ9r/He8bVWLknOglcDKVwI9FzTPIXUhSpTbijf+hWy+Y/GX8oDqID/4kSSPxJ
 9wQayXlqa7eV3WekC1JYV68kFLt8F1oLDkmQDjz4TdBFFLe3V5vMjDr9KnbR8Ay+u7
 Y+tFDnMHQHAdIRKl4Rs5Cm2eUumJApiS9//z5zfVxFHHcoCuBqKzlEnK1ZsoLHVfLG
 y9fmX2seZ78JA==
MIME-Version: 1.0
In-Reply-To: <67995168-e0fc-0916-7c34-3efedf4bad00@gmail.com>
References: <20210702225145.2643303-1-martin.blumenstingl@googlemail.com>
 <20210702225145.2643303-2-martin.blumenstingl@googlemail.com>
 <4eb964ac-4fff-b59d-2660-2f84d8af5901@gmail.com>
 <CAFBinCAVtd8gmcuvGU79-85CqhSU8a3mBCa_jweeZBd59u+amQ@mail.gmail.com>
 <CAFBinCAT-FxcHpt=NCt4g-OfzEUhvxh8TNRcY2hb5kdxna0Uyw@mail.gmail.com>
 <67995168-e0fc-0916-7c34-3efedf4bad00@gmail.com>
Subject: Re: [PATCH v1 1/6] clk: divider: Implement and wire up
 .determine_rate by default
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko =?utf-8?q?St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
To: Alex Bee <knaerzche@gmail.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 15 Oct 2021 14:31:59 -0700
Message-ID: <163433351924.1688384.17959086273596597053@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_143201_030260_96C6A233 
X-CRM114-Status: GOOD (  30.42  )
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

Quoting Alex Bee (2021-10-15 12:14:36)
> 
> Am 14.10.21 um 23:34 schrieb Martin Blumenstingl:
> > On Thu, Oct 14, 2021 at 2:11 PM Martin Blumenstingl
> > <martin.blumenstingl@googlemail.com> wrote:
> > [...]
> >>> Reverting this commit makes it work again: Unless there is a quick and
> >>> obvious fix for that, I guess this should be done for 5.15 - even if the
> >>> real issue is somewhere else.
> >> Reverting this patch is fine from the Amlogic SoC point of view.
> >> The main goal was to clean up / improve the CCF code.
> >> Nothing (that I am aware of) is going to break in Amlogic land if we
> >> revert this.
> > Unfortunately only now I realized that reverting this patch would also
> > require reverting the other five patches in this series (since they
> > depend on this one).
> Indeed, that whole series would need have to reverted, which is clear 
> (to me) when looking at the patches.
> > For this reason I propose changing the order of the checks in
> > clk-composite.c - see the attached patch (which I can send as a proper
> > one once agreed that this is the way to go forward)
> 
> Yes, your patch papers over the actual issue (no best parent-selection 
> in case determine_rate is used) and fixes it for now - as expected.
> 
> But it is not a long-term solution, as we will be at the same point, as 
> soon as round_rate gets removed from clk-divider. For me, who is 
> semi-knowledged in clock-framework, it was relatively hard to figure out 
> what was going on. "I'll do this later" has often been heard here.
> 
> Though, I don't fully follow why moving the priority of determine_rate 
> lower would have been necessary anyways: from what I understand 
> determine_rate is expected to be the future-replacement of round_rate 
> everywhere and should be preferred.

This is the only place I can see where we would have to keep round_rate
around, to mesh together rate rounding with parent selection. We can
probably stop using round_rate in the framework and only use it in the
composite code. It's not a big deal but it's sort of annoying that we
won't be able to fully remove round_rate from the clk_ops without
resolving this. Long term it may make sense to get rid of the composite
clk code entirely. It's pretty confusing code to read and encourages use
of the "basic clk types" which I'd like to see be used via direct
function calls instead of through clk_ops structures.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
