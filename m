Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6C2DC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 09:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8d99zGd9o8MBRB/HpzeEX4KqlH9VW4R7pRP7Rg0Vqs=; b=32quNIiVpSQqnw
	caEXnmJMNNxPG4AqJO5kEXAeJaytgK2SSXb3sDpduKE9uV1MsIS0g7Yus1+Q7K5Hz66v8I9P1I58H
	+nNMV9Nv7hAr17PJEN8mngBVEWpnGa2L6C/31c0oWvtKk9KcOftcm2ePU4ZCMSwYlEHxESawGR8kX
	zcYfixHWD0VALlXK4sFaIHFlvJo8L0LhSIhQzaQE233jbgg42rbJL8GR8zCuexxca0MFR6J8aSkqK
	ZRqLlRGqCjqw7I+VAw98ZLleueJNuRKrwHt0cmi2uKct6OGH0F/DjrYpvM8/Kztq4I94HjJJ7NyCx
	7V+Q1qSsjkYN6w5Ozg1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0g0b-002Nw6-V5; Mon, 13 Jun 2022 09:05:17 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0g0Z-002NvU-GE
	for linux-rockchip@lists.infradead.org; Mon, 13 Jun 2022 09:05:16 +0000
Received: by mail-pl1-x62d.google.com with SMTP id o17so4571707pla.6
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jun 2022 02:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=yf4uQqjq18xkrHLkb2+6jzY6i4Q3FrV7ACwW2a8VXng=;
        b=iasKB4UXWbJ6k2SuGWn4kaXn0zU/zbIo8v2p1gYX2ZjzCd/raAgen5kmiTSxBWsUqS
         7AKW/qJtnBVVDMagZpUJMb7crZ5tKlOD8s78G8wkgm8JouXYFrnN3DrDhYH2J37E3mIy
         JYuDz9ldgWFEaP3mtRZvcUjzoQvgeAyt1Upvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yf4uQqjq18xkrHLkb2+6jzY6i4Q3FrV7ACwW2a8VXng=;
        b=iFygcZgcN3teRr0gl0IMNU3yM6Ml/aK7FkXtuZfo8rybG70uYmIfsx076+PnswFtOD
         GsWw2Ggnx832BnP/UTLtiFIl4TshrOtk0SbxShBLVLxSWR0wUvIxMG64gHkXkdvp7J8q
         F2K/Jq+i/RgGbUSHHuxllSHRL+uOBF+UH9/P8y3iW2r/lGkm4UupNDZxq1V/qVmmfjjm
         O0WCSRCoMaoF8E/x51W50qS37Nvfbn+H+p6ELAkciYLUc/7MNGB9OQhH1TCRrfE0VQ4I
         K6X58bHVGy35/l5CRLyQr5a6YCKhdNeDyFcQVOditfPqxmo4EZmdqibijedmIXZ9V2E4
         Iklg==
X-Gm-Message-State: AOAM5331bfZHwbFwRBUS5JncBfkLQqOfmxMRxDYfLq8B845PwgXRXBpO
	GDuJDNQLAw3HH3llIc5p32HN0w==
X-Google-Smtp-Source: ABdhPJxRKgV21sj5bmCx6fBT63Z0QdrSXxDIH9avQ4LVICaS71VFsPjZfmkmIMO6dd7S6ikcA5hlXA==
X-Received: by 2002:a17:902:9307:b0:166:41a8:abc0 with SMTP id bc7-20020a170902930700b0016641a8abc0mr54929457plb.135.1655111113782;
        Mon, 13 Jun 2022 02:05:13 -0700 (PDT)
Received: from google.com ([240f:75:7537:3187:de22:3777:8b31:5148])
        by smtp.gmail.com with ESMTPSA id b10-20020a170902650a00b001675991fb7fsm4526874plk.55.2022.06.13.02.05.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 02:05:12 -0700 (PDT)
Date: Mon, 13 Jun 2022 18:05:08 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: John Ogness <john.ogness@linutronix.de>
Cc: Sergey Senozhatsky <senozhatsky@chromium.org>,
	Petr Mladek <pmladek@suse.com>, Peter Geis <pgwipeout@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Threaded printk breaks early debugging
Message-ID: <Yqb9xOBiY/262lhk@google.com>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de>
 <YqVZ4CyWTiDgngkA@google.com>
 <8735g9mqo0.fsf@jogness.linutronix.de>
 <Yqazr060OLp2Rpbk@google.com>
 <87wndlge43.fsf@jogness.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wndlge43.fsf@jogness.linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_020515_610399_2C3E3654 
X-CRM114-Status: GOOD (  15.55  )
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

On (22/06/13 10:36), John Ogness wrote:
> >> IMHO, no. Especially in that situation, we do not want printk causing
> >> that atomic section to become even longer. If the machine has entered
> >> normal operation, we want printk out of the way.
> >
> > At the same time printk throttles itself in such cases: new messages are
> > not added at much higher pace that they are printed at. So we lower the
> > chances of missing messages.
> 
> That is true if there is only 1 printk caller.

Well, which is the case when num_online_cpus() == 1?

> For SMP systems with printing handovers, it might not help at all.
> I firmly believe that sprinkling randomness into printk (i.e. system)
> latencies is not the answer. We need to keep printk lockless and out
> of the system's way unless there is a real emergency happening.

Yeah sure.

> This particular thread is not about missed messages due to printk not
> "throttling the system", but rather the kernel buffers not getting
> flushed in an emergency. This, of course, needs to be properly handled.

True, but Peter mentioned

  "I noticed with threading enabled during large bursts the console
   drops an excessive amount of messages. It's especially apparent
   during the handover from earlycon to the normal console."

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
