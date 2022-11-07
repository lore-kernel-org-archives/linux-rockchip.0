Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 851C1C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 01:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oayen6DHsctX+a2oHuUOAemBWZerEFahwfxk/OZ9aCQ=; b=WFV4yWKxIodcgn
	eL+2sw5DzPAID+tBYsZINgmALhNZwqBSOG2xS4pM24hKoEzkqIibO5rW3ore8X1D7AZTj+rhptjDn
	TH8ks0F/EZ9qMxyPkiz0PYVqnQMHaFDWzZcAXssBTzMRZ5S139ixq9x2xqMq5SG/I6dNHJZGYkfI5
	rSQmDuFIi0j8aDlYxw3k6wabMDUXrgPGXms4Er9EPp4cRHdDOHMAFaUNyTpVEd/6cRBH7g/UoInXj
	oVmgqT9zWmjS3W3EJ9ntdafptJOYoY6S8KtlDQNQdBt/WdaG95D4rtkifjOrfLCbEn/CWewHTengI
	NZ4A2uskJBnIaUjcv+ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orqwg-00AqId-N0; Mon, 07 Nov 2022 01:29:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orqwV-00AqGK-VP; Mon, 07 Nov 2022 01:28:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 279DA60E75;
	Mon,  7 Nov 2022 01:28:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 747EEC433D7;
	Mon,  7 Nov 2022 01:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667784530;
	bh=uv9BxzrMbMoJsT9XSuF0Zo9qkSqJjZpPCibJdQHn2GA=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=OGpsJbuXf2NIVNRsut4xoXj6O38AjBNTQTKltCPMKVyWwMNqx9cfatWI7kezY1Mvk
	 mK4ZjIuvQGiZTUFu6UDhVAE8ZyuyJm1Q15kMbuV1xs95yBa1bFIBSA0bFSS4mLJYKU
	 UodG7j9awqP0312CDw3UpVL/5VLqHvAP1nIS9kC6QXT2Xj1iOn295ka1RbH7vRHBoh
	 +cky+tzw6oMJfBpI2ay6vynsWU5lOwvA+xGRB3TPV5XkT3Ayj3pQjondiRbp/ah1oe
	 KMUWmoRx18nGfKR2W+84qYadkXrD6wyg2GsVfPQtGq+n8+GDMe+bYPAjiMW3UtJP9C
	 42ERBW+52tFUw==
Received: by mail-wr1-f50.google.com with SMTP id v1so14095334wrt.11;
        Sun, 06 Nov 2022 17:28:50 -0800 (PST)
X-Gm-Message-State: ACrzQf1a051o/2qCJgzqyut0Aqs2D7edJ5Spp8GiPtpD9904fk2fB0EY
	wi4U0EN0E1zT6JY276I1GySMlX0Igk2mAijXFC8=
X-Google-Smtp-Source: AMsMyM47zm4eYRd4zwKC+OiGt6MYUKcYbFOZsJmmkSCuV0FUS+utU+2roSHKMXmro7EyByfNjcqI9JDGCrIa1hui0PA=
X-Received: by 2002:a5d:4bcd:0:b0:236:6b67:a5be with SMTP id
 l13-20020a5d4bcd000000b002366b67a5bemr28924858wrt.81.1667784528712; Sun, 06
 Nov 2022 17:28:48 -0800 (PST)
MIME-Version: 1.0
References: <20221106161443.4104-1-wens@kernel.org> <CAMdYzYomgwo3RiUr4pptOD=AUgUS4f6Aqtio3agQP2F-bm2WZQ@mail.gmail.com>
In-Reply-To: <CAMdYzYomgwo3RiUr4pptOD=AUgUS4f6Aqtio3agQP2F-bm2WZQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 7 Nov 2022 09:28:36 +0800
X-Gmail-Original-Message-ID: <CAGb2v64vKbgZxZUyVSdTfzuukHeUdK-8ymxUVGYg=GGShY6O-g@mail.gmail.com>
Message-ID: <CAGb2v64vKbgZxZUyVSdTfzuukHeUdK-8ymxUVGYg=GGShY6O-g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: Add dma-names to UART
 device nodes
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221106_172852_236574_E91F0F3D 
X-CRM114-Status: GOOD (  17.91  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Nov 7, 2022 at 8:52 AM Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Sun, Nov 6, 2022 at 11:15 AM Chen-Yu Tsai <wens@kernel.org> wrote:
> >
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > At least one implementation, Linux, requires "dma-names" properties
> > be used together with "dmas" to describe DMA resources. These are
> > currently missing, causing DMA to not be used for UARTs.
> >
> > Add "dma-names" to the UART device nodes.
> >
> > Fixes: a3adc0b9071d ("arm64: dts: rockchip: add core dtsi for RK3568 SoC")
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
>
> Enabling dma globally can cause some interesting issues, have you
> tested this fully?

It seems to work OK with the Bluetooth controller, though I'm not running
extensive transfers over it. Scanning both traditional and LE works, and
does exercise the DMA controller.

If your worried about the DMA controller running out of channels and
impacting other peripherals, the DMA controller for the UARTs is only
shared with other UARTs, SPI, and PWM (which the kernel doesn't support
DMAing to). The UART and SPI drivers can fall back to PIO if DMA isn't
available.

So this isn't like on the RK3399 and prior chips, where it was shared with
audio, and exhausting the DMA channels would cause audio to not probe.

Regards
ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
