Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9961BC5479D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 10:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLIljT92FOQdoxSJvEogEg2t9//u+GrZqALf3zDl3dk=; b=RzNBkgg/G+ywtp
	NqiTcbLpYPbthBc1eqaKH1UuI6xs30mofERExrnWNCjYjKQNmfEcNsW8dSI9DzFuti5aIFtESqHIA
	Lf8KY6ZbttK7bw8nUknykRyFDoALic6+cn9UarkiAGk8kSF6cmTQ4Qi+0EeHUjX80uWgB2VHHqiDb
	6WBqQZanZW5iZvi1cIf1ULHi3lHy9Xc0Ud5d77GMpkCbuckIP+U3Uyfjn4KAR07et/YBJO80OXXZ0
	2ftPhyQf4EJJ0NE39tvSGKMq9sbpYQlvESDGdvXAlOouNGYnxkByCEMzvVrMkb9B3QpBTkLTvjrdW
	SzT9D15j+DVmYxYhnnOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYY9-00Aqut-Uv; Wed, 11 Jan 2023 10:41:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYXx-00AqrM-J7; Wed, 11 Jan 2023 10:41:32 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFYXv-0004Rf-N7; Wed, 11 Jan 2023 11:41:27 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: wens@kernel.org, Peter Geis <pgwipeout@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: Add dma-names to UART device nodes
Date: Wed, 11 Jan 2023 11:41:27 +0100
Message-ID: <18284546.sWSEgdgrri@diego>
In-Reply-To: <CAMdYzYpXtMocCtCpZLU_xuWmOp2Ja_v0Aj0e6YFNRA-yV7u14g@mail.gmail.com>
References: <20221106161443.4104-1-wens@kernel.org> <CAGb2v64vKbgZxZUyVSdTfzuukHeUdK-8ymxUVGYg=GGShY6O-g@mail.gmail.com> <CAMdYzYpXtMocCtCpZLU_xuWmOp2Ja_v0Aj0e6YFNRA-yV7u14g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_024129_695414_964E0512 
X-CRM114-Status: GOOD (  28.67  )
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

Am Montag, 7. November 2022, 02:50:43 CET schrieb Peter Geis:
> On Sun, Nov 6, 2022 at 8:28 PM Chen-Yu Tsai <wens@kernel.org> wrote:
> >
> > On Mon, Nov 7, 2022 at 8:52 AM Peter Geis <pgwipeout@gmail.com> wrote:
> > >
> > > On Sun, Nov 6, 2022 at 11:15 AM Chen-Yu Tsai <wens@kernel.org> wrote:
> > > >
> > > > From: Chen-Yu Tsai <wens@csie.org>
> > > >
> > > > At least one implementation, Linux, requires "dma-names" properties
> > > > be used together with "dmas" to describe DMA resources. These are
> > > > currently missing, causing DMA to not be used for UARTs.
> > > >
> > > > Add "dma-names" to the UART device nodes.
> > > >
> > > > Fixes: a3adc0b9071d ("arm64: dts: rockchip: add core dtsi for RK3568 SoC")
> > > > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> > >
> > > Enabling dma globally can cause some interesting issues, have you
> > > tested this fully?
> >
> > It seems to work OK with the Bluetooth controller, though I'm not running
> > extensive transfers over it. Scanning both traditional and LE works, and
> > does exercise the DMA controller.
> >
> > If your worried about the DMA controller running out of channels and
> > impacting other peripherals, the DMA controller for the UARTs is only
> > shared with other UARTs, SPI, and PWM (which the kernel doesn't support
> > DMAing to). The UART and SPI drivers can fall back to PIO if DMA isn't
> > available.
> 
> Nah, enabling it for bluetooth is fine because you have flow control.
> My issues have been on channels without flow control. Without DMA it
> simply drops messages or the channel hangs until you close and reopen
> it. With DMA, when an overflow locks up the channel it is usually
> unavailable until the board is rebooted.
> 
> It's the main reason I've stopped daisy chaining boards to each other,
> when the board powers off the pinmux pulls go crazy just long enough
> to lock up the other end. It sometimes happens with reboots and large
> data bursts as well.
> 
> I'd only enable them on bluetooth channels for the time being because of this.

I guess I'll agree with Peter here. So enabling uart dmas should likely
happen on a board-level for bluetooth connections.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
