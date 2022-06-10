Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43096C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 15:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5XirjIiomfPdjzpVqXynKg/30icL3bCSgG2yndUNv4=; b=yPpzqBuzvIL7D5
	bCY/v+D6gOgArRnZeoE8s6OGe8Aql7T8daIslhsxukW8guD5siSWoIPdDXp7EUGrl4jbg9mTCtNd8
	2cLSQZXrbIz+P5P9GE52TVqQexu4NrJ6iEyKEbeBJYzONfJJSXqnlkgbu21MhRmCFivcYRIVx2i9z
	mb1xYMXgMbXT0YQEDMHL0xG9Y40wgBu52920FCjyAtMqV4HQ8qy4kCIwzmM0yXqeIEqYxZRsEv7ZA
	V09ag7sYHbvxpi+06U/SYoxmzNX3vVO+KnFOdXlbFcFLy2UD5W/iQ23pgC1amN50HfM3oWb2XlAfV
	6U/EEoIlesVRGyaGVpTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzgCS-008gxy-8e; Fri, 10 Jun 2022 15:05:24 +0000
Received: from galois.linutronix.de ([193.142.43.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzgCP-008gvm-E6
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 15:05:22 +0000
From: John Ogness <john.ogness@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1654873515;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=i/irLIUiOU3R1KbdYEek7Nb2Y14nGCRWA/qsrIaXAgY=;
	b=Eqh6khc+lVpttb+8is7HqjuKWhoj/qFv8BYfDRbkiNecbpTxYYbcErvSA+lNQB5h7j0OLD
	1R+jqBiPibSohGo1WPoO1GX8S6M140BdX7oEnnbRMrKjc7qHjET1xol/+4EFqKOkGgM0HE
	CRj19Hxhpcc544QcVw6wwCe/muc4MkPjRhnIbp4B6Rye7+kLG1ugyvYlxIxbQBUAjNgeZZ
	B1hv1RLGy3NYGvgc/2zcaZMy7CxcfB+AyK7z6zis9xBqbQbFETrowv/H8tdZUS7CAL67SI
	2DEfYiT5jknalJ9TUWsKY4hEtWUDnnallyRmts37TSutS+h2UJNSbFQgbM857w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1654873515;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=i/irLIUiOU3R1KbdYEek7Nb2Y14nGCRWA/qsrIaXAgY=;
	b=+lRnT2ox4AONfHl8lL1FxwRMHR0+vmqWE6twbUeEw1YLaFKBMH0DWjSeKd5tf7aNXVbWLm
	kR5ZCP2f2PBbA1Ag==
To: Peter Geis <pgwipeout@gmail.com>
Cc: Petr Mladek <pmladek@suse.com>, Sergey Senozhatsky
 <senozhatsky@chromium.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Threaded printk breaks early debugging
In-Reply-To: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
Date: Fri, 10 Jun 2022 17:11:15 +0206
Message-ID: <87y1y48spg.fsf@jogness.linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_080521_653984_0315F722 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
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

Hi Peter,

On 2022-06-10, Peter Geis <pgwipeout@gmail.com> wrote:
> However I've run into an issue debugging early boot issues. Anything
> that causes the kernel threading system to die (for example here, a
> NPE) causes the boot console to halt before it outputs the error.

A null pointer exception should trigger a panic, which will cause printk
to enter direct mode for the oops. It should be just as effective as
before introducing the printing kthreads.

Can you please provide a test case or patch that will trigger the
problem you refer to?

> Would it be possible to have both a kconfig option and a runtime
> option to toggle printk_fallback_preferred_direct()? Currently I've
> had to force it at all times while debugging.

It would be trivial to provide a boot parameter for this behavior, but I
think we first need to see a real problem and also see if we can fix
that problem.

John Ogness

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
