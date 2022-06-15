Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23DF5C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 20:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gHdr0g+Y3pDmJ9YikPXsDTPJYOlkq3W6MEwEQatXLno=; b=LLTVIzC3p6KRTE
	d51CsoOrRryTGvDLLLou9tokkBz/YhMKb3EeGLhNX6mGM6a03ZB588FCmTkjF1fYX0Nm0K1MNJdTh
	vsp2Y+SEPkJwiwnwq3VHUhvqNUOINvXjYD7vZKjdOQ2aICB18coIlIS46vEnN4LIJpZ+3JiKM0r2z
	vTHbd4FPAFLIAKrcyWtZQ1MpCN9Zjvh7xfJzxKQXMdeywaT0LH/D+GMkXP+jjKGfmJAd6MsWfZ8VY
	K4Ki4Zlb3fse/LFZM+ndZE2iQ7FRgaV1NoTZu7zCWBGMUn5+5F4e9dS5LWPzO0L7BPI7npe6U+f+l
	q7hURFJD96UtXXysgGUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ZKN-00GCCu-3L; Wed, 15 Jun 2022 20:09:23 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ZKK-00GCBa-L7
	for linux-rockchip@lists.infradead.org; Wed, 15 Jun 2022 20:09:22 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 1BB0F21C30;
	Wed, 15 Jun 2022 20:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1655323758; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bcdl//EGMAUfoaFcUm+i1/8R1t8519RxD7M2HpFPHLI=;
	b=gdE505su2Mj6rcFjS571YYnAQ4YCgtzHf3vnKc68vUDoY3Q7N7yz650Pm+OyV3AlYMM023
	azcEPEcbAi8UA26e5vbYFFQfCRjx72iX+NAA8JSObr99awPIxTb0qxHMjdsYKxk3jsvvf9
	xHlrNTLAKaJ9Heuab+kGd53Hpoys2NQ=
Received: from suse.cz (unknown [10.100.201.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id 72B6E2C141;
	Wed, 15 Jun 2022 20:09:17 +0000 (UTC)
Date: Wed, 15 Jun 2022 22:09:17 +0200
From: Petr Mladek <pmladek@suse.com>
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: John Ogness <john.ogness@linutronix.de>,
	Sergey Senozhatsky <senozhatsky@chromium.org>,
	Steven Rostedt <rostedt@goodmis.org>, frederic@kernel.org,
	Peter Geis <pgwipeout@gmail.com>, zhouzhouyi@gmail.com,
	dave@stgolabs.net, josh@joshtriplett.org,
	Linus Torvalds <torvalds@linux-foundation.org>, rcu@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] printk: Prevent printk kthreads from blocking direct
 console handling
Message-ID: <Yqo8bbp10BFqNmiD@alley>
References: <20220615162805.27962-1-pmladek@suse.com>
 <20220615171042.GT1790663@paulmck-ThinkPad-P17-Gen-1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220615171042.GT1790663@paulmck-ThinkPad-P17-Gen-1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_130920_876494_745ABDCC 
X-CRM114-Status: GOOD (  20.09  )
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

On Wed 2022-06-15 10:10:42, Paul E. McKenney wrote:
> On Wed, Jun 15, 2022 at 06:28:03PM +0200, Petr Mladek wrote:
> > There are reports that console kthreads prevented printing
> > messages during panic() or shutdown(), see
> > BugLink: https://lore.kernel.org/r/20220610205038.GA3050413@paulmck-ThinkPad-P17-Gen-1
> > BugLink: https://lore.kernel.org/r/CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com
> > 
> > In both situations, printk() correctly tries to flush the consoles
> > directly but it fails to get the global console_lock(). Both
> > problems went away with these patches:
> > 
> > 1st patch blocks console kthreads so that they do not start
> > handling new messages when the direct printing is preferred
> > by the system state. It is probably enough on its own. It
> > solves the problem when the kthreads actively did
> > the wrong thing.
> > 
> > 2nd patch allows to wait for the console kthreads to release
> > the lock in any context. It should make it more reliable.
> > It would have been useful even for the legacy code.
> 
> Thank you!
> 
> For the series:
> 
> Tested-by: Paul E. McKenney <paulmck@kernel.org>

Thanks a lot for testing.

I have pushed it into printk/linux.git, branch rework/kthreads
to give it a spin in linux-next.

Best Regards,
Petr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
