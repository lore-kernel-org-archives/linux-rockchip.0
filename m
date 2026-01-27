Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55761D2FED9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 19:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7IoYJSW25I9uQWlViotU9I+hTebEUraEtvpKwqe0t4=; b=gmHO6Fb0FKErI9
	l/3RWwToc0PK48rDRUfr9ixBRmGHiYA+/rvNRRYUgb5wt3bHUQmAJ4ge9Fl3LIHjNRabHtLCbn8kE
	1PhM5+4SIK0BDNSBNjWA1VBfbYPkEyJaq6Pa8emwA4O/bfkjdI79HginXFs9KOIfuJ8TX58IDJL73
	GZHcmaUABsQGxk99NLiFgXH+sPvMzv17v2tW9wl+MyJ5CRnb8UhmgCQ8mGNCInhUSKA4JFRZnjhn4
	FLyzAQpg2D7JkZXxlmej8FjgFlRZ6q7WcBpnwefg+n0deBh5l7IsxQQhvoJZkitClkXc3+QVQlXt/
	wVFkGcR715eQGkJ81XfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkoIW-0000000EsH2-06yl;
	Tue, 27 Jan 2026 19:00:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkoIT-0000000EsGS-1yZM;
	Tue, 27 Jan 2026 19:00:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D679343EE0;
	Tue, 27 Jan 2026 19:00:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE9F7C19422;
	Tue, 27 Jan 2026 19:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769540416;
	bh=c1tXqNRpIYOMWP0VFHYLgja6KaJDZeX2rziUlYI6lDE=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=Kj6gRbXeAmfTn/JBCTT62O3iJ8jjNV0u8rFD8iC71YBpUat13frCXksenXJKLoz9g
	 hRhUOkDar/NaTyShKpK5y49wYwlmswiVzimXTkUkX5BvROrEvODNBWyT44vKUuJoh5
	 4xsX19vKoY4Apd9ByWqlwUnrBiocX76se2AxxVl/tBsiGItUtvkfm7s6xUQQRcLRrv
	 Xj1bcXD04XTPLQDHbimStBP3TSOIaSlVwE0rY+24QkxvKPJYoQbcWv/Yz64lyAvfoa
	 yDajGi5xBggK1h2IdV6VK6+43VhcO/MZfUQBYpm4oVAkd9TuOH9RPallLkOa+sRhpH
	 3PgF9cTXkY3IQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id C8C95380AA58;
	Tue, 27 Jan 2026 19:00:11 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next v2 00/22] net: stmmac: rk: simplify per-SoC
 configuration
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <176954041060.1365394.14963614525906963591.git-patchwork-notify@kernel.org>
Date: Tue, 27 Jan 2026 19:00:10 +0000
References: <aXdTi4ViCkhhXvFI@shell.armlinux.org.uk>
In-Reply-To: <aXdTi4ViCkhhXvFI@shell.armlinux.org.uk>
To: Russell King (Oracle) <linux@armlinux.org.uk>
Cc: andrew@lunn.ch, alexandre.torgue@foss.st.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, heiko@sntech.de, kuba@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
 pabeni@redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_110017_548687_9AC6E8AE 
X-CRM114-Status: GOOD (  11.11  )
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

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Mon, 26 Jan 2026 11:44:11 +0000 you wrote:
> [Please note: due to google's spam filtering, I can no longer send
> patch series to @gmail.com addresses, and thus, to save being spammed
> with failed deliveries, I'm dropping such addresses from my patch
> series. Stop giving google so much power, use other email services.]
> 
> dwmac-rk has an excessive variability between each individual SoCs
> which makes this file extremely large.
> 
> [...]

Here is the summary with links:
  - [net-next,v2,01/22] net: stmmac: rk: avoid phy_power_on()
    https://git.kernel.org/netdev/net-next/c/a0094edaf492
  - [net-next,v2,02/22] net: stmmac: rk: get rid of rk_phy_power_ctl()
    https://git.kernel.org/netdev/net-next/c/af6eaf701897
  - [net-next,v2,03/22] net: stmmac: rk: convert rk3328 to use bsp_priv->id
    https://git.kernel.org/netdev/net-next/c/cdb5fdfcf396
  - [net-next,v2,04/22] net: stmmac: rk: group MACPHY register offset and fields together
    https://git.kernel.org/netdev/net-next/c/a7ad67e9745d
  - [net-next,v2,05/22] net: stmmac: rk: add GMAC_CLK_xx constants, simplify RGMII definitions
    (no matching commit)
  - [net-next,v2,06/22] net: stmmac: rk: add SoC specific ->init() method
    (no matching commit)
  - [net-next,v2,07/22] net: stmmac: rk: convert to mask-based interface mode configuration
    (no matching commit)
  - [net-next,v2,08/22] net: stmmac: rk: convert rk3588 to mask-based interface mode config
    (no matching commit)
  - [net-next,v2,09/22] net: stmmac: rk: move speed GRF register offset to private data
    (no matching commit)
  - [net-next,v2,10/22] net: stmmac: rk: convert rk3588 to rk_set_reg_speed()
    (no matching commit)
  - [net-next,v2,11/22] net: stmmac: rk: remove rk3528 RMII clock initialisation
    (no matching commit)
  - [net-next,v2,12/22] net: stmmac: rk: use rk_encode_wm16() for RGMII clocks
    (no matching commit)
  - [net-next,v2,13/22] net: stmmac: rk: use rk_encode_wm16() for RMII speed
    (no matching commit)
  - [net-next,v2,14/22] net: stmmac: rk: use rk_encode_wm16() for RMII clock
    (no matching commit)
  - [net-next,v2,15/22] net: stmmac: rk: remove need for ->set_speed() method
    (no matching commit)
  - [net-next,v2,16/22] net: stmmac: rk: convert px30
    (no matching commit)
  - [net-next,v2,17/22] net: stmmac: rk: introduce flags indicating support for RGMII/RMII
    (no matching commit)
  - [net-next,v2,18/22] net: stmmac: rk: replace empty set_to_rmii() with supports_rmii
    (no matching commit)
  - [net-next,v2,19/22] net: stmmac: rk: rk3328: gmac2phy only supports RMII
    (no matching commit)
  - [net-next,v2,20/22] net: stmmac: rk: rk3528: gmac0 only supports RMII
    (no matching commit)
  - [net-next,v2,21/22] net: stmmac: rk: use rk_encode_wm16() for clock selection
    (no matching commit)
  - [net-next,v2,22/22] net: stmmac: rk: rk3506, rk3528 and kk3588 have rmii_mode in clock register
    (no matching commit)

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
