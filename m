Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A9C5C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 19:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QL5JMik5/ra0GQ/plKKBFe0WpHWATjhNAUdkNpH28bY=; b=qnNIfZ9gDqfYtw
	sFi/bK0H5LO3lTE2U1leOrLkFqaSpjMNvkoKAYCyrYCgeQoo/IsZMZvougp/F1qbm0YmaS5trD1C8
	zwoWeTPhGjVZTTMlIWRO/HuWKO7npL62O31GCY/m2q2QVF/BFFUMtvYRylquMBFxkkA3oqkRCW+9o
	pnOE/JZltzTOeHh/U2VQ6DQUMxwym+vTQuilXYpUEjXwfihr5j3x4EiH62kYy/l1VGicwzzbzIQoT
	HVB9nY4NjiRwvaiHWEMmHIn2wK3cv/BNWpOOkcxDW8xfKInslk1ugtL6pkRIKkFu/0yUUOiN5LDdl
	O311TVhd6FVrcY4Y7k4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1YZJ-00G3tO-Vq; Wed, 15 Jun 2022 19:20:46 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1YZG-00G3rw-Ko
	for linux-rockchip@lists.infradead.org; Wed, 15 Jun 2022 19:20:44 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id DDCAE21AB8;
	Wed, 15 Jun 2022 19:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1655320837; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5XqRKdwqzkoEs3gZYQHX7eS05tMGf3VU2LSgLCmE/jM=;
	b=F1AJkr9skRupqowd/XDIH5I4YmXy8U7D6FufHjWhAoLbDgWLr/RXc4WLwFqwd7PKg71aua
	I7bHl+3jIatG0SzBdlSop+fvcFrjvPKm9ZHyBHsIAWPSwA5Ho78OKA2F85KGwYtd2u4WQk
	VL8RQqHzgKfy+3crzWXzVTKSiVE1daQ=
Received: from suse.cz (unknown [10.100.201.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id 511AA2C141;
	Wed, 15 Jun 2022 19:20:36 +0000 (UTC)
Date: Wed, 15 Jun 2022 21:20:33 +0200
From: Petr Mladek <pmladek@suse.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: John Ogness <john.ogness@linutronix.de>,
	Sergey Senozhatsky <senozhatsky@chromium.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	"Paul E . McKenney" <paulmck@kernel.org>,
	Frederic Weisbecker <frederic@kernel.org>,
	Peter Geis <pgwipeout@gmail.com>, zhouzhouyi@gmail.com,
	Davidlohr Bueso <dave@stgolabs.net>,
	Josh Triplett <josh@joshtriplett.org>, rcu <rcu@vger.kernel.org>,
	linux-rockchip@lists.infradead.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] printk: Block console kthreads when direct printing
 will be required
Message-ID: <YqoxAUwGx0AtxDXd@alley>
References: <20220615162805.27962-1-pmladek@suse.com>
 <20220615162805.27962-2-pmladek@suse.com>
 <CAHk-=wgs38ZrfPvy=nOwVkVzjpM3VFU1zobP37Fwd_h9iAD5JQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wgs38ZrfPvy=nOwVkVzjpM3VFU1zobP37Fwd_h9iAD5JQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_122042_868206_07AB022D 
X-CRM114-Status: GOOD (  22.69  )
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

On Wed 2022-06-15 10:47:14, Linus Torvalds wrote:
> On Wed, Jun 15, 2022 at 9:28 AM Petr Mladek <pmladek@suse.com> wrote:
> >
> > BugLink: https://lore.kernel.org/r/20220610205038.GA3050413@paulmck-ThinkPad-P17-Gen-1
> > BugLink: https://lore.kernel.org/r/CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com
> 
> Other thread discussion about this exact thing:
> 
>    https://lore.kernel.org/all/CAHk-=wgzRUT1fBpuz3xcN+YdsX0SxqOzHWRtj0ReHpUBb5TKbA@mail.gmail.com/
> 
> please stop making up random tags that make no sense.
> 
> Just use "Link:"
> 
> Look at that first one (I didn't even bother following the second
> one). The "bug" part is not even the most important part.
> 
> The reason to follow that link is all the discussion, the test-patch,
> and the confirmation from Paul that "yup, that patch solves the
> problem for me".
> 
> It's extra context to the commit, in case somebody wants to know the
> history. The "bug" part is (and always should be) already explained in
> the commit message, there's absolutely no point in adding soem extra
> noise to the "Link:" tag.
> 
> And if the only reason for "BugLink:" to exist is to show "look, this
> tag actually contains relevant and interesting information", then the
> solution to THAT problem is to not have the links that are useless and
> pointless in the first place.
> 
> Put another way: if you want to distinguish useless links from useful
> ones, just do it by not including the useless ones.
> 
> Ok?

Got it! I am going to use "Link:" instead.

I just see how the discussion evolved at
https://lore.kernel.org/all/CAHk-=wgzRUT1fBpuz3xcN+YdsX0SxqOzHWRtj0ReHpUBb5TKbA@mail.gmail.com/

It is actually this exact discussion that confused me. I got the
impression that BugLink was a commonly used tag. I see that
I was too fast.

Thanks for stopping me.

Best Regards,
Petr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
