Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A29C3C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Dec 2021 20:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9XbIfQoqEU5y9S6EhfirnHsQfO4liIYcv6aJBp1zvs=; b=Vv9aKWB+8boMZ5
	D3eKh+u+58wEw0ZT4LtFrIPxGOBVEbnOCDprJunP6GMxMcCPjwGguFvwODih2isAOeXR/9j5sEmqs
	UsKGS76NGSSdlcGuR23/56c8P+gphJooe/VH1hN+5QJXpLDhUmWJn718jtPoC3CtCjBgrpDk1IxeL
	m7xT2tM4QiM0BT02rXvTrRXoLdpDmCRwC4JsBSekbDs9gEGLp5vkn22KaROPfT2vi+40vXxM7Qm03
	+m30cmYQ1KZZO/95spIwewpuCUBkYgdSlCxpBOqotxGU0Bgj8Zegq7JCfo8Kbop/SfxpDSifXDwbj
	6NCzzrpsevzmd0Ge+v8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxxjI-007Yks-Lm; Thu, 16 Dec 2021 20:51:56 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxxj5-007YgE-Uj; Thu, 16 Dec 2021 20:51:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 936E7B82644;
 Thu, 16 Dec 2021 20:51:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAF6C36AEE;
 Thu, 16 Dec 2021 20:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639687900;
 bh=Ud7JEZsgfXJLxq8d3PVyQQhBSvG6W/4Xe5JpvEINbpY=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=ACk2ZAjMluqh/Ro4YXUl4Ntia5uwxYnXNQEu+tvecRNud+n7900O7s48InNPUlcgr
 ie/q4Up5cBG6UW2/vTOHK9lXcT1tEGq2AIDOZDlGieRpDp0YoEDlADNFYVSFLrSzIw
 1wV/KHUQwp90Fnn6UoF9GIyRjyvPPRYyv8oQf1LoH9JMdyyVyec0xIqCVg2B1QjN3U
 QzE9PrMjXcgoAzzxhNK/ftV7S0LKMYbiLU/bLReE18Ekm/uuXTaYxcly266u5NwGNg
 cr1i9iW20Dk9AP5GjhNHfKbsUaaxJaQ/0f0sqv0fFiS3PGaooP7modkYncRJDBH6WX
 aX6RhElbPkuGA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id B00FF60A4F;
 Thu, 16 Dec 2021 20:51:40 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH] net: stmmac: dwmac-rk: fix oob read in rk_gmac_setup
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163968790071.17466.7200435085941937139.git-patchwork-notify@kernel.org>
Date: Thu, 16 Dec 2021 20:51:40 +0000
References: <20211214191009.2454599-1-john@metanate.com>
In-Reply-To: <20211214191009.2454599-1-john@metanate.com>
To: John Keeping <john@metanate.com>
Cc: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 peppe.cavallaro@st.com, alexandre.torgue@foss.st.com, joabreu@synopsys.com,
 davem@davemloft.net, kuba@kernel.org, mcoquelin.stm32@gmail.com,
 david.wu@rock-chips.com, ezequiel@vanguardiasur.com.ar,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211216_125144_155134_5F61E891 
X-CRM114-Status: GOOD (  12.90  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This patch was applied to netdev/net.git (master)
by David S. Miller <davem@davemloft.net>:

On Tue, 14 Dec 2021 19:10:09 +0000 you wrote:
> KASAN reports an out-of-bounds read in rk_gmac_setup on the line:
> 
> 	while (ops->regs[i]) {
> 
> This happens for most platforms since the regs flexible array member is
> empty, so the memory after the ops structure is being read here.  It
> seems that mostly this happens to contain zero anyway, so we get lucky
> and everything still works.
> 
> [...]

Here is the summary with links:
  - net: stmmac: dwmac-rk: fix oob read in rk_gmac_setup
    https://git.kernel.org/netdev/net/c/0546b224cc77

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
