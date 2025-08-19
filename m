Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8F46CA0EF5
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 19:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEcSqxxh1hTmNfGZAt4YTbR4nv1Ka1w6p9B1XkSjeI8=; b=iqcayDxRN5jS4G
	8RcUmw3js8MHH9xFjscK0zxMvihIJag8NPYknXdHRbfBHE5mS4srYZ/SDVNxGlOBYFaXWol1HfNd/
	B7KHngKRiF4qfAN8Zy4dTJ8Ff3t26KZ7o4EIgODFndsLzVLQEA8EVkV2m/LYaYJKSumIKPoRpEbPa
	DvhmA1LGuQcuQKyC2ZFhV/e38+3uP0Pt4ALfmOwTqODe6V8jS2o6/maXuL1CAOVkm7eaBLneKWSb1
	OLGjiO/Fa4Fe9PDsN1TRPiXyc8K6gDO5xLhXbQjNX5axJsJ4OygPAzUSotzE6XDirYzdB58jaYA0w
	YX2d/wr+5PyWBs8o5FDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoRup-0000000BONV-1KG5;
	Tue, 19 Aug 2025 19:22:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoN2D-0000000AiCH-1tT5;
	Tue, 19 Aug 2025 14:09:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B87B65C6265;
	Tue, 19 Aug 2025 14:09:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6344EC4CEF1;
	Tue, 19 Aug 2025 14:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755612596;
	bh=C9R2a3UImpDUwLItRbJv/q0jFqTxivYVJ3q07lWXyDI=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=apcXmVfafje+5HvFMjxEsJPOn0tFF4tPGhw+16QWPs9YoiW7GpcOluBCHsrNrvBRG
	 bTE0og6J8sNXAkgXhPbt7zfNaUsrzssFfPn8ffER0/+EXGoTsq/ddbWaarIK6yA4Xb
	 /LhNUMpMA8Mmz5J04vhLzSbQdXAEXfwNzAG97L8U7nl2Bvopemdu77tyXfpnMASV7h
	 Cx59/ziGZ0FI2TRo8APi/jWQ+KruDxim9jvZ5QuCdR+DAWf+YYLHvVxK1Mldd7UtYH
	 T11iBytdeNXR/ghlc3bmyeaTleuZ1TayMWmBZXv/prdaKy7hrDzp3XC1tgLs9h31Yp
	 aC4LQzgR9fYFA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 71057383BF58;
	Tue, 19 Aug 2025 14:10:07 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next v3] net: ethernet: stmmac: dwmac-rk: Make the
 clk_phy
 could be used for external phy
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175561260627.3565986.5334175865969423538.git-patchwork-notify@kernel.org>
Date: Tue, 19 Aug 2025 14:10:06 +0000
References: <20250815023515.114-1-kernel@airkyi.com>
In-Reply-To: <20250815023515.114-1-kernel@airkyi.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, rmk+kernel@armlinux.org.uk, jonas@kwiboo.se,
 david.wu@rock-chips.com, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, chaoyi.chen@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_070957_527388_4DA5422D 
X-CRM114-Status: GOOD (  10.68  )
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

This patch was applied to netdev/net-next.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Fri, 15 Aug 2025 10:35:15 +0800 you wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> For external phy, clk_phy should be optional, and some external phy
> need the clock input from clk_phy. This patch adds support for setting
> clk_phy for external phy.
> 
> Signed-off-by: David Wu <david.wu@rock-chips.com>
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> [...]

Here is the summary with links:
  - [net-next,v3] net: ethernet: stmmac: dwmac-rk: Make the clk_phy could be used for external phy
    https://git.kernel.org/netdev/net-next/c/da114122b831

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
