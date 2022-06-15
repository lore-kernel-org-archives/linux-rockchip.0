Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2C2EC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 21:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QolPMHoYiHxuiy0wwu96i1DUlg2JKfqAWGMm4Bly25A=; b=LDfdYRGL9SFMVb
	AAE2++XM7kfvJ8rGx2BY97VnjpRL8eXGYIZv2RCDQtq/Qg8ICjR/1RUAa686GmuJAn4i80k8GMOdW
	GHO+JBmUTQqpP5Y6iHkSe+wOowxMUqFVhVphF/ZlzDY07+uQ/FCt1i4RXwSH9Hc1PMWuLSu2xtkbS
	8MKnBzy9jQGUvsaGM4f2nkHju3Pk55GtkOzmTI9aK6wMc+M/m3+yKb0/2NxZRt2rgDkCbor4loV4S
	0pBRQwT4cNe6eJdknLOuCgt+zek7MLq+ISkt2nvM/7znR18s+211MRadLflikqV/fl5F5nQgbnvPn
	Hqha+UFYKIaz0poMvbsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1aT9-00GRM8-1N; Wed, 15 Jun 2022 21:22:31 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1aSx-00GRII-73; Wed, 15 Jun 2022 21:22:20 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 8F44F21C6E;
	Wed, 15 Jun 2022 21:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1655328134; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ju/eMyqeUm0258jtPSiVQvMQ8S4DYh43JQypxX85LS0=;
	b=tvVjQT8j7Nmk1o3lDboMNvBg/d58f0nHcA05n6KlqtgBjXBOcsJG00KwcFTTsR7kIDmG5p
	A1qF9bTlDtwhVxNCBhDObW322UmFGab0DmUbcgys7P4Via4ueoW9d86kJy4tl93aC7hIqB
	9JhNYUchoKWpTU3j6aWkKYqyK5MvsAI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1655328134;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ju/eMyqeUm0258jtPSiVQvMQ8S4DYh43JQypxX85LS0=;
	b=rCczZZYy/8WlrQcEdPQqcld6RCBVFh79F6WeQJj7Qw8LSKrchYNFdkTaWHZm7CHQm5uJR4
	MDy+K223NdiyghCg==
Received: from quack3.suse.cz (unknown [10.163.28.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id 77AF82C141;
	Wed, 15 Jun 2022 21:22:12 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
	id 9E410A062E; Wed, 15 Jun 2022 23:22:06 +0200 (CEST)
Date: Wed, 15 Jun 2022 23:22:06 +0200
From: Jan Kara <jack@suse.cz>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: Jan Kara <jack@suse.cz>, Petr Mladek <pmladek@suse.com>,
	sunjunchao2870@gmail.com, viro@zeniv.linux.org.uk,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	senozhatsky@chromium.org, rostedt@goodmis.org,
	john.ogness@linutronix.de, keescook@chromium.org, anton@enomsg.org,
	ccross@android.com, tony.luck@intel.com, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, maco@android.com, hch@lst.de,
	gregkh@linuxfoundation.org, jirislaby@kernel.org
Subject: Re: [BUG] rockpro64 board hangs in console_init() after commit
 10e14073107d
Message-ID: <20220615212206.ykqvui4tthpfme2u@quack3.lan>
References: <Yqdry+IghSWnJ6pe@monolith.localdoman>
 <Yqh9xIwBVcabpSLe@alley>
 <YqiJH1phG/LWu9bs@monolith.localdoman>
 <YqiidNPMUZQPRIvy@alley>
 <YqnVWCYx0L2RlckB@monolith.localdoman>
 <20220615163949.z22puioui322ktla@quack3.lan>
 <YqoNtvyZA2s4cSgW@monolith.localdoman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YqoNtvyZA2s4cSgW@monolith.localdoman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_142219_464700_C7CBE973 
X-CRM114-Status: GOOD (  28.37  )
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

On Wed 15-06-22 17:49:58, Alexandru Elisei wrote:
> Hi,
> 
> On Wed, Jun 15, 2022 at 06:39:49PM +0200, Jan Kara wrote:
> > Hi Alexandru!
> > 
> > On Wed 15-06-22 13:50:24, Alexandru Elisei wrote:
> > > On Tue, Jun 14, 2022 at 05:00:04PM +0200, Petr Mladek wrote:
> > > > > > > I've booted a kernel compiled with CONFIG_PROVE_LOCKING=y, as the offending
> > > > > > > commit fiddles with locks, but no splat was produced that would explain the
> > > > > > > hang. I've also tried to boot a v5,19-rc2 kernel on my odroid-c4, the board
> > > > > > > is booting just fine, so I'm guessing it only affects of subset of arm64
> > > > > > > boards.
> > > > > > 
> > > > > > You might try to switch the order of console_init() and lockdep_init()
> > > > > > in start_kernel() in init/main.c
> > > > > 
> > > > > Did so above.
> > > > 
> > > > Unfortunately, it did not print anything :-(
> > > 
> > > With this patch [1] I was able to succefully boot the board. So I guess
> > > problem should be fixed.
> > > 
> > > [1] https://lore.kernel.org/all/20220614124618.2830569-1-suzuki.poulose@arm.com/
> > 
> > Can you please try booting with the patch I've posted at [2]? After some
> > discussion with Linus that would be a preferable fix... Thanks!
> > 
> > [2] https://lore.kernel.org/all/20220615133845.o2lzfe5s4dzdfvtg@quack3.lan
> 
> The patch works for me, thank you!

Thanks for testing!
 
> Do you also need me to reply to the discussion?

No, I don't need that.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
