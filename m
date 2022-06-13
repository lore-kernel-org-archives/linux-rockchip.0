Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD384C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 02:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AdIHEDL17J1UblGlfw5UfhtWBnwM9xg6CsVwFItsp4=; b=HjRKFEdhrpqSdM
	I1VxEJyjqaEDwCeifeMwO/VyJQagAmQqGqpUf1o48/axF2X62sXk6b4ve7fFUXRSpUH0Gu3t0nqBf
	rgKM2YqH1M/z/0Cav0VtJjvqnsOZuYwzRoY9kcJwdfm3tRASqG9gM0VyFTmyyyM8V3JKy/iNwR8CN
	z2cjK8YR++UN+zLt+7NL4vkSrXP7aE3YHSlXnktUQWWhcf9hXetRoeILgYVYZJy3Pda6H7zrG65PN
	VQRGn4PB6MXaKGHRCjLHjEgAJuv/gPHWQ0712O5uvvpYhyPH0w/yxlcnljhK7yUyZczgcPTcap7h0
	hoeJVsDNvT++opr15N2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0ZkD-000rmC-IR; Mon, 13 Jun 2022 02:23:57 +0000
Received: from galois.linutronix.de ([193.142.43.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0ZkB-000rlM-17
	for linux-rockchip@lists.infradead.org; Mon, 13 Jun 2022 02:23:56 +0000
From: John Ogness <john.ogness@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1655087030;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=L4pUhakLpeWdRTQcLyq5yzn64tbD6Lu4RAFJSVoJmmo=;
	b=TPSgRqSxJKpUzMpRDYleQ+mW3mGgo2s7Z6qJlxG0rDJaxuUCiy4IJ7yCEQfSCtsVj7tvu9
	WVWVNOjTbBWN1cLTJa0xaA4sERf/1/MLNxpRxXETrtwP8Uue73f3uOvhC2r1YLl9dHSzeu
	d9vC9L1doE5A611uE+RClgTZzdveCUbt1Stdyd66VN8J4ia+dGBd+Xp4QZfXCUR3Jer5mN
	AhHohhx4EYiDNIR+GYjwKIkKMB/blVxQCCP+rslP6cHoa1mw67ZQpYtx0Ytv0oYIUBGUvA
	AsBAsS30junXnmCxU3BqCN6KiagBWANSZ/4jyqj0hcLKYrCeOYJeLMl5ETXgiA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1655087030;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=L4pUhakLpeWdRTQcLyq5yzn64tbD6Lu4RAFJSVoJmmo=;
	b=oq26gIIX/4R1s70Vh5UkPEYUPdDHS1kl8SGMOhIP6rqLLgnvjq3GF/kVztoroIA5H3JgUy
	DaJGTklOUb5xc8Ag==
To: Peter Geis <pgwipeout@gmail.com>
Cc: Petr Mladek <pmladek@suse.com>, Sergey Senozhatsky
 <senozhatsky@chromium.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Threaded printk breaks early debugging
In-Reply-To: <CAMdYzYosXiQc9=t7daPaWWS=rnTVT6nnZvVBXDycBQvfR-1FAA@mail.gmail.com>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de>
 <CAMdYzYr-Wo713Y4qjboTpoK6GcrYfKCfRJAEizwXw6-=dymVzg@mail.gmail.com>
 <87zgihlbst.fsf@jogness.linutronix.de>
 <CAMdYzYosXiQc9=t7daPaWWS=rnTVT6nnZvVBXDycBQvfR-1FAA@mail.gmail.com>
Date: Mon, 13 Jun 2022 04:29:50 +0206
Message-ID: <87sfo9l2rt.fsf@jogness.linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_192355_255636_10D642BF 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
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

On 2022-06-12, Peter Geis <pgwipeout@gmail.com> wrote:
> The buffer isn't an issue here, everything is available in dmesg when
> userspace becomes available. Instead some messages bound for the
> serial console are never output.

OK. Good to know.

> We run a serial console at 1.5m baud which is significantly higher
> than most SoCs which default to 115200. I have noticed some timing
> differences since the introduction of the threaded console. A
> significant amount of information is dumped very early in the boot
> process (between 0 and 4 seconds into boot), as most drivers are
> probing during this time. It also happens to be when the earlycon
> console hands over to the normal console. There is no abnormal
> debugging enabled, the output is a standard (non-quiet) boot log. The
> question is why is direct mode not triggering during a panic?

Just to be clear, you are not losing any intermediate messages. Only the
tail end of the kernel log was never printed. Is this correct?

This may be the same issue being discussed here [0].

John Ogness

[0] https://lore.kernel.org/all/87v8t5l39z.fsf@jogness.linutronix.de

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
