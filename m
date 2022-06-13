Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 660B8C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 15:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqVwkmomWUeMw0hch+YeL6f9o0/ACCGEvcIq+FeZ3gM=; b=aAk/WpVqDO1Ub/
	zP6gVcWLv8xIT9otdd9y7c764nCo1IODfGXHt/vUUVkx/T444LbaRexbKosHtnhuubvkCNPVTmBSu
	mP7XLiBNDEHkjjZ9Ata+zGOconIrcQbY+xxfb+R0NI5+GiIZAwVcePCR87FmemPcdh7mu7pidF4Ij
	OAlOo9FUceCByrQ1ws92PuviN4Ego4HiSz+gQpqx/bLvh7RM4WfKugrgI4dGQNId6f3J/nHO61e+d
	1cNkXHRSwk9yA2Vy0/v4V9AsOHOY0+QZiK9MVFKZG18u+lc3Uf/F+VDlzSnSJqk/yZWPH+pamnK0V
	qqtKg5yZjg4nCp+nbevw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0llk-004So3-TK; Mon, 13 Jun 2022 15:14:21 +0000
Received: from smtp-out2.suse.de ([195.135.220.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0ljI-004Rek-9K
	for linux-rockchip@lists.infradead.org; Mon, 13 Jun 2022 15:11:50 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id B31271F38A;
	Mon, 13 Jun 2022 15:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1655133106; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Z7dlidkLU9Um70/JTQTwpR+Dj4Fvy0y6/Lfnd9UP1rE=;
	b=I/O19Pe8jF4zHNt89mXvStjN3iRBYt1Ohq4Zq+R3YXICwPKJNbzsqH7Kox8YE8G/wx4zYU
	+zclLnmUiCvmbqDsT9msRo+dESKcuvEV9xHNIoGXkkSHpo0pG/NuyPI5Q7fsIhGo3RN3lA
	/NKiMLgv+Nj1N8t1C9qhvuC8+rDYrgI=
Received: from suse.cz (unknown [10.100.201.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id 57E2F2C141;
	Mon, 13 Jun 2022 15:11:46 +0000 (UTC)
Date: Mon, 13 Jun 2022 17:11:46 +0200
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Cc: Peter Geis <pgwipeout@gmail.com>,
	Sergey Senozhatsky <senozhatsky@chromium.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Threaded printk breaks early debugging
Message-ID: <YqdTsjRQiJUilSg6@alley>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de>
 <CAMdYzYr-Wo713Y4qjboTpoK6GcrYfKCfRJAEizwXw6-=dymVzg@mail.gmail.com>
 <87zgihlbst.fsf@jogness.linutronix.de>
 <CAMdYzYosXiQc9=t7daPaWWS=rnTVT6nnZvVBXDycBQvfR-1FAA@mail.gmail.com>
 <87sfo9l2rt.fsf@jogness.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87sfo9l2rt.fsf@jogness.linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_081148_561157_CC03A3D3 
X-CRM114-Status: GOOD (  17.43  )
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

On Mon 2022-06-13 04:29:50, John Ogness wrote:
> On 2022-06-12, Peter Geis <pgwipeout@gmail.com> wrote:
> > The buffer isn't an issue here, everything is available in dmesg when
> > userspace becomes available. Instead some messages bound for the
> > serial console are never output.
> 
> OK. Good to know.
> 
> > We run a serial console at 1.5m baud which is significantly higher
> > than most SoCs which default to 115200. I have noticed some timing
> > differences since the introduction of the threaded console. A
> > significant amount of information is dumped very early in the boot
> > process (between 0 and 4 seconds into boot), as most drivers are
> > probing during this time. It also happens to be when the earlycon
> > console hands over to the normal console. There is no abnormal
> > debugging enabled, the output is a standard (non-quiet) boot log. The
> > question is why is direct mode not triggering during a panic?
> 
> Just to be clear, you are not losing any intermediate messages. Only the
> tail end of the kernel log was never printed. Is this correct?
> 
> This may be the same issue being discussed here [0].
> 
> John Ogness
> 
> [0] https://lore.kernel.org/all/87v8t5l39z.fsf@jogness.linutronix.de

If the last messages are missing then it is most likely the same
issue.

Peter, could you please try if the patch at
https://lore.kernel.org/r/YqdSw/fJvnkRbjvc@alley
would make any difference?

Best Regards,
Petr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
