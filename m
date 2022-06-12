Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6557BC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FTuOk0o8UHud95H5rtt3ERfVzKTjt0tZmIjS1/fd/E=; b=zWAHOY/kPr5mqM
	XFMwPABu8p0C/3dHg2p5CgTRPRKp+pv2qJ3qwk+iTeWwqUbFJ7fbLjxIOmT0uB7JSFMOIUS8FwApm
	lky2d5PvJHB3Ysj/bccy4FmgSd8gCvPA+vq1RaKAh5H1XoDIiaegqsy4RlBLOMXz86H8WgfpFZ5gy
	EJhmkKQX4eXh9Iwa6Nuyc647kDUBJo7pQKeQmKn940wI6CLaP87dAywAK0Z02hgzbJD46FsBTQm+w
	4mui1Mdwuge/e4iaYWElOyDQAznxZvY0CGE6+SpJfsbymhDxvNmuWfFUDL3whB9LJqY4Yd0a38JMM
	fFm7qpI7ilKSGc4EtD/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0NgN-00Gcdv-Tq; Sun, 12 Jun 2022 13:31:11 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0NgL-00Gcci-PY
	for linux-rockchip@lists.infradead.org; Sun, 12 Jun 2022 13:31:11 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id h27so6000089ybj.4
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Jun 2022 06:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jZK9seyLhEtguREoqjcxM6GoxzolaKvu9wYtMvBrtBY=;
        b=ZqoHvd7CG5KBmX1FLe+L8i01SEWKpCro85xP1dfO7EacPV8GIBBrZOMK7iuVRFVLVz
         +jYGoyps1ep5Sa2Jm+hL8kSYMBMiBKkQW5sbeFvpQ26TZlIj0vXu/WlQ1GgBqclK4gPo
         mf/hOTJAWp+YCGDDKjjmkzb2ycDw/S/Xw5HCE2HgbNkzj9avH1+tF3cRO20MmyamiqD3
         0pbopRR3bGNm+6fZX+jXRb/fxIDRPKkCGrm0mVQHo+S7rjy27t0shoUZpZiPnF9/MlzR
         YVHi0Onn/Hg+89vRd7Tx8SDiLSWIxyAiWrxJApmcueW/0ed1m4s3/OFmKvRnYAA1P6EE
         /nZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jZK9seyLhEtguREoqjcxM6GoxzolaKvu9wYtMvBrtBY=;
        b=mmXO7Tx3cIwW9hnR3Q3Koag0tKbqSGYBKOru6QxzM5UkPl58ljWye4JysuMWFe0mjz
         xPjBef02DBb/e4cC/GTfcwFGD12JRMvt3N+zGdniiIZpPAkvXBvn7oUVKTc0JnxD7IW1
         xUg55uNhSKbxzNbMAy/JZU1ZSYNiL1AfRfIwo7k1wijz1mrzxcQ2cN9X+YHfZ1z1jdID
         hA3wXh3h/tYZTz0RYqwfSR7pAtHqgSQXPnWYARwOI0++cIKddAMUt+YXqYgWPdNaBpR5
         yXa4t2Pwb+hizbCXwwz/Niz4jWkdZ/mG5wo/vOs3H+AX6Jq6oQGOBJqlH5ETRgD0KVqA
         e48w==
X-Gm-Message-State: AOAM531lmhTZzFzGXLgnOHkQQHTsU0hYe6/ylIqFDZXcG8zG3MknHbaC
	YgNHiRHPjMO6tpFjZJWl140VR3w3m5ZJO1fsU2o=
X-Google-Smtp-Source: ABdhPJw2TF8/MHzEcpbFalBW81mspwFL/pUg0AgJtnIKYyonLvXFewSvngmSeTKGyuRMc78G4MQZlMJ+cz/EbR/4Xzs=
X-Received: by 2002:a25:a066:0:b0:664:411a:1071 with SMTP id
 x93-20020a25a066000000b00664411a1071mr16726400ybh.366.1655040668484; Sun, 12
 Jun 2022 06:31:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de> <CAMdYzYr-Wo713Y4qjboTpoK6GcrYfKCfRJAEizwXw6-=dymVzg@mail.gmail.com>
 <YqVWL3gpfV9HJBLe@google.com>
In-Reply-To: <YqVWL3gpfV9HJBLe@google.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 12 Jun 2022 09:30:57 -0400
Message-ID: <CAMdYzYoOcLhUpqOEmXQ7t90BOgYczfq0AxK5+JKQqrPo4NGgqw@mail.gmail.com>
Subject: Re: [BUG] Threaded printk breaks early debugging
To: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: John Ogness <john.ogness@linutronix.de>, Petr Mladek <pmladek@suse.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_063109_886791_5DB335D7 
X-CRM114-Status: GOOD (  13.23  )
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

On Sat, Jun 11, 2022 at 10:57 PM Sergey Senozhatsky
<senozhatsky@chromium.org> wrote:
>
> On (22/06/10 11:34), Peter Geis wrote:
> > > On 2022-06-10, Peter Geis <pgwipeout@gmail.com> wrote:
> > > > However I've run into an issue debugging early boot issues. Anything
> > > > that causes the kernel threading system to die (for example here, a
> > > > NPE) causes the boot console to halt before it outputs the error.
> > >
> > > A null pointer exception should trigger a panic, which will cause printk
> > > to enter direct mode for the oops. It should be just as effective as
> > > before introducing the printing kthreads.
> >
> > This might be a side effect of the fact that this is on a low powered
> > arm64 board. I noticed with threading enabled during large bursts the
> > console drops an excessive amount of messages. It's especially
> > apparent during the handover from earlycon to the normal console.
>
> How many CPUs does it have?

Four and all are online when the error occurs.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
