Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C182CEACEF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EOSFjWBmWpZy6dl8Oaat32db7bjC0vEnNMuBYdBfys=; b=pzxjT+XL5nSrjz
	E+aalNOfpe2m0o0KW37i/BvCYo+0Ip5+MEaZ4OORxv466wLt8fpUZfYl4Nh7znmMIINj2IGcKjI+f
	cVNhBl67cvqHF0qmx16aSZNYNha3bXJPmUYRjotFH+ujqS4CYF8mkLEMvGfxH3cZl7PvK77+wc7mA
	/WRyGlGcL7GNXBVITWAsaenrZ0p9ZCczYS9AwkhwCLsZeRfGIsJNMxJZXNAFWDPVlA1D14ANIaLfI
	pa2MZ9NbgFocDyG0IgmYWxbUb6Ap8NNKdChdb6J5VTt50s1hZcTGF8nA4Ptz97VBp4N2Waz5/mVaC
	OPWL9SiUimrkD2HnmvFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK6DW-0000000DNGU-3F8T;
	Sat, 15 Nov 2025 02:40:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK6DU-0000000DNFw-3b5v;
	Sat, 15 Nov 2025 02:40:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E525860007;
	Sat, 15 Nov 2025 02:40:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95060C4CEF1;
	Sat, 15 Nov 2025 02:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763174443;
	bh=FsDd8OSRS1boKHVWER5PG2YUTZRXls0/bADOA6JY/pU=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=JcMTQWxzJFH3zV8FtzNtiE+MXJ1ME/2xY9p13ILTSIxmpCrtP/mTB2/EoQ8rQTNyO
	 8HAEEFb/3lRkkLfo69tKXVBt2fPVtQf3FUdQKOQoHshkYVPfLwPyrTiYH9pIqzOoZw
	 2GoNgSSXuuR6cZKqTsa4XqRr0OfQF8Q9me1LuoTeobgFnK5NG9lHUje8qZMyZqhkwv
	 TzEwmaaXqYeMcWyG3SUSwePS3UbWDZFPwBszJuHCUJr55TWW4ky9MeM1nnz1tUeai8
	 afSiU0jeB0pm0spKensp0YkzN2mFjqbJvanuyoPC04HREhGSrByF6IOKpVUZ/BiLPF
	 FNw8jEVewMYzA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33E203A78A62;
	Sat, 15 Nov 2025 02:40:13 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next 0/4] net: stmmac: rk: use PHY_INTF_SEL_x
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <176317441200.1916016.12907239609584301623.git-patchwork-notify@kernel.org>
Date: Sat, 15 Nov 2025 02:40:12 +0000
References: <aRYZaKTIvfYoV3wE@shell.armlinux.org.uk>
In-Reply-To: <aRYZaKTIvfYoV3wE@shell.armlinux.org.uk>
To: Russell King (Oracle) <linux@armlinux.org.uk>
Cc: andrew@lunn.ch, hkallweit1@gmail.com, alexandre.torgue@foss.st.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 heiko@sntech.de, kuba@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 mcoquelin.stm32@gmail.com, netdev@vger.kernel.org, pabeni@redhat.com
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

On Thu, 13 Nov 2025 17:46:16 +0000 you wrote:
> This series is a minimal conversion of the dwmac-rk huge driver to use
> PHY_INTF_SEL_x constants.
> 
> Patch 2 appears to reorder the output functions making diffing the
> generated code impossible.
> 
>  drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 245 +++++++++++--------------
>  1 file changed, 109 insertions(+), 136 deletions(-)

Here is the summary with links:
  - [net-next,1/4] net: stmmac: rk: replace HIWORD_UPDATE() with GRF_FIELD()
    https://git.kernel.org/netdev/net-next/c/ebb07edf9738
  - [net-next,2/4] net: stmmac: rk: convert all bitfields to GRF_FIELD*()
    https://git.kernel.org/netdev/net-next/c/764ebe423ef9
  - [net-next,3/4] net: stmmac: rk: use PHY_INTF_SEL_x constants
    https://git.kernel.org/netdev/net-next/c/5e37047f745b
  - [net-next,4/4] net: stmmac: rk: use PHY_INTF_SEL_x in functions
    https://git.kernel.org/netdev/net-next/c/1188741cb5a2

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
