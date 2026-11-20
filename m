Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE65D606A325
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 00:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RLUC9dH4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=g/elI8+n
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KwRst+3Igy4+FJZO4BouvK616SfkKPabX7uEw2wM7rI=; b=RLUC9dH4YmJ7dTweLsn4BnuRwa
	rlZWdxnSaYw4fEDz9o4zcmEN/S8qBs1b+euYIhbmktO6d8Pno4zY+A/rculpLhaR2J9Rv9l7JxKMt
	rjUguJO8feQmbFLVpAZfCKjjP3YNFtETzA2VKBiM8ErUkEwRudTHqSV7BT397Z0O037XusAIXurhP
	wYqf1ArHyTTL796qVoFCjeat6+FBfVLfbUv/rT83NNyDYTXheaDACIccfshsJft7rwX6P35qMwNJF
	ePRRATKi6XdgXXTe4HOWN4ky9LLdSmeXDaBLrHZXrwo5dBVU8ruJGc0xhVcq5yDJziUupbzmorj5S
	aKjL9WOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUCW5-0000000DkUc-3sYm;
	Fri, 20 Nov 2026 00:30:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUCW4-0000000DkU3-0Oub;
	Fri, 20 Nov 2026 00:30:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9B56446BBB;
	Fri, 20 Nov 2026 00:30:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 813CB1F000D1;
	Fri, 20 Nov 2026 00:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795134611;
	bh=9xP4xwcK5kOcRn7SAoxwRpEUwmKNR21ZDqqlTDsiBdY=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc;
	b=g/elI8+nKNyMWS+xkiZqihaJAir7sWz+scHfjVq6NDxoVjUSeA6WPR+bwq4efDHsb
	 fF6H7ArIuLQQDfZPeih8lIEPVF9y5+ZOs7pPyUPC6rH+6OMo/Ghlik7jih2FG4GUXH
	 8JZTTmQejrM7D+A/l6RFnSarM55LC9IgtnyzPGHVuY+8V7Qyf+0fLXVxsHbgfSmatY
	 4V6bQEH/pMyx921mVa8OGFUSjQpJia63f+QAQ3qIcdaqrmK2tDkX1ysDXWDcwXYS5l
	 cr/tzvtw6HDRKDB9a3NWOvno1n4TjWiVR+ohgwKRs1YTkDwSNypSsLyX2ZupAz17dD
	 ciwHOus8aVdYQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7740D3808209;
	Fri, 20 Nov 2026 00:30:11 +0000 (UTC)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH net-next] net: stmmac: dwmac-rk: split gmac_clk_enable
 into
 enable/disable
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <179513461002.3945374.16377819686637031916.git-patchwork-notify@kernel.org>
Date: Fri, 20 Nov 2026 00:30:10 +0000
References: <20261117182502.3045841-2-coiaprant@gmail.com>
In-Reply-To: <20261117182502.3045841-2-coiaprant@gmail.com>
To: Coia Prant <coiaprant@gmail.com>
Cc: kuba@kernel.org, pabeni@redhat.com, andrew+netdev@lunn.ch,
 heiko@sntech.de, netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 18 Nov 2026 02:25:03 +0800 you wrote:
> As the great Linus Torvalds once said in
> Documentation/process/coding-style.rst:
> 
>   "If you need more than 3 levels of indentation, you're screwed anyway,
>    and should fix your program."
> 
> The gmac_clk_enable() function previously used a 'bool enable' parameter
> to handle both clock enabling and disabling. This resulted in deeply
> nested if/else blocks, which made the error handling and rollback paths
> cumbersome and prone to bugs.
> 
> [...]

Here is the summary with links:
  - [net-next] net: stmmac: dwmac-rk: split gmac_clk_enable into enable/disable
    https://git.kernel.org/netdev/net-next/c/bb7cdcfc80a9

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
