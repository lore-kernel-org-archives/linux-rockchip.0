Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C1DBC9830E
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 18:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T138rGHpHHArhyix1kzpW/bTHtnUfglB/7odT+OvrBo=; b=LZHP8h6GNWRl1G
	ZBszjdrZufZK9hzsQPRTqCo8DAI2oXnfNdU4xOq0BU7Y3bU9GIvgj8hFEAKQONNbVnVugYcSjaD3M
	zz0hXFuH3Sfjsd1Cd7kVvrdJ3FkJ309vXPjP9RZdxjipCXJyXadFZM+RvkEQtqqDKF8YeTSocHwvS
	uvLVIQe4KIvrtMGnB3VUDO5Eh9sGvgr2PmFdxzo9mkXu0WOWV+EOsayS8Rj/mzZqJxuD23PfL6SfE
	VJBD0jO8M/fTv2fldTV0v0cHpsp+F2h/ztG5JDEiB8fpgCyvhRxr7SGHyOoWRahuDUXq7kUQ/Ttb1
	h0eUuTsbUZeWeXG3S2tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nl4-0000000BrLw-25nb;
	Thu, 24 Sep 2026 18:01:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9nl2-0000000BrLG-3PgG;
	Thu, 24 Sep 2026 18:01:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4F89F42DEE;
	Thu, 24 Sep 2026 18:01:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 329B61F00893;
	Thu, 24 Sep 2026 18:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790272880;
	bh=3b7s0TZCouRV+fANKyon2fgb5XJsJs6Z3Co+PZgaJH0=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc;
	b=iJsasJCeYcma1r+urKfOz0k8MclnTql/D1yVdZRNt6KeUQFwBy4IYdzChbWGVpUgC
	 +m1YjISlr9tTMgCG899hV+yLjNlALOFMET9kxqPlyp8wXKbEboH0D0hLqJGnosXYbD
	 n+jvB7849l/+p3ecltU8JlbFJrJAvCEsTznzdkIrYkVmFSFW3+zX8X6NjvWAdiGHQw
	 lwwaapzE1FapwSoJ2H2a9rQqqetku6tCKb7DziCdCP5/0fgoIePhdZOZyuQ67IggFt
	 Ed0+3r13bhWufGoDv2dm9/Hcj8vh2KnFyrzesy4OL3D1dQNX7tEOCMK2qZXdhzhrL/
	 6bxE/sx8eTlKQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 568C43A566DD;
	Thu, 24 Sep 2026 18:00:10 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net v2] net: ethernet: stmmac: dwmac-rk: fix bulk clock
 leak
 when the PHY clock fails
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <179027280889.1685480.8117520252597627875.git-patchwork-notify@kernel.org>
Date: Thu, 24 Sep 2026 18:00:08 +0000
References: <20260923123713.3137146-1-coiaprant@gmail.com>
In-Reply-To: <20260923123713.3137146-1-coiaprant@gmail.com>
To: Coia Prant <coiaprant@gmail.com>
Cc: heiko@sntech.de, maxime.chevallier@bootlin.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 sebastian.reichel@collabora.com, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, lorenzo.bianconi@oss.qualcomm.com
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

Hello:

This patch was applied to netdev/net.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 23 Sep 2026 20:37:13 +0800 you wrote:
> gmac_clk_enable() enables the bulk clocks first and then the optional
> PHY clock. If clk_prepare_enable() on the PHY clock fails, the function
> returns without rolling back the bulk clocks, and bsp_priv->clk_enabled
> stays false, so the later gmac_clk_enable(bsp_priv, false) becomes a
> no-op and the bulk clock references are leaked.
> 
> Add the missing clk_bulk_disable_unprepare() on that failure path.
> 
> [...]

Here is the summary with links:
  - [net,v2] net: ethernet: stmmac: dwmac-rk: fix bulk clock leak when the PHY clock fails
    https://git.kernel.org/netdev/net/c/8db67bb6a1ff

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
