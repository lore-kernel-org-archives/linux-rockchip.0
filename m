Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D9F6C46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 11:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBTdnEoKSyXjRz5Lwc+4BhaJdc3v4ng54w4lZ0PEfKo=; b=2XK68b3WSqODX0
	3G0PHKMI/W48nzd7jlQitQxv2GediqyNbwlAmVQC5xRPlLCTEL3HXIgDNclC/DoofZLjhDpA7qMWq
	nVfEbI+S+Xp6jnk3ie732V+vsr8JPWaoKGG8ugPUKexvoTe5GEQ0QMYUp6f7GKl+rq8zEI2Cg0RL2
	2jci/fUMk0LJXG6MfRDFchF6YJr4XQ3hGIa7omdq/x81k/w7ItSlKBieK8CDGm5v8DkmOyaE+bZW+
	IeOLbOrwBDeE7o5LGrhQxgty2xBdOMtdMlvCgmzqGTqD0w/SjDNMfOPecYtvWP07IigOTyaRlYgDv
	B/rRqYyfY4L7QtMoGz1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFD6N-006hqa-3B; Tue, 10 Jan 2023 11:47:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFD6K-006hp0-SD
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 11:47:34 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFD6C-0003yp-EP; Tue, 10 Jan 2023 12:47:24 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Linus Walleij <linus.walleij@linaro.org>, Christopher Obbard <chris.obbard@collabora.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com, Yifeng Zhao <yifeng.zhao@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCHv8 3/7] arm64: dts: rockchip: Add base DT for rk3588 SoC
Date: Tue, 10 Jan 2023 12:47:23 +0100
Message-ID: <2865022.7s5MMGUR32@diego>
In-Reply-To: <20230109155801.51642-4-sebastian.reichel@collabora.com>
References: <20230109155801.51642-1-sebastian.reichel@collabora.com> <20230109155801.51642-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_034732_957506_C16BC08C 
X-CRM114-Status: GOOD (  16.72  )
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

Hi Sebastian,

Am Montag, 9. Januar 2023, 16:57:57 CET schrieb Sebastian Reichel:
> From: Kever Yang <kever.yang@rock-chips.com>
> 
> This initial version supports CPU, dma, interrupts, timers, UART and
> SDHCI (everything necessary to boot Linux on this system on chip) as
> well as Ethernet, I2C, PWM and SPI.
> 
> The DT is split into rk3588 and rk3588s, which is a reduced version
> (i.e. with less peripherals) of the former.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> [rebase, squash and reword commit message]

I guess that means the list of Rockchip Signed-off-by lines above come
from the squashed patches?

If so, I guess I should add Co-Developed-by lines for them, as right now
the list is incorrect (author should be first, then everyone through
whose hands a patch went)

Meaning I can add those Co-Developed-by lines, so no need to resend,
I'm just verifying what I assume about the lines :-)


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
