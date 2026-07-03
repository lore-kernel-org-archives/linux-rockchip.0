Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC60EC43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 17:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:Subject:To:Message-Id:Date:
	Mime-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rHWUaK9UglSSsx9IEjQAZEHGPZkLZDuCjMqOrvMoiUA=; b=F7g
	1nz/okGKfEw0xHOT4ms6vBhvvINuGmSBZemPS1vroMAzTHC+qGNRAjTznD2tXaj/AbA4aAiLQC/jj
	xTpqcuOngpAd7K8NZ4Th0OAmTDCJ9tOxuBCe0SRWoWfmM5QJFP+Cfh9ddAk8NLADndko4OXa+Sk77
	Bemt4xz14O5pjwLFJ3EsP9CbqltxEOuR2z/LzobNgn3a4/gvZd1Ff46Kntv4/5hQcCMgzByN5+3UY
	SVLPnk1oRQ9B8RKGh25pPQ0wUlKv8Piuru7GOc/Fkq6D6pNisGHRLjEmt0kRP88z0uyUMeEtS1W2w
	u9HZmymiMznoDODn9QumK0ETicGRWlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfhui-00000007cRC-3rU5;
	Fri, 03 Jul 2026 17:42:56 +0000
Received: from out-180.mta0.migadu.com ([91.218.175.180])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfhug-00000007cQo-3MWP
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 17:42:56 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1783100572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3F3z6svJt8A0LhpBM9o1RX3JMQgGJpu/qSEYfSZaDaQ=;
	b=BfJclCthFLUAfBidvS4fvwvtO1dsAxT76TknBPYs/fEWvBXcpaIwR2xtoQ3j5JTJD3jXIR
	F+4DvQO8ieRDhzKo1OOR7paysrZfcUd4BL56kC7NqHA5nGM7JclxGN2KCDx1NGWmvMhj4W
	4oA4i1hW6lXxP3kifrER6YMxysWR/UPtWNyUM37igzgUucHdI21SLb5edNxsdox3sRQazE
	zm9fFhuYNEOOk3yqq4Y7tUcOPZwyIRgvqNu4PV0oBNgc1exWOmkEMlQM3CVYheM0aWlpgg
	Z6vQXrvxVXmUw9iGa6T/DHuzEEPq326DES6OgvVqWc7HoEAH3/h4CTHlymV8Gw==
Date: Fri, 03 Jul 2026 19:42:42 +0200
Message-Id: <DJP4E9W1T7RE.1MAV02D65O23E@cknow-tech.com>
To: <linux-rockchip@lists.infradead.org>
Subject: Fwd: Re: [PATCH 12/12] arm64: dts: rockchip: add support for NanoPi
 M6 board
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_104255_004678_8C81C360 
X-CRM114-Status: GOOD (  12.84  )
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

[ Something went wrong while sending to the ML, thus forwarding ]
Forwarded message from  on Fri Jul 3, 2026 at 5:37 PM:

Hi Joachim,

On Fri Jul 3, 2026 at 7:14 PM CEST, Joachim Eastwood wrote:
> On Fri, 3 Jul 2026 at 13:34, Diederik de Haas <diederik@cknow-tech.com> wrote:
>> On Fri Jul 3, 2026 at 12:07 AM CEST, Joachim Eastwood via B4 Relay wrote:
>> > From: Joachim Eastwood <joachim.eastwood@gmail.com>
>> >
>> > The NanoPi M6 board shares most of the features of the R6 boards.
>> >
>> > Main differences:
>> > * M.2 M-key slot with PCIe (Also present on R6C)
>> > * M.2 E-key slot with PCIe and USB (from hub)
>> > * 1 additional USB 2.0 port from an on-board USB hub
>> > * RT5616 audio CODEC
>> >
>> > Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
>> > ---
>>
>> [...]
>>
>> > +&i2c7 {
>> > +     clock-frequency = <200000>;
>> > +     status = "okay";
>> > +
>> > +     rt5616: codec@1b {
>> > +             compatible = "realtek,rt5616";
>> > +             reg = <0x1b>;
>> > +             clocks = <&cru I2S0_8CH_MCLKOUT>;
>> > +             clock-names = "mclk";
>> > +             #sound-dai-cells = <0>;
>> > +             assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
>>
>> s/I2S0_8CH_MCLKOUT/I2S0_8CH_MCLKOUT_TO_IO/ ?
>>
>> See these links for details:
>> https://lore.kernel.org/linux-rockchip/DJGDSS875DDO.22TYPVYK5X8KZ@cknow-tech.com/
>> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v7.2-clk/fixes&id=946352b2f88fd2378f0341312e47dff1e8dc2fac
>
> Thanks for the feedback and pointers.
> I will use I2S0_8CH_MCLKOUT_TO_IO for the next version.
>
> Grepping through the other boards there doesn't seem to any other users
> of I2S0_8CH_MCLKOUT_TO_IO right now. But I assume the other boards
> will be converted over later(?)

That is indeed the idea; boards can(/should) be converted, ideally by someone
who has the board and can verify its result.

There's at least 'one' (or 3) being worked on ;-)
https://git.sr.ht/~diederik/linux-kernel/log/rk3588-nanopc-t6-plus

But for new boards, it's better to use the new _TO_IO variant.

Cheers,
  Diederik


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
