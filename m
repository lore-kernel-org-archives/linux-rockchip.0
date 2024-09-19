Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEF74CE8D78
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Sep 2024 10:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/XxA1GDWKZsP4A8MJ0ZGxoTqNCrCHFmqpXtEm5R8k0=; b=Xa2hqUop90MFj+
	VNWFIP5Ei1M86y5FfvAd+UYqBxY+Ts4kZydDAJriEnmYdUMl5sf+DzJs7c6dwn9SxbtFqYxnGJ0kU
	yYg2QIsrjH2xTEtfB9xvGGxcXDU4C7mCqa37WsmVuwHZejgDXAQOrrZGGlsNh6Pv+SHq40oerwkHU
	B5VJ+xFRcXi3tJIdg4TjSUUYgdowxw6/Y8g8Vi8TNKB/8cmvHY1j+TGHtusdn681LRkh8xH0vyxaX
	NTrLzTnMcQsxgulvzBbEDombZBa9SKr7+i26d7JOHROOsA04XfuZOyGGD+IWeI5Jj/L2VMK0MyHcw
	ka46Hyr7yV9mYw4gvsYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srEgq-0000000A5OJ-2LyQ;
	Thu, 19 Sep 2024 10:47:12 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srEek-0000000A5Ah-3sr6;
	Thu, 19 Sep 2024 10:45:08 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 2CE6523D13;
	Thu, 19 Sep 2024 12:44:58 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qw0S_KiD1mf1; Thu, 19 Sep 2024 12:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1726742697; bh=/os8jdsvZNjZzBQqTEH9zSBE9KS0uwILd2ijRnbkvU8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DNFeORec4f+AS0c8WR+mK9+oKWcxhMjeHXEgkhzRaIFpxvXFdDbniCgSzkNxfPLpf
	 3fotaflPhH4vQv46nLUVoPuPdMxNflI0okssfRLCA71T/G393xnQ5IzmDNEJBJGT11
	 QQ8rsOgeRoPemOYd34UP5N3hMQMzgWqDCv4uaHaG42TQnOCfjQWAUguWayIj7LuedM
	 BTobRFh35Pfrh3V3sN/7M1s4QID0o6lDA/QhQOTh7lVEdIwRtGS/YxNm3MTG4V8rHU
	 Pv0Bk0XTzAt5no+nIJVTykqWX4MBFHKH+WHIwr0XSquJF2s1t4RdcMCQRm8GjS1M5M
	 M6HABXoLsluGg==
Date: Thu, 19 Sep 2024 10:44:25 +0000
From: Yao Zi <ziyao@disroot.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Cc: Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH v4 0/4] Add initial support for Rockchip RK3528 SoC
Message-ID: <ZuwAiaCF6hCr7Fa2@pineapple>
References: <20240829092705.6241-1-ziyao@disroot.org>
 <ZunjLMQGEcES2zIV@pineapple>
 <23655990.6Emhk5qWAg@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23655990.6Emhk5qWAg@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_034503_441637_5B1D151C 
X-CRM114-Status: GOOD (  30.88  )
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

On Wed, Sep 18, 2024 at 01:13:25AM +0200, Heiko Stuebner wrote:
> Hey,
> 
> Am Dienstag, 17. September 2024, 22:14:36 CEST schrieb Yao Zi:
> > On Thu, Aug 29, 2024 at 09:27:01AM +0000, Yao Zi wrote:
> > > Rockchip RK3528 is a quad-core ARM Cortex-A53 SoC designed for
> > > multimedia application. This series add a basic device tree with CPU,
> > > interrupts and UART nodes for it and is able to boot into a kernel with
> > > only UART console.
> > > 
> > > Has been tested on Radxa E20C board[1] with vendor U-boot, successfully
> > > booted into initramfs with this log[2].
> 
> > Ping on this thread. Is it possible to get this merged in v6.12? Or
> > anything else I need to do?
> 
> sadly nope. From a timeline point of view things should ideally be in the
> Rockchip tree by -rc6 . Which then move to the soc tree and from there
> to Linus' tree.
> 
> There is this rule that all new development for a -rc1 kernel should be
> present in linux-next _before_ the merge-window opens.
> 
> The thing we need to figure out for your series is the uart binding,
> because that _should_ go through the tree handling serial drivers.
> Greg is in your cc list but with the amount of mail he gets, I don't
> think he has single-parts of patch series on his radar.
> 
> So I guess the easiest way would be to send the uart-binding from patch 1
> as a completely separate patch with adapted Cc list, so that it's obvious
> this should go through the serial tree.

Will do it, thanks for the suggestion.

> From talking with Collabora people today at the Open Source Summit, it
> seems that's also their plan for the rk3576 that is stuck at a similar
> state.
> 
> 
> Hope that helps a bit to explain

Thanks for your reply.

Cheers,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
