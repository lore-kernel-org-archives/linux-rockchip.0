Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABE33C43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 23:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxoLI4ubeNCScxakSlMsu8XYjmQ5qMXb+IKD1Y5NvCQ=; b=OalcHH4h1b98+L
	NEbU2IZvme82yy331bhj+Er5LhrCiRkw3ljFU8L26uOdWPcnwGpexpH6+4tPesAtl5nfY5qk3T4VH
	ujsFsSVpcbZycrATOmdDsT1f+DZyS9RiB4Y0gMxNRDVbs5rQ3TIAhfmBH/+orGJxUFU7aFNxH0+H6
	ltav2AgEfxvI688gE+aSJLqmSVGiwa0HtraaD2FiPDd5M/7o3pDsLE76oSd6DPobaZUx2AyH85J2r
	OdOfR6FIgipBf1ZptSBI94/yoCuNthFHumF+kFao/BWbCrgfvoAkudIM05QMjtIB76pZKZ8bzqNcq
	iyVxwDlJwKMMW3QmXpFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0WhT-000Vub-SK; Sun, 12 Jun 2022 23:08:55 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0WhR-000VuI-3X
	for linux-rockchip@lists.infradead.org; Sun, 12 Jun 2022 23:08:54 +0000
From: John Ogness <john.ogness@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1655075330;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gh5KW0h/PquKzD84oAIRkbBhQi66jp8WkKcHulSua/k=;
	b=LXRJF3x32FhyA3KD2v/tpwHJZ61XnyDuon/HeOW2u5ZMLOTqik6VSrL5eMhJhdZdrTR8mf
	khCYaXg/hy6GQb2fEKIak2SibfZLEd3U+iQerihw/ft1rxI7NMtX/7vx9DdjWpIDmGf6F9
	PPApFVl2NPDi59PiV8oJforvOe/wPzZCtVN5cD/GDhutTYj9eOnwob/VHcNimthL4WBh6f
	HFViIeucTXfQtMk4xa0y9qfnoOfO3u4YGYjKJqkBM97pcRU8bGjYi52bEd9olLBPgcFEPw
	uGQQI/Vq0yBac6gtYkQwc9K2NeuEUypt8T4DJCvWoCyspxO3DBoEoHC54e7myQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1655075330;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gh5KW0h/PquKzD84oAIRkbBhQi66jp8WkKcHulSua/k=;
	b=Ro1qFTeELgknkRgH+JuRQwicT7B0kuI9sG4e58oqvTVmKYYWYtwCa550ecBRWeX9964ai2
	rshj6ISbP3Fj7xCg==
To: Peter Geis <pgwipeout@gmail.com>
Cc: Petr Mladek <pmladek@suse.com>, Sergey Senozhatsky
 <senozhatsky@chromium.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Threaded printk breaks early debugging
In-Reply-To: <CAMdYzYr-Wo713Y4qjboTpoK6GcrYfKCfRJAEizwXw6-=dymVzg@mail.gmail.com>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de>
 <CAMdYzYr-Wo713Y4qjboTpoK6GcrYfKCfRJAEizwXw6-=dymVzg@mail.gmail.com>
Date: Mon, 13 Jun 2022 01:14:50 +0206
Message-ID: <87zgihlbst.fsf@jogness.linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_160853_333713_C148D7EA 
X-CRM114-Status: UNSURE (   7.48  )
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

On 2022-06-10, Peter Geis <pgwipeout@gmail.com> wrote:
> This might be a side effect of the fact that this is on a low powered
> arm64 board. I noticed with threading enabled during large bursts the
> console drops an excessive amount of messages. It's especially
> apparent during the handover from earlycon to the normal console.

I guess you have a very small kernel buffer and are generating unusually
high amounts of messages? Is there a reason you cannot use a larger
buffer?

Or maybe you are generating a constant amount of messages that a serial
port could never keep up with unless it was interfering with the system
in such a way as to slow everything down? This is exactly what printk
should _not_ be used for.

John Ogness

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
