Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53305C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 20:30:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1A50A611BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 20:30:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1A50A611BF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YChIrTk96Z4a42R1bFA/65BroOsG/+8SQ3BTUj6HSe8=; b=mtYvj3NoTkMv5H
	FYpi65PoHXZDYt+z/aYfuWdfqKOWoGm+H+NpPT0esiKk+f2AH6mh2FXlOMZ682i3bqxU7VvHAoo/x
	rb0gbexRa+O+z63umXMYSKhsznnkETlJaGjFOJRMCSnzrEGCS25/99MDoBsPOGbAw6c9K5EY62lGU
	EIazopJZZ4kSUu9jVefM8cEkvV+hhr0q5fzcHRn2K+BzZzVINJkMgJBL2JcyNHXdBRciuKYtzklJp
	cMAtVIkpirvowoiNEFY+VICBpYLCQwgfVr9xiGifbdwy1fOBQChq7k9KriEnyzADqKhQmfocMJlVf
	rdd8ULeDf7xZm7ZskLuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mno3N-008pyG-CI; Thu, 18 Nov 2021 20:30:41 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mno3A-008pw0-4e
 for linux-rockchip@lists.infradead.org; Thu, 18 Nov 2021 20:30:29 +0000
Received: by mail-ed1-x52a.google.com with SMTP id b15so32563579edd.7
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Nov 2021 12:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wwg+Ca9jb9pUEm7rE+CduZsgo7GneYWcNrMAsYNN4w0=;
 b=J9QOzTq127+fjB9bPz1Tnkq8fAIAL3i5cPhju4I+zno7r6Z0aHsjUzVuJ+w32/a2Q7
 RIO526yWOq/eal3vMxgZIKyyhjNMlEhgJs1eDXiPQE0NsNprB6qriiR7Wgsbrecrq+ez
 QuyIbgcopabzqAIu2L6lhS70RNLKh00a3v3a2ZprgWdnPCFAeWW0kiwblid1NUwc96yC
 Tp8dl/pjplMx8XddvkdoNoROcC0Sub/8IwP0p5ArtnbG4R3QPLL74z9buVSle0iD2Nc0
 5tLmpZhp7pg5CqPUA69D4PYecmNlT74wayeiqMWMg/ZYZsNGalBVUnMwRNtMKDhXAECX
 o9NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wwg+Ca9jb9pUEm7rE+CduZsgo7GneYWcNrMAsYNN4w0=;
 b=qIxF5D4blEFd0/8R1zRbi/rOhYtc0Iq16lddfi8VZTf+8+a0HJ62rfl3WLWfE+9k9E
 07UugO80GV8+LrmGUHm968+HmRmv5w4T0B+jJLslv63PZgaxeLsI1wgnF5EJlZnI7kV6
 G48y+Qj1hP8dxPSw2clbLWFzAo6e9Imd6vThBi99s3lLexVHZUTMLuwL+AyyvpCA8eoA
 ZNDZpMFHfjvwN1ysk1ACi3mnxe+wf4Deox0tJygyOzMLg75o4PUYgEjZYpeJo4vL3baa
 xjBkxfWC1m0RxyVCMVLpFODVl+G7UzWtOIVf9lZqj4ai3DQacvnm2Zz6jG+g25mWOvZV
 MKmQ==
X-Gm-Message-State: AOAM530ByvyMvUlV4nwinoSdvRW4Xq6jY4pp5xw2Cz1lqOskyJcmH7ns
 M0klXOanLCkvQk6YR3JXNdvTOpJizH1F3QqR9DKUBA==
X-Google-Smtp-Source: ABdhPJwmTWmlHt4Iw5Q0nSvh9x75b6Y1V3AEdkg+yigj2bPoOupsbO8rrcQLoT70uyjwd8iVWqIasKW1gEPKi1IWv7Q=
X-Received: by 2002:a50:ef02:: with SMTP id m2mr15409971eds.172.1637267425669; 
 Thu, 18 Nov 2021 12:30:25 -0800 (PST)
MIME-Version: 1.0
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <CACRpkdZ2-MRY_L2J4RvKDNW1yyThg7KUFbd80ZMpRY209RNxnw@mail.gmail.com>
 <YZJDFhMNyRaH+HFE@smile.fi.intel.com> <YZaFuGZ4AEN8HjUv@smile.fi.intel.com>
In-Reply-To: <YZaFuGZ4AEN8HjUv@smile.fi.intel.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 18 Nov 2021 21:30:14 +0100
Message-ID: <CAMRc=MfD54gjMcZazJqXKUMTaW45_qKH6GSLOfs4eciKGtfrCw@mail.gmail.com>
Subject: Re: [PATCH v1 01/19] lib/string_helpers: Introduce
 kasprintf_strarray()
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bamvor Jian Zhang <bamv2005@gmail.com>, 
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_123028_192669_1B0E2B27 
X-CRM114-Status: GOOD (  18.44  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, Nov 18, 2021 at 5:56 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Mon, Nov 15, 2021 at 01:23:02PM +0200, Andy Shevchenko wrote:
> > On Tue, Nov 09, 2021 at 12:42:00PM +0100, Linus Walleij wrote:
> > > On Fri, Nov 5, 2021 at 1:43 PM Andy Shevchenko
> > > <andriy.shevchenko@linux.intel.com> wrote:
> > >
> > > > We have a few users already that basically want to have array of
> > > > sequential strings to be allocated and filled.
> > > >
> > > > Provide a helper for them (basically adjusted version from gpio-mockup.c).
> > > >
> > > > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > >
> > > Fulfils Rusty Russell's API design hierarchy requirements
> > > and help people to make less mistakes so:
> > > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> >
> > Thanks!
> >
> > Should I resend, take into mine PR, or you just apply it as is?
> >
> > As I answered previously the series doesn't require additional work
> > from my perspective.
>
> Okay, I'm about to send a PR to you and Bart for this.
> Does it sound good?
>

Sounds good to me.

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
