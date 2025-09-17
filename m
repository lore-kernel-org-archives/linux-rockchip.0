Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB7F0CAC59A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Sep 2025 22:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NksLySLI68tO3rmCgwlxKa1PzVAbj9deN6U13XGDs2g=; b=b2uJWPV+ls0Ivl
	LvHY06BUT9SgPvpqFsQegwbUZD8+1S0sxENFf5Ek1bn2nQ0ef04l9XkoXJGd0yJBaZ7pBpBvH9iub
	kcSor7q/tmN+ySqn2RI+4Wq0sTsBUUeu9x89I/tjPwOhJiYdtxgqVgpk38UAbis4OfZf3MUrcfnSM
	7dEc8EX69eUPA4Q0RxRxFo8+oWTwyzHNpJzHqH3BXoFq/M2XhNLxsRDlHh190VMS05DPnO0guf44K
	xt8ODBhE81HPikYMBZIxxmnDMbpgT1c3gMHLgJghZ7nbK1u5vPK8SZFN6Vh4YarRhzXYWRzZLSdgf
	++Kuj6kECz/tiKuHekqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz0fC-0000000FGKn-0tGr;
	Wed, 17 Sep 2025 22:30:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz0f9-0000000FGIo-178S;
	Wed, 17 Sep 2025 22:30:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E04374050A;
	Wed, 17 Sep 2025 22:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE635C4CEE7;
	Wed, 17 Sep 2025 22:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758148206;
	bh=s76GbDrYFwwZwSum2VWjLTNSOLDqXR0ee9PKdLqdIN4=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=XTF+07cY9h6ulIkYEmSAadUHSirIAkCR8PdSvFN1oItDmlNlxKzY+kznsK77kbpFE
	 BN1YJFtQ6eGSftAWvNzyYAEnBRlE0bEMhx91x/tm5D6MfP72y7vPB0B/M49qZrgSmX
	 XOVTqEYu5g7KbyvgnV1JbFjn2WVl8IqNrgIAqYSuN6Firz9MpGdPKhwbB42bik2GTM
	 jsch48DbkuV4HnJeV4OtZuIE2LgVxFI+D7+HI0olM7xXbyjkGeQst1hhMqTvs9LCH7
	 kGlq57ypU2AErDcAWg2ta4F74R6tI1v8bSCS050Vne2FjYx8PXe9LeTETfj8iU6WUA
	 DqpLpcLGV++kg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70CCB39D0C28;
	Wed, 17 Sep 2025 22:30:08 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next] Revert "net: ethernet: stmmac: dwmac-rk: Make
 the
 clk_phy could be used for external phy"
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <175814820725.2170568.16324588910347581106.git-patchwork-notify@kernel.org>
Date: Wed, 17 Sep 2025 22:30:07 +0000
References: <0A3F1D1604FEE424+20250916012628.1819-1-kernel@airkyi.com>
In-Reply-To: <0A3F1D1604FEE424+20250916012628.1819-1-kernel@airkyi.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, rmk+kernel@armlinux.org.uk, jonas@kwiboo.se,
 david.wu@rock-chips.com, sebastian.reichel@collabora.com, ziyao@disroot.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, chaoyi.chen@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_153007_326766_CAA00AE9 
X-CRM114-Status: UNSURE (   9.06  )
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

On Tue, 16 Sep 2025 09:26:28 +0800 you wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> This reverts commit da114122b83149d1f1db0586b1d67947b651aa20.
> 
> As discussed, the PHY clock should be managed by PHY driver instead
> of other driver like dwmac-rk.
> 
> [...]

Here is the summary with links:
  - [net-next] Revert "net: ethernet: stmmac: dwmac-rk: Make the clk_phy could be used for external phy"
    https://git.kernel.org/netdev/net-next/c/a09655dde754

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
