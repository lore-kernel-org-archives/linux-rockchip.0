Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B622CCA47B
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 11:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZUTJtCQG1DeSJ9wpUtlW/7Mhwq3l8lGPSu0CNgUOGE=; b=zs/5EEeAG8cJYS
	+RzWAzRQ5/PF5/nYsp8xcM1hNn1K4hOmD8KKu7PkxqA55+HBScZkaYY94z4KjU1llvF01dBHudoVZ
	vBDSD2ahGZjIUNwdDXAzsMHT2StNE57Ba1LmDldH3P2T4ELJ91lGnG4xa1V5xXkw/kOwtd6/4j4Rt
	0l49clW1qqZc615OTTW6PBizQUMnmgyWOxVxRmc6suPOc7SS+/b8KsvX8CHgkUkUP5p4cEKj6cQ21
	NdF0ehCPC19cnyHMPWzb+dRuzyXdqw5hErRW955OXJZYwNaUSI/xfPhoDlkY4bKxmOdced67bqdAr
	q40BdTm4hp+9hPiujZEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0iGT-003Elz-JX; Mon, 13 Jun 2022 11:29:49 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0iB7-003C5b-NL
	for linux-rockchip@lists.infradead.org; Mon, 13 Jun 2022 11:24:19 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 50D7C21CC7;
	Mon, 13 Jun 2022 11:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1655119454; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oVDyyQNRZdOpJs5Ykd60IDoqlaom7m+VsdjwLrey5C4=;
	b=l7TxDF/FRkFqe6u/FqVZiF7Ihqp5aGKfbXpdYa9J5gK2wPjMO7VFhYqh42d1WpkPlSFmlV
	mPRuubJBOa4M4vF19l1U3+6IU3ee+UOpbo5JyDQ9EMDrSDxvRmjpzsCekD2hspvQC7fwKg
	pdEsnXGZvSTphJrd1x52d/duHpuQ6iQ=
Received: from suse.cz (unknown [10.100.201.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id 29D2C2C141;
	Mon, 13 Jun 2022 11:24:14 +0000 (UTC)
Date: Mon, 13 Jun 2022 13:24:10 +0200
From: Petr Mladek <pmladek@suse.com>
To: Peter Geis <pgwipeout@gmail.com>
Cc: John Ogness <john.ogness@linutronix.de>,
	Sergey Senozhatsky <senozhatsky@chromium.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Threaded printk breaks early debugging
Message-ID: <YqceWi1524yuVITi@alley>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de>
 <CAMdYzYr-Wo713Y4qjboTpoK6GcrYfKCfRJAEizwXw6-=dymVzg@mail.gmail.com>
 <87zgihlbst.fsf@jogness.linutronix.de>
 <CAMdYzYosXiQc9=t7daPaWWS=rnTVT6nnZvVBXDycBQvfR-1FAA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYosXiQc9=t7daPaWWS=rnTVT6nnZvVBXDycBQvfR-1FAA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_042417_958090_3BC70E3A 
X-CRM114-Status: GOOD (  17.19  )
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

On Sun 2022-06-12 19:30:27, Peter Geis wrote:
> On Sun, Jun 12, 2022 at 7:08 PM John Ogness <john.ogness@linutronix.de> wrote:
> >
> > On 2022-06-10, Peter Geis <pgwipeout@gmail.com> wrote:
> > > This might be a side effect of the fact that this is on a low powered
> > > arm64 board. I noticed with threading enabled during large bursts the
> > > console drops an excessive amount of messages.

What do you mean that console drops an excessive amount of messages,
please?

Do you see "dropped XXX messages" in the console output?
Or something else?

> > > It's especially
> > > apparent during the handover from earlycon to the normal console.
> >
> > I guess you have a very small kernel buffer and are generating unusually
> > high amounts of messages? Is there a reason you cannot use a larger
> > buffer?
> 
> The buffer isn't an issue here, everything is available in dmesg when
> userspace becomes available. Instead some messages bound for the
> serial console are never output.

This is strage. The message "dropped XXX messages" is printed only
when the buffer was full and the oldest messages were overwritten
before they were pushed to the console. If "dmesg" shows all messages
it means that no messages were overwritten.

Best Regards,
Petr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
