Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 982FACFA444
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Nov 2025 02:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbYKyGsgmc3mHcjKRdW2PWiJRxR+hcHcD52s+7Xpf4A=; b=aedgiP119ySvWQ
	bM3b1uwgHeVfhvlNloEiL8G3doyKhbGOPiD8NcZfd1QwzXPxY9GE8G13u+dzII/cQ3US3PfVgDpbD
	l6ZsaoLRHIIE0b473buNiRlhdAvWHrPjKXFYp4XsCxamMnnI4d+BHkhPxFGx6Ynz3nUIzKFRX3aHV
	cTmoYSEo22OqMGLCcpj23pc6thONFzqPul51OGf8ad92pr7WHjE28XzizNMAU3YjbXQ/gp52dZwa1
	QfeQqLPfKXRsZda6GkvQK7a3aoYJ84q0ONtIbqrpMzoJ4zM3fVWJrzTzrP0wd4YW5OI/1BOsonA+w
	z78j9yJMlxner4Ni5B6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMGSK-00000007fKU-3GAV;
	Fri, 21 Nov 2025 02:01:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMGSF-00000007fHU-1iIg;
	Fri, 21 Nov 2025 02:00:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 96B6B43938;
	Fri, 21 Nov 2025 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74F45C116B1;
	Fri, 21 Nov 2025 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763690453;
	bh=hUYp9odp8LoH/NylHXpnLHdk7Xwiaj3w0z4IGhqyrPM=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=PpA/sSIjvKeThEpQIhCsUR2N4PjbMwx6f8VlOYvBqqY/Whhx81eabU0qVtr44yf2d
	 ss2k65SjW38/zWZQZO/lP/QEUmeYUUr4d+tezl4HeimJ8JiUZK1jwqmFfDjOkgAYhk
	 PI3CmJaCu0z2odMbDQVApUYMYabS7TEMGhUROchEufoZKV84m6Te+VaTq8xVwwYHoV
	 BWcEbpWar42vIOnF+NAT6P0RIkYLSUqmoBGyhzXhfT6lSocbkMgfXIg4gTrpp1GytL
	 G1CClY2fVJF5p6X2f1gPMqbfCNEG6IcKZEmUwwmC0zZCbmVDej9BRDld3udcPy8z69
	 Wf2Kf2/49lFPA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id AEC4D3A41003;
	Fri, 21 Nov 2025 02:00:19 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next] net: stmmac: rk: use phylink's interface mode
 for
 set_clk_tx_rate()
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <176369041825.1856901.6474170870442345383.git-patchwork-notify@kernel.org>
Date: Fri, 21 Nov 2025 02:00:18 +0000
References: <E1vLgNA-0000000FMjN-0DSS@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1vLgNA-0000000FMjN-0DSS@rmk-PC.armlinux.org.uk>
To: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
Cc: andrew@lunn.ch, hkallweit1@gmail.com, alexandre.torgue@foss.st.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 heiko@sntech.de, kuba@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 mcoquelin.stm32@gmail.com, netdev@vger.kernel.org, pabeni@redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_180055_468671_1F07AEC0 
X-CRM114-Status: UNSURE (   9.62  )
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

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 19 Nov 2025 11:29:16 +0000 you wrote:
> rk_set_clk_tx_rate() is passed the interface mode from phylink which
> will be the same as bsp_priv->phy_iface. Use the passed-in interface
> mode rather than bsp_priv->phy_iface.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---
>  drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Here is the summary with links:
  - [net-next] net: stmmac: rk: use phylink's interface mode for set_clk_tx_rate()
    https://git.kernel.org/netdev/net-next/c/f15bcd071913

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
