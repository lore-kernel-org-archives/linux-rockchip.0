Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6D52C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 13:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwauD2DL2N1hFbjD9GVH6dbZT7DtqNZKtnoFhk3eMyQ=; b=mo5GcnGCNuG6we
	M6j6Oqdo7zmKrlnOA/mgGC9y7JQZW45IC4E0Vt2i7io7B+jTf8Vfbryo3PtbX1AMWMU5ZNP5prFj8
	Bl2p89yauY2Dh6P5RKKeGRNBkX/wN3AiZ4h6EvZcftuh978q+IyT3Q6OjiHPnQuWuw5sFPsAEA08Q
	NFMCTihDhDkx6dp8Dq4RkJJi6CBT0g+nfqsloHs435kJyEP8T8dJZgWE0GQGtBRQ0v3KDMsIQ+DRM
	CrBKk/5Y4prRr1N6Kpjx8X5KFV/LEkAVwISKOhVZ0cr2Iyp37G2QlGj19W0pxmXAeuUQOStlu0+nd
	8u/7b53KggvYZrT9o0mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o174I-009rRL-S5; Tue, 14 Jun 2022 13:58:54 +0000
Received: from smtp-out2.suse.de ([195.135.220.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1746-009rM2-54; Tue, 14 Jun 2022 13:58:44 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 2C44B1F984;
	Tue, 14 Jun 2022 13:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1655215118; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CeiLcPaUWpFLyUL+9AfxzQ6cCLGBau32H4tijDd9jqk=;
	b=nTBARfnLs4xqal0/JTkbIDZlKIg8p/c6pqNEIzOBzKMJh6ZxTO8uc9V3JB2zxJ+mzBkOIl
	len1iN+co9yZfNxXip8sirINpP0bWdJQkjl7/Bd2Dj8O/TXETPsPOkqUwx4VfWnZLSYtjv
	7NfnJknbXbvnm0DSQhNNYEqohtnuS34=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1655215118;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CeiLcPaUWpFLyUL+9AfxzQ6cCLGBau32H4tijDd9jqk=;
	b=Gp7XaVEqQ5AwGE4SIN4e1AWnakNRl3vK1lqe/keGYSlZ9PP9Eb/siFJSVmuirbU1d/8HMs
	Md9NdyeL5Dx/AKAA==
Received: from quack3.suse.cz (unknown [10.163.28.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id C687D2C143;
	Tue, 14 Jun 2022 13:58:37 +0000 (UTC)
Received: by quack3.suse.cz (Postfix, from userid 1000)
	id 835F9A062E; Tue, 14 Jun 2022 15:58:37 +0200 (CEST)
Date: Tue, 14 Jun 2022 15:58:37 +0200
From: Jan Kara <jack@suse.cz>
To: Petr Mladek <pmladek@suse.com>
Cc: Alexandru Elisei <alexandru.elisei@arm.com>, jack@suse.cz,
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
Message-ID: <20220614135837.3doyrnekzja6grzc@quack3.lan>
References: <Yqdry+IghSWnJ6pe@monolith.localdoman>
 <Yqh9xIwBVcabpSLe@alley>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yqh9xIwBVcabpSLe@alley>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_065842_381260_93B16889 
X-CRM114-Status: GOOD (  28.65  )
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

On Tue 14-06-22 14:23:32, Petr Mladek wrote:
> On Mon 2022-06-13 17:54:35, Alexandru Elisei wrote:

<snip>

> > Config can be found at [1] (expires after 6 months). I've also built the
> > kernel with gcc 10.3.1 [2] (aarch64-none-linux-gnu), same issue.
> > 
> > I've bisected the build failure to commit 10e14073107d ("writeback: Fix
> > inode->i_io_list not be protected by inode->i_lock error"); I've confirmed
> > that that commit is responsible by successfully booting the board with a
> > kernel built from v5.19-rc2 + the above commit reverted.
> 
> It is strange. I can't see how consoles are related to filesystem
> writeback.
> 
> Anyway, the commit 10e14073107d ("writeback: Fix inode->i_io_list not
> be protected by inode->i_lock error") modifies some locking and
> might be source of possible deadlocks.

Yes, I've got other reports from ARM people that this commit causes issues
for them (kernel oops or so) so the locking changes are likely at fault...

> I am not familiar with the fs code. But I noticed the following.
> The patch adds:
> 
> +               if (!was_dirty) {
> +                       wb = locked_inode_to_wb_and_lock_list(inode);
> +                       spin_lock(&inode->i_lock);
> 
> And locked_inode_to_wb_and_lock_list() is defined this way:
> 
> /**
>  * locked_inode_to_wb_and_lock_list - determine a locked inode's wb and lock it
>  * @inode: inode of interest with i_lock held
>  *
>  * Returns @inode's wb with its list_lock held.  @inode->i_lock must be
>  * held on entry and is released on return.  The returned wb is guaranteed
>  * to stay @inode's associated wb until its list_lock is released.
>  */
> static struct bdi_writeback *
> locked_inode_to_wb_and_lock_list(struct inode *inode)
> 	__releases(&inode->i_lock)
> 	__acquires(&wb->list_lock)
> {
> 	while (true) {
> 		struct bdi_writeback *wb = inode_to_wb(inode);
> 
> 		/*
> 		 * inode_to_wb() association is protected by both
> 		 * @inode->i_lock and @wb->list_lock but list_lock nests
> 		 * outside i_lock.  Drop i_lock and verify that the
> 		 * association hasn't changed after acquiring list_lock.
> 		 */
> 		wb_get(wb);
> 		spin_unlock(&inode->i_lock);
> 
> It expects that inode->i_lock is taken before. But the problematic
> commit takes it later. It might mess the lock and cause a deadlock.

No. AFAICS inode->i_lock is held on entry to
locked_inode_to_wb_and_lock_list(). The function releases it so we have to
grab it again. The locking is ugly here but correct in this regard.

It rather likely has to do something with reordering the checks and running
locked_inode_to_wb_and_lock_list() on inodes for which we previously didn't
do it but I have to yet fully understand why things crash...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
