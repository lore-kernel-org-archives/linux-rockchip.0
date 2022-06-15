Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A74FC43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 16:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cEWHwvmDqMTfK3K9snealrdhxlZmxB4CCpZ7FkxfpMA=; b=s/+tRs2u6DqdfN
	0eVx4Nr02yAAM5EzBTQpeoo5kVnLa0JwshxW0KGRR7nLAGInP8b+Hn+amk7PayXLv4WOEYvWjSsuD
	Rg2cLaxE2uT0cXlO1enV1zjK9plVjHB6TOwe5cL3qiDBCE9cIDBWBOjCbX5r3jm6E9c/nokwdPVL7
	Z9XTXdQDHOdUZihSx+iK8C2aoNuMlqx9zBMkUKyPQLzarE3dH9BmGYlQ/3aKeOu3KPlHFM4mNRcqi
	+cZWz3qQO3rNqj5Bw984089QIh8W8kDGNEmZqi9AuhtVUcZXVCi85Wc9J28Q9KGNG3b7QumuB92/X
	Kixsb6dPwLagim9mey7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1WDJ-00FUm8-PU; Wed, 15 Jun 2022 16:49:53 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1WD7-00FUiY-B2; Wed, 15 Jun 2022 16:49:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 691F2153B;
	Wed, 15 Jun 2022 09:49:39 -0700 (PDT)
Received: from monolith.localdoman (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE5EA3F7F5;
	Wed, 15 Jun 2022 09:49:35 -0700 (PDT)
Date: Wed, 15 Jun 2022 17:49:58 +0100
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: Jan Kara <jack@suse.cz>
Cc: Petr Mladek <pmladek@suse.com>, sunjunchao2870@gmail.com,
	viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org, senozhatsky@chromium.org,
	rostedt@goodmis.org, john.ogness@linutronix.de,
	keescook@chromium.org, anton@enomsg.org, ccross@android.com,
	tony.luck@intel.com, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, maco@android.com, hch@lst.de,
	gregkh@linuxfoundation.org, jirislaby@kernel.org
Subject: Re: [BUG] rockpro64 board hangs in console_init() after commit
 10e14073107d
Message-ID: <YqoNtvyZA2s4cSgW@monolith.localdoman>
References: <Yqdry+IghSWnJ6pe@monolith.localdoman>
 <Yqh9xIwBVcabpSLe@alley>
 <YqiJH1phG/LWu9bs@monolith.localdoman>
 <YqiidNPMUZQPRIvy@alley>
 <YqnVWCYx0L2RlckB@monolith.localdoman>
 <20220615163949.z22puioui322ktla@quack3.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220615163949.z22puioui322ktla@quack3.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_094941_475538_B44B9DE1 
X-CRM114-Status: GOOD (  23.71  )
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

Hi,

On Wed, Jun 15, 2022 at 06:39:49PM +0200, Jan Kara wrote:
> Hi Alexandru!
> 
> On Wed 15-06-22 13:50:24, Alexandru Elisei wrote:
> > On Tue, Jun 14, 2022 at 05:00:04PM +0200, Petr Mladek wrote:
> > > > > > I've booted a kernel compiled with CONFIG_PROVE_LOCKING=y, as the offending
> > > > > > commit fiddles with locks, but no splat was produced that would explain the
> > > > > > hang. I've also tried to boot a v5,19-rc2 kernel on my odroid-c4, the board
> > > > > > is booting just fine, so I'm guessing it only affects of subset of arm64
> > > > > > boards.
> > > > > 
> > > > > You might try to switch the order of console_init() and lockdep_init()
> > > > > in start_kernel() in init/main.c
> > > > 
> > > > Did so above.
> > > 
> > > Unfortunately, it did not print anything :-(
> > 
> > With this patch [1] I was able to succefully boot the board. So I guess
> > problem should be fixed.
> > 
> > [1] https://lore.kernel.org/all/20220614124618.2830569-1-suzuki.poulose@arm.com/
> 
> Can you please try booting with the patch I've posted at [2]? After some
> discussion with Linus that would be a preferable fix... Thanks!
> 
> [2] https://lore.kernel.org/all/20220615133845.o2lzfe5s4dzdfvtg@quack3.lan

The patch works for me, thank you!

Do you also need me to reply to the discussion?

Alex

> 
> 								Honza
> 
> -- 
> Jan Kara <jack@suse.com>
> SUSE Labs, CR

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
