Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D040C44502
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 19:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abfkLWFk13VVk2C6Juoe8pe6dqDliaqmxXo1SStfecg=; b=vrf304Zph21chp
	TBP/VcEYQ2Azdl8AoKS/spKSvMefgWQ3K1evy2t0nQYYxwLnaEl1wEJWuzg23L7FOCJiGnZNShUX4
	4fWj0NTxbc2uW6G9N+rw+SFViH+L82RaxAlEUzj4chEvz6rci2WzC+EZsw3gXiGjd8+S2wgyP9mDo
	K4VoDupvbJ0eUgd/l3VBVEaHhca+53BDFRnOd44f2izZQFCCtZhXiZVj3gEWKgNCFsUU49kAPJGaR
	wtvrbL6M0uvEERj6j3vTmPGZxLeSQxG/lLt+ABTt1GfGlSC3OX1adRkXHiSJviNLQIFsLUEEfoXY/
	4ZAYNY40rdiymRUNXOGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whBij-0000000FnOW-3B6j;
	Tue, 07 Jul 2026 19:44:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whBih-0000000FnMS-21Je
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Jul 2026 19:44:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HR4J3nbMNZFQr4ejTRv8oWBxzWRio+zHNBUUncps5Wo=; b=j2MJvpk5bwnhPLw1Ia147ERH9U
	x7xjNJ6R0Mn87kvhAG7j2TcUM1bg0L2I0s5qfZR/HnHsmhQqyvGqUJP55RGSX2n+UFTlcggm9H8DI
	iJl8quqo8iskZrZIVeXn0UbwpIqTRxEc5E+7mJLlbMxu+1o2zseeC+UM9rRUipZ32BSvgdNn1F0si
	4pgyhSfaDzBnh3+qAz0dXoxfO7sbmWUmUE4I45/ErQNsD4iKC5qgfH/LZCGK1XjeSsuN8e17ZpFmG
	8YotUxwcmLVFSpcXRjfdODAgWkZRBYERwjqbdASvD5ZpHa+XfLdoyhYP2HJLBEGqI8KitO7BRyyld
	MQ3DReoQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Coia Prant <coiaprant@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] rockchip: arm64: dts: rockchip: Fix incorrect interrupt for the 9Tripod X3568 v4
Date: Tue,  7 Jul 2026 21:44:30 +0200
Message-ID: <178345345845.664858.5905972854127653416.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260702202429.2341789-1-coiaprant@gmail.com>
References: <20260702202429.2341789-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_124439_539743_2E53A49E 
X-CRM114-Status: UNSURE (   8.99  )
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


On Fri, 03 Jul 2026 04:24:29 +0800, Coia Prant wrote:
> The recently changes for 9Tripod X3568 mistakenly configured
> the WiFi host-wake interrupt trigger type as IRQ_TYPE_LEVEL_LOW.
> 
> However, the associated pin `wifi_host_wake_irq` is configured
> with an internal pull-down resistor.
> 
> When the WiFi module enters a low-power sleep state and leaves
> the pin floating, this pull-down bias drives the pin low.
> 
> [...]

Applied, thanks!

[1/1] rockchip: arm64: dts: rockchip: Fix incorrect interrupt for the 9Tripod X3568 v4
      commit: c22f566c82f59a46adaf7404b78a9617307afe0a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
