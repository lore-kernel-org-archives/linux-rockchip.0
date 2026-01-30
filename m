Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC138D73EB4
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jan 2026 02:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3Umqx0f8id1hV0/WnwfjDpHDDpCwia6JD3FhdEBHb0=; b=A7Y9vO4ksXWNWd
	JVZArCdKY3QdXleea1F/tCl5YdlF7S80HiGahlZKEZtvSk5OMQsBlaiftdmmb/UR77/LB1gK1Kwb7
	CEFNOzZh+8lGJY3ihe9P+m0cmFobYqtzZ9cP/k2ZLrVKK4B67lgqu6LbPyoPWNFROVHttB8ELL3W7
	lnJ5iP7Bp83jzpzlTXrFi5/t9CAE30w7uupxm3yCweYSJB070haU4n9VDzzZkOOeecODLTOzimxou
	jvlS2ST1VSm2ST4mmNISOO0y++z0RAght8UJ9VVb5MBrijwdavF1rFfnn7PKKiu/uyr5EYfDvpsJo
	Ehp68gdlR2pMbJnpr7Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlebK-00000000up7-0rGR;
	Fri, 30 Jan 2026 02:51:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlebD-00000000uit-304c;
	Fri, 30 Jan 2026 02:51:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2331B60129;
	Fri, 30 Jan 2026 02:50:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D00D5C4CEF7;
	Fri, 30 Jan 2026 02:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769741436;
	bh=4mP/h3GbYCa8J/6dvAXmJ6ho0qAayCfhutvBl6V6NfY=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=h6hO5yg6lf5vPq1Wlfxr6sBAyZcIHnKybPLZHh/9EhZCclmPxY9p0JbrJJkxQMPmx
	 w0EZLHXoF2MF4Qxp6cIEURHhWBbv3G4CU3R3RZNia7Zuci1kLxPrbCuIXJZlwBlPKp
	 NmZ1P3g9uJ+ynn0ScQqAPtlcJrgsPm5TgdKlBAWtD6VbqNqwnc51utlQ3qgj1OUtFt
	 RZdkKLH9GjWdfg6kMNUWLr1wuQARPoHTAejBCTciyyIfYq/gtMYEPNye9EXazRVFus
	 B+GfbJF3EWcG0l4ILS+LQfQ3QCKBzk32eDVNXjUqKGGPPYfL0QBHZT2uWP47Hixy5p
	 IZ+oZsj2HUEtg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id C8D16380CEE0;
	Fri, 30 Jan 2026 02:50:30 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next 0/3] net: stmmac: rk: second chunk of cleanups
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <176974142934.3149010.15875331264465182185.git-patchwork-notify@kernel.org>
Date: Fri, 30 Jan 2026 02:50:29 +0000
References: <aXnrzIbZN-gaZTia@shell.armlinux.org.uk>
In-Reply-To: <aXnrzIbZN-gaZTia@shell.armlinux.org.uk>
To: Russell King (Oracle) <linux@armlinux.org.uk>
Cc: andrew@lunn.ch, alexandre.torgue@foss.st.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, heiko@sntech.de, kuba@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
 pabeni@redhat.com, p.zabel@pengutronix.de
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

On Wed, 28 Jan 2026 10:58:20 +0000 you wrote:
> Hi,
> 
> This series is a cut-down installment of the dwmac-rk cleanups, covering
> up to the point that the AI review had its first issue with the patches.
> Unfortunately, this means that we introduce ->init but do not add any
> users for it yet. That will be in the next round once this has got
> through AI review and merged.
> 
> [...]

Here is the summary with links:
  - [net-next,1/3] net: stmmac: rk: fix missing reset_control_put()
    https://git.kernel.org/netdev/net-next/c/1c249fc1e19e
  - [net-next,2/3] net: stmmac: rk: add GMAC_CLK_xx constants, simplify RGMII definitions
    https://git.kernel.org/netdev/net-next/c/f7aaa6fb1193
  - [net-next,3/3] net: stmmac: rk: add SoC specific ->init() method
    https://git.kernel.org/netdev/net-next/c/1639ba67bfb5

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
