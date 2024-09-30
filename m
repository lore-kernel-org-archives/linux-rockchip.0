Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E7EECF6497
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 10:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0KT8jlqCRwDwQuK6CYf0jqsdi3jYrwuGeNuEPyKNjA=; b=WXKJTRkJRnsU1H
	VTf11qhvPldUkV0PS8kY7vJ0f75GX7DXVUgEcEEYipGik2eDE7kK1dzcnNC3E6mCTk7OG9GC2qxTF
	xEyLhUXQGkU+HLBiF0EoM5SR6KlQlQTNEk9Z79plP/2xrVDfR24cuI5r73QQSDNUd/GG4BHFTg05x
	6SnG2So/QKCdWiam8wbVvORURu3iLQ3VFXEiQLMysdWMFjZRkRWnKRKs4V9WibMAQb/gXQsReyG0C
	5rmuJxwboVK4bNCIIyPodUbUxIexLues1ch98cxH8cxUSPoXkSHhus9lqBX6IxQgNyRTGJp9WRv12
	c3UShicOcXYnN8MPKREw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svE6e-0000000Gm02-42Ai;
	Mon, 30 Sep 2024 10:58:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svE4I-0000000GlOD-1Hmr
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Sep 2024 10:55:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=HjXijcub5KRyYpYBDj5VbCSmtbuXJeTxEKrLzUy55Ds=; b=2Gmr+wCQhEKRfyZzjxJ//K330A
	dLhA0g5OCTk0Yie/JMUdEiC4CPBJvLUzqvGp+cTkg3eU3S1igWPixiELOHn0WjBGfUZKaqa9GVk0i
	sSvRiAISOKdVBN06irD6HZhY6IsrHtE8wQ9+sxa0p3H9+NIB8jey/Rveq2rxxdX21iuJoSii2S998
	tpb3fxdNz1cqEHCEGh3eYKE3AoiyZ7w3UCfaGgCbf3dWRxoqvqwKnCGFOYS6+L8HuTxhfSz6CUEiC
	7HAIfSEradOp+MC1DsC7OfrixPp9me3Ei6R+3N4PqzwTDrA1IQ3nyqVY2+xlDFSlQTQ6YBPR4xmBE
	siXM85qw==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svE4H-0004Xd-0K; Mon, 30 Sep 2024 12:55:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jakob Unterwurzacher <jakobunt@gmail.com>,
	quentin.schulz@cherry.de
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add attiny_rst_gate to Ringneck
Date: Mon, 30 Sep 2024 12:55:41 +0200
Message-ID: <172769365129.1880381.55263225152675030.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240926132028.21910-1-jakob.unterwurzacher@cherry.de>
References: <69f79284-b52e-496e-a286-d7e5ce3d90ce@cherry.de> <20240926132028.21910-1-jakob.unterwurzacher@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_035554_366239_6762D36F 
X-CRM114-Status: GOOD (  12.22  )
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

On Thu, 26 Sep 2024 15:20:30 +0200, Jakob Unterwurzacher wrote:
> Ringneck v1.4 can contain (placement option) an on-board ATtiny
> microcontroller instead of an STM32. In normal operation, this
> is transparent to the software, as both microcontrollers emulate
> the same ICs (amc6821 and isl1208).
> 
> For flashing the ATtiny, the SWITCH_REG1 regulator of the board's PMIC is
> used to enable the ATtiny UPDI debug interface. If the STM32 is placed, or if
> we are running on an older Ringneck revision, SWITCH_REG1 is not connected
> and has no effect.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add attiny_rst_gate to Ringneck
      commit: 1871e6f7c5e606b97708af50a7fec83a904a761b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
