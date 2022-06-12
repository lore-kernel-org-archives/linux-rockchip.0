Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92ACFC43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 23:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrPRGfMu6TLCrsrStXLMhDiO6IijZCUHBWmrzAbkVPI=; b=dyDqekBXoDqZOY
	WWtlP3oE4pDOaDEPc8Faayu/8tTXqwy4Tcbj91VryUNSm3ryU/NWk/7EwvqO+p8L867jJkY3qIFhl
	tKcHvTMc+ls6N/sJoEE+dNq46DEz3uyydpxqaKHQ2DnooKEyiu3LFRax/ZGdpQzcmap+O7HB2oqYv
	gu6A0WnSBmIvLE1XwFf1kQhlCDAHD7ME1ijrJZUQ7Ijodu/R2Rk1rdFF4KZ9OtO2d6w9UyaF0jakE
	FXn6Zb0II+5GpCuDL9rncNpGITdvt6991mj6d+s/VwIZgsf7hQHRjKBA/KkYyrdcKu69+j7DXuxhi
	jKNZ3xyr4sUYOTo14qtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0X2Y-000XUt-Sr; Sun, 12 Jun 2022 23:30:42 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0X2W-000XUX-HD
	for linux-rockchip@lists.infradead.org; Sun, 12 Jun 2022 23:30:41 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id x38so7309261ybd.9
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Jun 2022 16:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fSaAxK/sjwEAdJ0xVDT8/xNpyJ/5T+h2sZVRU4bYEY0=;
        b=Wb11KzRC251PpEFgIE6escV9Dfn+eILU3vMR4xh2V6EHTqVDngKlX7COztDCxS1ggA
         VReXCQT6ybasBP5v/TrwZk3CoOssl5lWMUPAzSwkG4wS+tTcl87fWBQtfeaNiBoUHWp+
         zkJh/5j7sPzCi4d5nN9FyNmUSXJyoWJdFuY8AZwRhthG5VB1aW40d12FOhRpQ/vA31GF
         DC6dErIImTLTCgy4atRg3jz94b7jgFzQuC6D8hLNPlBsevC7ceMUB5SLKNXZnhza2ODq
         M04zsGh8o/Q3ZyeDeBIZmE53fDqkqGYl94aCmomHfD33cxrWkQa7ubRxAJ3+Q46wxwfA
         U3vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fSaAxK/sjwEAdJ0xVDT8/xNpyJ/5T+h2sZVRU4bYEY0=;
        b=SrSWjEQHLoBXDnoS9nq+xc1KGKgEIf6pid8VTpNLlKCvZEE77bC/Q8XYRRj9tnfFXo
         esxYwirzQWYlu7fKpxRxrnIuym+F/8k/IAiAeIKnMJjEqZY42DCw693GtxpGBft1QeE3
         LyyQ/pGLjMhe+ZhskmyU52wLbb/Del6uzzjwDNqytsTKCU+CT2m2YFpVwk82HtZ2nzyd
         2X0XW3wJCn31R7gruPqsU6/cttiXFElqx6H8nAvTluCyXDWnWS7ecsPFKpcqevzCSsju
         lObslko0GTAxOdHbLgdnpZnusSNXHm4F8Z8RE8MF6qdQvJdGlW5S1tEwBxAWiaamgd4U
         oX2g==
X-Gm-Message-State: AOAM530hlF42geHooRhH8FSr7sSgL741eYtJPWHPM3pH57YEjLEufF6e
	BZziK3QRcwkOD8kCbQOuMg6rzHkDqI1stlnszQM=
X-Google-Smtp-Source: ABdhPJwiILPZWUpes4rrwhkafz3EszitYKgpKNG64GltNHkUCTDoiV+uydCymPnlzHVdAWVHOQlqqR5ir/Mu3QHuNNI=
X-Received: by 2002:a25:4544:0:b0:660:63fc:9d41 with SMTP id
 s65-20020a254544000000b0066063fc9d41mr51396747yba.600.1655076638591; Sun, 12
 Jun 2022 16:30:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de> <CAMdYzYr-Wo713Y4qjboTpoK6GcrYfKCfRJAEizwXw6-=dymVzg@mail.gmail.com>
 <87zgihlbst.fsf@jogness.linutronix.de>
In-Reply-To: <87zgihlbst.fsf@jogness.linutronix.de>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 12 Jun 2022 19:30:27 -0400
Message-ID: <CAMdYzYosXiQc9=t7daPaWWS=rnTVT6nnZvVBXDycBQvfR-1FAA@mail.gmail.com>
Subject: Re: [BUG] Threaded printk breaks early debugging
To: John Ogness <john.ogness@linutronix.de>
Cc: Petr Mladek <pmladek@suse.com>, Sergey Senozhatsky <senozhatsky@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_163040_629581_F6151A00 
X-CRM114-Status: GOOD (  16.61  )
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

On Sun, Jun 12, 2022 at 7:08 PM John Ogness <john.ogness@linutronix.de> wrote:
>
> On 2022-06-10, Peter Geis <pgwipeout@gmail.com> wrote:
> > This might be a side effect of the fact that this is on a low powered
> > arm64 board. I noticed with threading enabled during large bursts the
> > console drops an excessive amount of messages. It's especially
> > apparent during the handover from earlycon to the normal console.
>
> I guess you have a very small kernel buffer and are generating unusually
> high amounts of messages? Is there a reason you cannot use a larger
> buffer?

The buffer isn't an issue here, everything is available in dmesg when
userspace becomes available. Instead some messages bound for the
serial console are never output.

>
> Or maybe you are generating a constant amount of messages that a serial
> port could never keep up with unless it was interfering with the system
> in such a way as to slow everything down? This is exactly what printk
> should _not_ be used for.

We run a serial console at 1.5m baud which is significantly higher
than most SoCs which default to 115200. I have noticed some timing
differences since the introduction of the threaded console. A
significant amount of information is dumped very early in the boot
process (between 0 and 4 seconds into boot), as most drivers are
probing during this time. It also happens to be when the earlycon
console hands over to the normal console. There is no abnormal
debugging enabled, the output is a standard (non-quiet) boot log. The
question is why is direct mode not triggering during a panic?

>
> John Ogness

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
