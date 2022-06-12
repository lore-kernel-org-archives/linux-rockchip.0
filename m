Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EFE5C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 02:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AQHeIf2e4hcY/pytZptnNC/dSUuEVgweI5JjNhxscY=; b=hZhVoEaa8mq5hJ
	LvH9yzV6rByhCHgdWFd9rk1oIOq+GjEv/sc4FwlmR88dNzPJBYj5LFeRXLtYDV7tqJLNozC5AMISX
	XzYKCQspTaVLL8VJEe4h83CWoIgqt5leRjhdjBU8hc9aAerfDzKS0qiWsmpdpKSD+zE5xg4gkTMGe
	BvC889EFVect+xJa3qd2gGUrB5812+Ab8GeCgEPR0hm7KsMYk6ouWHo5GJGk/CKxra+GDZOQXm/wJ
	tIvEz1DBxf/0Mp13AxOfAQPywuzJRCCFUfdssbn9/Mofi1TEELncpcN3e7gJXqubD+4ESMHYlsP0V
	BdH1cS6IxXZmNP3NQL2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0Dnc-00FIvX-Gk; Sun, 12 Jun 2022 02:58:00 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0Dna-00FIv3-3g
	for linux-rockchip@lists.infradead.org; Sun, 12 Jun 2022 02:57:59 +0000
Received: by mail-pg1-x534.google.com with SMTP id 123so2676929pgb.5
        for <linux-rockchip@lists.infradead.org>; Sat, 11 Jun 2022 19:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=sSf3C14fXRZieFCud/MSZcx3AAgYhpORc+Rvri3QSPk=;
        b=nBKvbXxfbQvosIyHd/QjddnnXa8XgLGzhw53c1wgST+zceCv7jRDvgJVoWMDNDX9Jp
         5mQzb1SVwWgMvM07ZbHMiic05mK0k+ozA3j01Y4UvT6y9d+iti5yLPmWfbVVN1+gDGOp
         pFO9UHcD/HqqvpKTZYNtk+PU6i6oNxSxGtLKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sSf3C14fXRZieFCud/MSZcx3AAgYhpORc+Rvri3QSPk=;
        b=AwIrZ/I+sK7T5Lan82Yec+4W8amZHIlhJF477oHneAVPXw5i8vgUEVxND2uG/PmFNh
         GpmNXoItT+Ncwli0fi7TAN9lqbUPL43N5/BD4dPadKvjfKNoTW9BshbVsnMbGvZiscre
         qBUqggHk1icAzhQo/OMGHPgk+ZpdJasSJMeclqa1tEKTrehsJ5sqVpInThsHpJ0FPzig
         hG5+XFpjCrMeKK9wL2b8tqO/fHdegQ35XVxktEwoTA16B6pUyA45LqeazeX8ASbMehxm
         otks5A6f3LPxJLZ5j23O0A1CAA7mwmxg2hjdJQdm+UOdn4y0/ZW1v1RpPfo7N0A4CMWT
         VcBA==
X-Gm-Message-State: AOAM532xsUKHF2g27QJuBlBcEaEn1XKK3K90AEKhRW16kkjVrvTaJvXO
	SgazN6r+tzQSevn8TbcJEhYIkOBL5/G2mQ==
X-Google-Smtp-Source: ABdhPJwUOJz2aQFaeksW5WGesCTxVAu+KUnNGIRMpasqGWgun8qtmY1t7mkUWzBeN0JuYdPPEluplQ==
X-Received: by 2002:a63:474f:0:b0:3fd:6796:835f with SMTP id w15-20020a63474f000000b003fd6796835fmr35913016pgk.3.1655002676055;
        Sat, 11 Jun 2022 19:57:56 -0700 (PDT)
Received: from google.com ([240f:75:7537:3187:a53:f177:9f19:3ef9])
        by smtp.gmail.com with ESMTPSA id g17-20020a056a000b9100b0051b4e53c487sm2324811pfj.45.2022.06.11.19.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jun 2022 19:57:55 -0700 (PDT)
Date: Sun, 12 Jun 2022 11:57:51 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: John Ogness <john.ogness@linutronix.de>, Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <senozhatsky@chromium.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Threaded printk breaks early debugging
Message-ID: <YqVWL3gpfV9HJBLe@google.com>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de>
 <CAMdYzYr-Wo713Y4qjboTpoK6GcrYfKCfRJAEizwXw6-=dymVzg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYr-Wo713Y4qjboTpoK6GcrYfKCfRJAEizwXw6-=dymVzg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_195758_216646_7FD1258C 
X-CRM114-Status: GOOD (  11.97  )
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

On (22/06/10 11:34), Peter Geis wrote:
> > On 2022-06-10, Peter Geis <pgwipeout@gmail.com> wrote:
> > > However I've run into an issue debugging early boot issues. Anything
> > > that causes the kernel threading system to die (for example here, a
> > > NPE) causes the boot console to halt before it outputs the error.
> >
> > A null pointer exception should trigger a panic, which will cause printk
> > to enter direct mode for the oops. It should be just as effective as
> > before introducing the printing kthreads.
> 
> This might be a side effect of the fact that this is on a low powered
> arm64 board. I noticed with threading enabled during large bursts the
> console drops an excessive amount of messages. It's especially
> apparent during the handover from earlycon to the normal console.

How many CPUs does it have?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
