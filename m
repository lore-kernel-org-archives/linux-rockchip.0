Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBBB8C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 17:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eo6pvB9C/T5KVHpKUnOsAAaPhElFpHVWcNXWDu7qQdM=; b=Hc8D4IA6NT5SMx
	Wqmv082uHVdTaGp+LVV84bNMOuO5N4QIfphUwrsaIa+k5IPDDTlNOk/DE/YYF49cccYIun2ENlPhZ
	3jrLu+iy4UZ3cfC5tBn9QtYq6VNwtvS/yx6GdWNf6LyIoDbbFMKy4xWyrnnpGbSDgiJKaUeVcAAjT
	1QcVAKXkSuxtFTXo7ipGARvCrhhvlcw6pjGzRNmKRETVLCs05CZH22BgaZHfBgvuSHy6P5TshKhbg
	j5xr7qWIyrRjndbr9F1JohgJy43Fxn5e3ESGCB5eNf5WlaUZ7SZcpSpmTix/teLO/Ua/m3MY8c+HB
	Sn/YcqZOin9NQUv/buvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1WXZ-00FbT6-LR; Wed, 15 Jun 2022 17:10:49 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1WXV-00FbRQ-Rc
	for linux-rockchip@lists.infradead.org; Wed, 15 Jun 2022 17:10:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 5F803B82073;
	Wed, 15 Jun 2022 17:10:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2297C34115;
	Wed, 15 Jun 2022 17:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655313043;
	bh=H3WInZezFiR4P8CKRnqvCzRSHF5GZxIMRPSwGD7BlYQ=;
	h=Date:From:To:Cc:Subject:Reply-To:References:In-Reply-To:From;
	b=I/Aze6kNbOmBPbYboiQcuW+LTeP/twbG/pvhe8xAUAZH6okfscE2CyHsBliygVNDO
	 KLLXDGJx/qMKbRxKL2iwZxY49eSI7gsGR1NSmEbj1TIsa3v4x6BUHbG+j7ZMEtYzfr
	 G2fL8ay6mLQQ4spywfLSgO3AkKqNZ+q+cammGu5LUM+XE9V/QTM0YN6/5psRqQnC0X
	 YK/Ba46GTwzCd92RThON46g34nGmV1DgD8CJoPdSSBq3q+zBi6dONCuyYS5b4OxT4+
	 TxdJ1o3TBrzqUWw54KLAu/rnRvIGgVe4ap55zFoBVd9hwzA1rinz8u7xbraMpWdGSe
	 vnxaxu/MmUllA==
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id 6EC965C05B9; Wed, 15 Jun 2022 10:10:42 -0700 (PDT)
Date: Wed, 15 Jun 2022 10:10:42 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Petr Mladek <pmladek@suse.com>
Cc: John Ogness <john.ogness@linutronix.de>,
	Sergey Senozhatsky <senozhatsky@chromium.org>,
	Steven Rostedt <rostedt@goodmis.org>, frederic@kernel.org,
	Peter Geis <pgwipeout@gmail.com>, zhouzhouyi@gmail.com,
	dave@stgolabs.net, josh@joshtriplett.org,
	Linus Torvalds <torvalds@linux-foundation.org>, rcu@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] printk: Prevent printk kthreads from blocking direct
 console handling
Message-ID: <20220615171042.GT1790663@paulmck-ThinkPad-P17-Gen-1>
References: <20220615162805.27962-1-pmladek@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220615162805.27962-1-pmladek@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_101046_219399_93BF9A91 
X-CRM114-Status: GOOD (  24.99  )
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
Reply-To: paulmck@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jun 15, 2022 at 06:28:03PM +0200, Petr Mladek wrote:
> There are reports that console kthreads prevented printing
> messages during panic() or shutdown(), see
> BugLink: https://lore.kernel.org/r/20220610205038.GA3050413@paulmck-ThinkPad-P17-Gen-1
> BugLink: https://lore.kernel.org/r/CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com
> 
> In both situations, printk() correctly tries to flush the consoles
> directly but it fails to get the global console_lock(). Both
> problems went away with these patches:
> 
> 1st patch blocks console kthreads so that they do not start
> handling new messages when the direct printing is preferred
> by the system state. It is probably enough on its own. It
> solves the problem when the kthreads actively did
> the wrong thing.
> 
> 2nd patch allows to wait for the console kthreads to release
> the lock in any context. It should make it more reliable.
> It would have been useful even for the legacy code.

Thank you!

For the series:

Tested-by: Paul E. McKenney <paulmck@kernel.org>

> More possible improvements:
> 
>   +  the waiting might be necessary also in the suspend code paths
> 
>   + convert con->mutex to con->spinlock to avoid blocking
>     the global console_lock() when sleeping with con->lock
> 
>   + at least disable preemption around console_emit_next_record()
>     in console kthread to avoid sleeping in the console driver
>     code
> 
>   + somehow change the priority of the kthread so that it gets
>     scheduled immediately when the scheduler works
> 
> Petr Mladek (2):
>   printk: Block console kthreads when direct printing will be required
>   printk: Wait for the global console lock when the system is going down
> 
>  include/linux/printk.h      |  5 +++++
>  kernel/panic.c              |  2 ++
>  kernel/printk/internal.h    |  2 ++
>  kernel/printk/printk.c      |  8 +++++++-
>  kernel/printk/printk_safe.c | 32 ++++++++++++++++++++++++++++++++
>  kernel/reboot.c             |  2 ++
>  6 files changed, 50 insertions(+), 1 deletion(-)
> 
> -- 
> 2.35.3
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
