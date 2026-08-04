Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34CE4C55184
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 00:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPEmHfSEOtWKfluM0tsrQk68LcRgCoLyo33hT/1xlGo=; b=EDTXxdqNLm3CnI
	Ovh+3MN+AB0l/xE7/+6JnCLlMDOCfFthQ7x+ITdMffV/C/EWje2YjNLJoxybfICUb+By8LBi1SMul
	DshFzNo1ayXVImmThe25wcUMQYZbQ8RA/c2Ks84eN+7YDO10Byg7RGzm04qhAxP640NVlntbqrnrv
	meurX+HJkYqt23rvq6UVxogZfo51CZ4Bd0G1ffU7E0aagXrtBkhBisH57kx0FWzOFMTnfehDb9fVq
	NbJNhlRDaMkbJTLgY857d66d5MC9w1qDAZQPsMlCi/oDoV53jdg7ZPhxY4Pmqm4lKEVA0l9xi0Ot5
	zYXcqTfskm2n7JSTbCAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr3Mr-00000000lDr-2C1S;
	Tue, 04 Aug 2026 00:50:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr3Mp-00000000lDP-2dG3
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Aug 2026 00:50:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5544A4047B;
	Tue,  4 Aug 2026 00:50:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 376B51F00A3A;
	Tue,  4 Aug 2026 00:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785804651;
	bh=truZYXkB8uoUeVw3Akf5N2rp6MgtiisUzz/pHUFsBZ4=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc;
	b=aKkDJcxtYh9ncQZIDMn/U1+rTX6JXDYXYowZy9iVhDrX5PC9OrjfpJtcvBLSLJOm2
	 dI4hyjfE0Wqe7fXF8Qtz6xv27t8MIPlXFAGRSweEAsW+ErL8ISBcn1e1FVLTn3HWSZ
	 4McN4sTB2GRiLBlX4RF+kLjU+JvrzAMwBBnrJKNl7DwJrssmZul1XERvKFp3tOr56P
	 4mazZ4r7l0HOA9cXnrNEdGluW+gjkNT2iGtk3AsUnfy6vbdLy8lSRlURgqdH9w2uaI
	 iwDj6+0+ZM3iyBZ2VZxgsMzNpcVsi4jLO/QJUWW6JFkD/m3OyRBCXOVIQLlM2yD895
	 jApOp0AjJkyQA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 568F23924467;
	Tue,  4 Aug 2026 00:50:13 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next v4] net: phy: motorcomm: enable the reference
 clock
 for YT8521
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <178580461189.2897167.9622896344243715541.git-patchwork-notify@kernel.org>
Date: Tue, 04 Aug 2026 00:50:11 +0000
References: <20260731013807.1488843-1-gahing@gahingwoo.com>
In-Reply-To: <20260731013807.1488843-1-gahing@gahingwoo.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Frank.Sae@motor-comm.com, andrew@lunn.ch, hkallweit1@gmail.com,
 linux@armlinux.org.uk, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, maxime.chevallier@bootlin.com, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, attinagaoxu@gmail.com, alchark@gmail.com
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

On Fri, 31 Jul 2026 13:38:07 +1200 you wrote:
> Commit 42310a24389c ("net: phy: motorcomm: Enable optional clock for
> YT8531") enables the SoC-provided reference clock for the YT8531 in its
> probe. The YT8521 has the same need on crystal-less boards but goes
> through yt8521_probe(), so enable it there too. The clock is optional,
> so crystal-clocked boards are unaffected.
> 
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Tested-by: Gavin Gao <attinagaoxu@gmail.com>
> Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
> 
> [...]

Here is the summary with links:
  - [net-next,v4] net: phy: motorcomm: enable the reference clock for YT8521
    https://git.kernel.org/netdev/net-next/c/dc3b7209b5d3

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
