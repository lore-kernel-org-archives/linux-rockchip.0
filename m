Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF62EC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 22:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvMPQyEZiDPpuTQ2UrsQF64cCq2T2Tt9d08YZUtYzsE=; b=LTKsL6e/N/D9zB
	uD8nrRCYI72pISfXnX8VsWmiZDLvuw5EJbZ/OlQ/rKIu1Aur5WFo2rNJX/3Yo+jyxsVRaptZuY5DM
	ctwdD4sID/Fq63sacz1tNyGeEH1y04lJ6L2GBRN/Q11oAC4Q5+AHKJmQlHvjLihjWc0LAdv5FrQeB
	I1q6Tugq8fBHZm70u89rZUcyZcBGjYBTHPDJRKslVjc+FINgORJgM43sa1h7pTaO1/TPnQ7GG1NR3
	sBOuSxpoCAFjsJuekmI2bhdYhjRLeEPWWkURTpkGwvPUh1go4VclaxRr2AA++i4I2TI67yKfVgQ5W
	Gn8nOKgR1NUuXJH9x12g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0sQ1-0064yY-V6; Mon, 13 Jun 2022 22:20:21 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0sPy-0064xj-VP
	for linux-rockchip@lists.infradead.org; Mon, 13 Jun 2022 22:20:20 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id w2so12170337ybi.7
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jun 2022 15:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=P/CY0Q27yHpGkV4+fpgJ7Pxw8NnZ5Od7A7cmxLkzFwY=;
        b=kS5iUw1EVxmO6ZZ8eLYib7THdtsnLllWt+dvpRM8T5NVpyz13RFk5BLbQrsThxfbbx
         2a73quZ3rV3nRMjohfnBsc0XCP22uAEp50IfHE0ZgKCsguuyUE39t9SGKnaqM//l6385
         E1w1s6irDtze+iJpDgMM8sanUW4YBba1JkIPtIRf172U0+XajqR4wzadojz3uGi7Q3Rr
         auFBWZsoalm8+ugQ8DjlK/LsY63Ge5GONNAZUsi+ET+4zW7gPDaxjQxRfYIq62vbuxfQ
         DM9h37natb4kKWX1UFXayT8U942q0Zf+fU6D5+Znklsu1yiYiiwOJWYyVei/0+5t4PCm
         SwPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=P/CY0Q27yHpGkV4+fpgJ7Pxw8NnZ5Od7A7cmxLkzFwY=;
        b=Rry374FATWucZiHo2SpBBMRqoEd6PuS1RlwsoRmHIyg9l0nHtDfNOfadc00wL8JVK2
         aJvK/YZWZhTimxkj3ebyR4HJpNSG2OHaNx0KT5OHTp5e5WkvKOH67YeoBqSHE6GEGrDg
         +UBVp5E6Lr6NPauXh2q1kvS0hhYt9VnQn9dXlDCBIC8mei30u3miy7TqE+rz6s4lPjuQ
         Ki6eWGRKq8pjbeAMsXN2JT0wXokiTzuG9FkxeqSebuedoe01NK+Vv3WjMnUG8Q8BJlMf
         moKvVeDvcAWHbd93ty5eKPPGuEM63k/16L3u6tz46DUzMCF6dMV8Y6Pk21jh10WDQZ4E
         YupQ==
X-Gm-Message-State: AJIora9UMNLauzJ0pa8YwwKUSBxBTUqiDQCa+rUQoMxX+lzaM3HHvkCK
	len+UFBNZx+kuaU/zJ/pdNdpQsoK0AkQpAPH6b4=
X-Google-Smtp-Source: AGRyM1sjI8SzOoU42VpIyO9+9QtzrqPeoNhv2Nu3d54grgzuRUENip+KgkPidYN6ZI558aWMO5+Ok6LKCfX7/JyYnAo=
X-Received: by 2002:a05:6902:4c3:b0:65c:ef52:e3bb with SMTP id
 v3-20020a05690204c300b0065cef52e3bbmr1863089ybs.362.1655158814853; Mon, 13
 Jun 2022 15:20:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de> <CAMdYzYr-Wo713Y4qjboTpoK6GcrYfKCfRJAEizwXw6-=dymVzg@mail.gmail.com>
 <87zgihlbst.fsf@jogness.linutronix.de> <CAMdYzYosXiQc9=t7daPaWWS=rnTVT6nnZvVBXDycBQvfR-1FAA@mail.gmail.com>
 <87sfo9l2rt.fsf@jogness.linutronix.de> <YqdTsjRQiJUilSg6@alley>
In-Reply-To: <YqdTsjRQiJUilSg6@alley>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 13 Jun 2022 18:20:03 -0400
Message-ID: <CAMdYzYr-oHp-EgNJxumsR+DrZS=U7dLpvHymkAHPYQO8FsrLrQ@mail.gmail.com>
Subject: Re: [BUG] Threaded printk breaks early debugging
To: Petr Mladek <pmladek@suse.com>
Cc: John Ogness <john.ogness@linutronix.de>, 
	Sergey Senozhatsky <senozhatsky@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_152019_070660_781C8C20 
X-CRM114-Status: GOOD (  21.70  )
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

On Mon, Jun 13, 2022 at 11:11 AM Petr Mladek <pmladek@suse.com> wrote:
>
> On Mon 2022-06-13 04:29:50, John Ogness wrote:
> > On 2022-06-12, Peter Geis <pgwipeout@gmail.com> wrote:
> > > The buffer isn't an issue here, everything is available in dmesg when
> > > userspace becomes available. Instead some messages bound for the
> > > serial console are never output.
> >
> > OK. Good to know.
> >
> > > We run a serial console at 1.5m baud which is significantly higher
> > > than most SoCs which default to 115200. I have noticed some timing
> > > differences since the introduction of the threaded console. A
> > > significant amount of information is dumped very early in the boot
> > > process (between 0 and 4 seconds into boot), as most drivers are
> > > probing during this time. It also happens to be when the earlycon
> > > console hands over to the normal console. There is no abnormal
> > > debugging enabled, the output is a standard (non-quiet) boot log. The
> > > question is why is direct mode not triggering during a panic?
> >
> > Just to be clear, you are not losing any intermediate messages. Only the
> > tail end of the kernel log was never printed. Is this correct?
> >
> > This may be the same issue being discussed here [0].
> >
> > John Ogness
> >
> > [0] https://lore.kernel.org/all/87v8t5l39z.fsf@jogness.linutronix.de
>
> If the last messages are missing then it is most likely the same
> issue.
>
> Peter, could you please try if the patch at
> https://lore.kernel.org/r/YqdSw/fJvnkRbjvc@alley
> would make any difference?

This patch permits the panic to come through to the console port. Thank you!
Tested-by: Peter Geis <pgwipeout@gmail.com>

>
> Best Regards,
> Petr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
