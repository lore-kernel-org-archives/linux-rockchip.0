Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2F12C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 08:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mk9aF+HV/ohVa1GJm558CDECzyoZjaJfQkSUJYwlDDo=; b=XPHbHA/gK+FGKs
	dRUF4wEbqvt6k6aADIUHiA4vFh9ZxnNqHFWyQEMg6ybxtxko1hTm/R7X/Ck5EBa+fTo0BKlc64VFa
	Miv/Lq9KeqGijiLOZJhu8L6d4KQC9R4b1xgQxDMghR4qRzVpXb3lkuNQny4VOxX3vNKDMwJV2k7yR
	aImiutBPX9PEd+13kYdGP4jourLoRsdy4iF2Ara90UcHqBlR7r0TzkFHE/oSxHY7Ueikzlm19yCcF
	jbDriW+w9X1ZT8nqD4oYZJNE1b1lc12zu8kKUG4eGCl7RZA5pD540qc8whBTtbZtPoiy/fRsYDSgQ
	J8fMl5EVHRIVr72tQBTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0fSi-002Gxd-B2; Mon, 13 Jun 2022 08:30:16 +0000
Received: from galois.linutronix.de ([193.142.43.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0fSX-002Guz-W3
	for linux-rockchip@lists.infradead.org; Mon, 13 Jun 2022 08:30:07 +0000
From: John Ogness <john.ogness@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1655109004;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6YfnLzYsqZtamSjbgNwE+1ANi1MPYoPaKZoAdpL94tw=;
	b=hMmvLEA9wdH4JtDJgIxNxkW2RXXNNGD8Lr77myJVcqgaQ63kOnywlv0jw6uxfeP46TUdI/
	1TMf8TFZiecKgBBYJe1epnQSfxYGBvuWZui8dlkAbwsGnFCtMdUSqnBo+7cpH2b9iVHec7
	fW4aymmZXiD+Y8IJbFPmg70Mqnz9p+qLrGWkO+6QxGiAfeiUpFqlw3/FBcaRGrmbJSWfWs
	zSvMNsUfOSMihPMQdWDcujqv89AVPaajgxtsEY0+aumTkEHoP6PgPqLRKkUX/UU7bqGJkL
	nfhAUb1LAvIghjXQNW1VhLZmjV6waAO+4Zr4rjZw1cT8OGNV2AsLO74pQ1Ib0Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1655109004;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6YfnLzYsqZtamSjbgNwE+1ANi1MPYoPaKZoAdpL94tw=;
	b=2oMoKyLTPflIXvN07qwsObNwKxLTDbvA8y9Jb7G9YBK/VlwEC+s+JMYPZ/LVx/9DuoRTkC
	ckDyn8X8BQQEwCCQ==
To: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Sergey Senozhatsky <senozhatsky@chromium.org>, Petr Mladek
 <pmladek@suse.com>, Peter Geis <pgwipeout@gmail.com>, Linux Kernel Mailing
 List <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Threaded printk breaks early debugging
In-Reply-To: <Yqazr060OLp2Rpbk@google.com>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de> <YqVZ4CyWTiDgngkA@google.com>
 <8735g9mqo0.fsf@jogness.linutronix.de> <Yqazr060OLp2Rpbk@google.com>
Date: Mon, 13 Jun 2022 10:36:04 +0206
Message-ID: <87wndlge43.fsf@jogness.linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_013006_189634_69CDDE91 
X-CRM114-Status: GOOD (  10.06  )
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

On 2022-06-13, Sergey Senozhatsky <senozhatsky@chromium.org> wrote:
>> > Should a situation when we have only one online CPU be enough of a
>> > reason to do direct printing? Otherwise we might not have CPUs to
>> > wakeup khtread on, e.g. when CPU that printk is in atomic section for
>> > too long.
>> 
>> IMHO, no. Especially in that situation, we do not want printk causing
>> that atomic section to become even longer. If the machine has entered
>> normal operation, we want printk out of the way.
>
> At the same time printk throttles itself in such cases: new messages are
> not added at much higher pace that they are printed at. So we lower the
> chances of missing messages.

That is true if there is only 1 printk caller. For SMP systems with
printing handovers, it might not help at all. I firmly believe that
sprinkling randomness into printk (i.e. system) latencies is not the
answer. We need to keep printk lockless and out of the system's way
unless there is a real emergency happening.

This particular thread is not about missed messages due to printk not
"throttling the system", but rather the kernel buffers not getting
flushed in an emergency. This, of course, needs to be properly handled.

John Ogness

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
