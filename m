Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF617C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 15:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=viMU+boTcsgIDchqdH0sy/cyg423ubyFvSEET1Ihyfs=; b=WccuWB949MDkFr
	xDMwIbL6tApVeC8omdvjTNnKwqJEZrRUDlaESwlAYz7lgd1JG7nTihL1+Jame1ijFFWr1DAk+zgtt
	XvswK/TBHMfzZYsaRpHYdWMkCe2aMTA0eGI6X1LhhKXvU3UknHD2/nLLuPtZiqNzvODbTdXG2TRmC
	k/Yuk/pheLYxhn7cSnIEoy/LoLbl9Il0tRzpFO/IWQmg5dS6MHYZVKB4qdqG9kiuhiKIp3YXDj3ys
	U4zSELpeea+7CB+5VsBgo3at7HT6PV2Nihwe5UZ5aQe9UVHCS9OQYhhVOtx9SBYBLyURcL5tP6T8S
	wkv3zKAAizA5comPEI8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzgfC-008nP3-GR; Fri, 10 Jun 2022 15:35:06 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzgf9-008nN3-FK
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 15:35:04 +0000
Received: by mail-yb1-xb35.google.com with SMTP id x38so1768776ybd.9
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jun 2022 08:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=C14q5Dy6Du+XHvgXj/VVrOd11AGI0NT/UdqNE8EdfT4=;
        b=Knbu7UAyfQ9/FBzc3DL1apaZSuXrKn83d3MtaAVYfYl0no7peCglt6G2ZzMZzV67dq
         AA705/VF7SMPxEnDOG07G247GA9eif2QHe43vSOQB1WDZM29CSIiPIFG0nObuGBWL/5g
         9cDIjOpqkH90hUqh1OPfGQ2eP3S5DtxFURji18+qpMr8BIqqxYmECZha+3/OaY+a4Go4
         /DLQa1gi83e5YJcJm5gQ4ma5kN6cLPnycMHXGfXtcZ217Hj5Dhz4Pzhwl9+f4yhlg63Z
         dvGUNmc+7vuWipq28hCch+cpXZN7rRF4m0TO+KQ6QBU27ft2JjUB5CNtaLp1JGx3BsBL
         LsJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=C14q5Dy6Du+XHvgXj/VVrOd11AGI0NT/UdqNE8EdfT4=;
        b=zUEPVObGXChsPH4mixAl80VDmk4an91ftY9MTuZNnvGde9O3vVvp4T3gQj8Tkowtvv
         UeA8fG6xRDTSuFiTBFaBXLY3N3N03IvuqBCItU0zA3PgMZAlinMbjBsjJCrrUGfk9Qx1
         1Bh+TKWs4XIDG5lS6iZwsQtnmvgH+8qYIIKV8duG/2hkEw9Y/rKpQB4wNduf51uGHfDM
         eEJ98Mgh0LXyyWojDf26YXh1pWFxmXqts6z+i/1wTqMsl94S7GVZ9qw7rbnp5D2VjVA9
         0Nu2tf/oEvCsne0zUe5LtaApWOHu3pNbGIOkCvItjA1+8os+TLeR4nIJAtMwb78d5rm0
         ZRxQ==
X-Gm-Message-State: AOAM531L2TtlYMSCrbwPFF4raF6wAJeFXArSJ0EnLWswvOxh+UENMsVF
	jFWSHGXOpkV2ITeHpHXeZVPSnsxRn0lttuJ/3OY0Zko6
X-Google-Smtp-Source: ABdhPJyE0wTeNeQSFfZWpdVduVIqNiDJ6Db1s47ilpLanpPzyafdxrAH+yvrGRlISWMDLXFqBCaW6UEvu/qHPAhZKxk=
X-Received: by 2002:a25:d195:0:b0:663:ff7a:b5bc with SMTP id
 i143-20020a25d195000000b00663ff7ab5bcmr13226171ybg.51.1654875301266; Fri, 10
 Jun 2022 08:35:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de>
In-Reply-To: <87y1y48spg.fsf@jogness.linutronix.de>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 10 Jun 2022 11:34:47 -0400
Message-ID: <CAMdYzYr-Wo713Y4qjboTpoK6GcrYfKCfRJAEizwXw6-=dymVzg@mail.gmail.com>
Subject: Re: [BUG] Threaded printk breaks early debugging
To: John Ogness <john.ogness@linutronix.de>
Cc: Petr Mladek <pmladek@suse.com>, Sergey Senozhatsky <senozhatsky@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_083503_620577_9B504CF2 
X-CRM114-Status: GOOD (  21.35  )
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

On Fri, Jun 10, 2022 at 11:05 AM John Ogness <john.ogness@linutronix.de> wrote:
>
> Hi Peter,
>
> On 2022-06-10, Peter Geis <pgwipeout@gmail.com> wrote:
> > However I've run into an issue debugging early boot issues. Anything
> > that causes the kernel threading system to die (for example here, a
> > NPE) causes the boot console to halt before it outputs the error.
>
> A null pointer exception should trigger a panic, which will cause printk
> to enter direct mode for the oops. It should be just as effective as
> before introducing the printing kthreads.

This might be a side effect of the fact that this is on a low powered
arm64 board. I noticed with threading enabled during large bursts the
console drops an excessive amount of messages. It's especially
apparent during the handover from earlycon to the normal console.

>
> Can you please provide a test case or patch that will trigger the
> problem you refer to?

Unfortunately no, unless you have a Rockchip rk356x device with both
DSI and HDMI. We're working on adding DSI support to the new video
output driver, and when both are enabled it tosses a NPE.

>
> > Would it be possible to have both a kconfig option and a runtime
> > option to toggle printk_fallback_preferred_direct()? Currently I've
> > had to force it at all times while debugging.
>
> It would be trivial to provide a boot parameter for this behavior, but I
> think we first need to see a real problem and also see if we can fix
> that problem.
>
> John Ogness

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
