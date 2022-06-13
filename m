Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9578DC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 10:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EhVKjAQYf4+kdl6dVroJqVUcFGEvA5OQH1jV4+OZgIw=; b=w+Z2e6SDfhQzZP
	YZP/RvjhMNqu0bI3zV4VzO7s6jZwe1Ofmgh97Wh7Oaw7lCDpuSu7bvt6sqRIxkq+64BASX06KPX1n
	f5O97D94f946S5sFR4PVD2oVTHNwjWq1h49Q9JFX0hWwO/vuWy7fixldvdqa8ba7CbR8CCFPk+hCe
	N0bDWv60UK6CDnHjpCdoB4PsVulnUflC/PlI6oA5vkdH/Lrb153x7P8Kx0tO1NOyl8vxlj3uKl0vh
	JNmeRS0brtBInJXgsobjP93OIFEwE9MQiCUEcQSwfPjTVcIeUSdluIqahAe1MWHEFY8ng/u3szCgU
	QlZ8klYi/IMmU3yCn8Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0h5U-002q2L-QZ; Mon, 13 Jun 2022 10:14:24 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0h5R-002pye-1v
	for linux-rockchip@lists.infradead.org; Mon, 13 Jun 2022 10:14:22 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id B481B21D51;
	Mon, 13 Jun 2022 10:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1655115254; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8A1SBt7Y4ENgqL4eImjxK6vltqR5eYeh6JFaCiLr7vA=;
	b=XEIaa7toxjzMzmVz63x8m/Bpz29asC1XFMDzDOXMWlSSE/4ReiaKbx5luU5EL1s71vEGjb
	MV3HE9NpUiJSOf2bpEKQjUPEkTT8jliDvnD0E1jO++E86f768apChswS7pPvdQGUEFrQGC
	G6pZM5KHDslkiRb0FnVSVU1b3+9IJ/Y=
Received: from suse.cz (unknown [10.100.201.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id 82DAF2C142;
	Mon, 13 Jun 2022 10:14:14 +0000 (UTC)
Date: Mon, 13 Jun 2022 12:14:14 +0200
From: Petr Mladek <pmladek@suse.com>
To: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: John Ogness <john.ogness@linutronix.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Threaded printk breaks early debugging
Message-ID: <YqcN9mH/aVwBoIMQ@alley>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de>
 <YqVZ4CyWTiDgngkA@google.com>
 <8735g9mqo0.fsf@jogness.linutronix.de>
 <Yqazr060OLp2Rpbk@google.com>
 <87wndlge43.fsf@jogness.linutronix.de>
 <Yqb9xOBiY/262lhk@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yqb9xOBiY/262lhk@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_031421_294103_F28E6DBC 
X-CRM114-Status: GOOD (  23.37  )
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

On Mon 2022-06-13 18:05:08, Sergey Senozhatsky wrote:
> On (22/06/13 10:36), John Ogness wrote:
> > >> IMHO, no. Especially in that situation, we do not want printk causing
> > >> that atomic section to become even longer. If the machine has entered
> > >> normal operation, we want printk out of the way.
> > >
> > > At the same time printk throttles itself in such cases: new messages are
> > > not added at much higher pace that they are printed at. So we lower the
> > > chances of missing messages.
> > 
> > That is true if there is only 1 printk caller.
> 
> Well, which is the case when num_online_cpus() == 1?

Good question.

Well, it would be nice to have the same behavior on single CPU
and SMP systems. Blocking atomic context with slow console is
bad even on single processor system. If there are problems with
lost messages then we will need a solution for SMP anyway.

> > For SMP systems with printing handovers, it might not help at all.
> > I firmly believe that sprinkling randomness into printk (i.e. system)
> > latencies is not the answer. We need to keep printk lockless and out
> > of the system's way unless there is a real emergency happening.
> 
> Yeah sure.
>
> > This particular thread is not about missed messages due to printk not
> > "throttling the system", but rather the kernel buffers not getting
> > flushed in an emergency. This, of course, needs to be properly handled.
> 
> True, but Peter mentioned
> 
>   "I noticed with threading enabled during large bursts the console
>    drops an excessive amount of messages. It's especially apparent
>    during the handover from earlycon to the normal console."

But this is also the situation when softlockups happen. It should
ideally be solved with a big enough buffer.

Another interesting alternative is the Peter Zijlstra's mode
where all messages are printed to the console "immediately".
They are serialized only by the CPU-reentrant lock.

This mode is not good for production system. But it might
be good for debugging. The good thing is that the behavior
is well defined.

I hope that we will get this mode with the atomic consoles.

Best Regards,
Petr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
