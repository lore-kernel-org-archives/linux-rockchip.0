Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 711BDCCD199
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHu6oT7QLA+TySwWG1yLToRSwFcnVpfeevK1rstOoUw=; b=o2Lr9xt6nj1+0X
	kep6yBXqfg6qtv8qC4HkdI8/2FkT2zXHO4bDOf7rRfRqZO2oGSo2tfSoYjW+++IH4A61vN8kJ1JYQ
	ezNgChNQAh9zOB/xKZ9PE8tuieysgi3HPDOGBdX0C4RUVMuFTf/GNsHFF8U2gqwcWCknziUvLvpJ5
	tl8JtIIBn0pUdkSMzzcZaxblp6tJjFsfkBtivMHUiGFxFjQlwJAOSSBirYy762VQAbbZD0csY3qHv
	eLFXxicuS4EO3nYSKstoNtLY5P7ofii3VzoJVYDXEkftCG332m8AzWyN7AI1gGgcwdL3kN/riQVRA
	ZYEBWeaunzGHf6xvd8DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Zbs-00000006Ma3-2xku;
	Fri, 17 Oct 2025 01:50:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Zbq-00000006MZh-3fBt
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Oct 2025 01:50:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6273344601;
	Fri, 17 Oct 2025 01:50:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AD83C4CEF1;
	Fri, 17 Oct 2025 01:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760665822;
	bh=7fPUJIEArno78HUx7DgvUxAlsXlA2hcDbpKnlfJamP8=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=EziOnAs4c/iow1Lz1fpu+9DEXk4dlcx8ugpKtI9pDV3NlEhlssRtusKVnvJMeWbER
	 t4xvA9MNawLezoDBi40CqY8T3iounKchb+wXOUdYkOjs5wzV0rlU5unzkb0c76L3d5
	 ux3BonMcgyp4mgK5pUqR8GewYuCE0VKRUPBTTYGLjvqOg1USfQ9fjYZnbfi7fGy4VJ
	 BrfBtvIYQR0SB9Ex+kBTj/RBcr7jqnU5m9jCv/B5Cx1q9xrwZu0Km8I9NC+mVhugIq
	 g8JW60Ko8TW+eREauGZvir4ANTJn8YR+emF4HIm6TojWKrTQJozI1p90fy2oAEwdvl
	 H4CzVEc7puToQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70ED439D0C96;
	Fri, 17 Oct 2025 01:50:07 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net] net: stmmac: dwmac-rk: Fix disabling
 set_clock_selection
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <176066580626.1978978.3015288820560591602.git-patchwork-notify@kernel.org>
Date: Fri, 17 Oct 2025 01:50:06 +0000
References: <20251014-rockchip-network-clock-fix-v1-1-c257b4afdf75@collabora.com>
In-Reply-To: <20251014-rockchip-network-clock-fix-v1-1-c257b4afdf75@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, david.wu@rock-chips.com,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_185022_933428_655AF13B 
X-CRM114-Status: GOOD (  10.44  )
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

On Tue, 14 Oct 2025 17:49:34 +0200 you wrote:
> On all platforms set_clock_selection() writes to a GRF register. This
> requires certain clocks running and thus should happen before the
> clocks are disabled.
> 
> This has been noticed on RK3576 Sige5, which hangs during system suspend
> when trying to suspend the second network interface. Note, that
> suspending the first interface works, because the second device ensures
> that the necessary clocks for the GRF are enabled.
> 
> [...]

Here is the summary with links:
  - [net] net: stmmac: dwmac-rk: Fix disabling set_clock_selection
    https://git.kernel.org/netdev/net/c/7f864458e9a6

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
