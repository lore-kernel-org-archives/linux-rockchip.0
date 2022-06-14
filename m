Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 126E7C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 08:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5T4TUlQDRilsuCqTa3snmEmaG7AYNOZADRpj1hKNQM=; b=MmlxcRMCzLzLQ3
	Os7afUiRL/f9Xz3gDEbxhm23x7aMd11ig2KR8qwk5lfXtoAG5z8dPmKiilmLNpLMV1cSF4HS9n6xp
	xvfHYqLreS69AginOcBHuybvckuLxFym1MvtxNqj3sI4q/F3oTbvA7ev2jWptBahPdSqYzTMyoLCH
	Qz6K6IkIqdNry9cZIbSz2W/wW55u8vCETcHSIKy6mV7jsUVoaRVq6reFetWVU4wf3rRrRrCLwVGcK
	02YRs31oF8HvwWsWnjCM5K/PCv8wZzj6dSasSUpRQHA8nsI9mdKjr7qf+hmq/ZlebOdud156h44zh
	HcvA4E+9IAZvZODOr9Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o12IY-008QeO-4I; Tue, 14 Jun 2022 08:53:18 +0000
Received: from smtp-out2.suse.de ([195.135.220.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1237-008IUm-9O
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 08:37:22 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id EFEF71F894;
	Tue, 14 Jun 2022 08:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1655195836; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9VAXCbvSpeZ6BQdmzTuroDUERnJvufcYFBzvcgCeZIc=;
	b=dJBi3Ve8G9tUZpeQpfb4pVExJQ4QWW6xsgUbeN2qFwkEVdPxRDnhFu33OgfsShQGAQo79j
	WlROAXt3O4Xr0VmIfgi2O4OthbiAn6h1BkDFLfwDGK3pPwwb9FpzoSypd5V4jRVClVDcHp
	sYIqi7Jcy2pR6lomxZvMH9EXUUsY10c=
Received: from suse.cz (unknown [10.100.201.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by relay2.suse.de (Postfix) with ESMTPS id BF3282C141;
	Tue, 14 Jun 2022 08:37:16 +0000 (UTC)
Date: Tue, 14 Jun 2022 10:37:13 +0200
From: Petr Mladek <pmladek@suse.com>
To: David Laight <David.Laight@aculab.com>
Cc: Sergey Senozhatsky <senozhatsky@chromium.org>,
	John Ogness <john.ogness@linutronix.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Threaded printk breaks early debugging
Message-ID: <YqhIuTj+KAAA15J7@alley>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de>
 <YqVZ4CyWTiDgngkA@google.com>
 <8735g9mqo0.fsf@jogness.linutronix.de>
 <Yqazr060OLp2Rpbk@google.com>
 <87wndlge43.fsf@jogness.linutronix.de>
 <Yqb9xOBiY/262lhk@google.com>
 <YqcN9mH/aVwBoIMQ@alley>
 <c81870cef50f4e1fac5083f0b780983d@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c81870cef50f4e1fac5083f0b780983d@AcuMS.aculab.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_013721_557311_E84A3BA7 
X-CRM114-Status: GOOD (  17.68  )
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

On Mon 2022-06-13 16:11:19, David Laight wrote:
> From: Petr Mladek
> > Sent: 13 June 2022 11:14
> ...
> > Another interesting alternative is the Peter Zijlstra's mode
> > where all messages are printed to the console "immediately".
> > They are serialized only by the CPU-reentrant lock.
> > 
> > This mode is not good for production system. But it might
> > be good for debugging. The good thing is that the behavior
> > is well defined.
> 
> ISTM that all messages should be output (even if this means
> that cpu spin waiting for a serial console) until userspace
> has a chance to set an option to change the behaviour.

There are systems that do not boot because of softlockups
caused by slow consoles.

I am pretty sure that we will add the option to disable
printk kthreads sooner or later. But we prefer to improve
the code so that it works out of box. If we add the option
already know then people will disable kthreads and
do not report problematic scenarios.


> Oh, and can someone stop the distros hiding the console output.
> I want to see the 'oops' traceback when I break the kernel!

Different users have different needs. AFAIK, distros hide
the messages because they scare users and overload support.
It is probably more effective to enable them only for debugging
when users notice some malfunction.

I do not know the details. I guess that there were years of
evolution. The default in SUSE was probably set by some
project managers or people taking care of boot splash,
installation, ...

Best Regards,
Petr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
