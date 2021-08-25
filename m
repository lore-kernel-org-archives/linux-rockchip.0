Return-Path: <SRS0=zXd4=NQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD47AC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 09:51:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6ABFF60F91
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 09:51:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6ABFF60F91
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qcp6qIs10/UWfQI1/VQuBtKZvUAxXFMBB3cvdLXZa+A=; b=3vxxu2GrLstYQg
	dVVe5h1aqADoeFL9jVS9cVFHTkPGoLKFJsUdxFEf4yexS83dw3gp5PxxYIsMh3UPH0Krz4ZfFliU/
	SXWYAHNWcHe16g00cVnnL+1g3V7laxFgNz3e6ny0rFaRhtHRivg5LwFi1AY+TJe9FPn6DIN/o1e/H
	X5+/IFbzmX8L2iyHZyNhjaQYbvWjjs3KbCw+vQ3zEqtYVU2NrvQ/+LrCO5wHqAVfzM06XeiMW8NuO
	KN07GIJbx/OdPjci1eU15m8CIMLMcQLB5/7D3/ueCHAxVgp0c3cRE8pjEAPXmtOGJphjBJlvEj7Ov
	fM+irmSFZ5BVLJGI/YRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIpYt-006FMg-8m; Wed, 25 Aug 2021 09:51:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIpXq-006Erw-Pn; Wed, 25 Aug 2021 09:50:08 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id E37A6610FD;
 Wed, 25 Aug 2021 09:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629885005;
 bh=G9W19wcM7scN5TQI5aCEGctxyPWqb76aI4QghIn1k44=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=T2Rd6S2Y6qeStlduHD6EE0+u4FNeu23Pg6ejMu5pFTLW9GWCCHnAP63t1j9/7zO2f
 i79zpmRX57TPJWgjo+iLJmDsDGqPciyWNXnYh5wgw9gzqDkw9GRcnFcynfO934GMcU
 B69aFjXC7ORzbHcOrwl0p7JjISS/ROb6zZBBBrchirvRdILedFW9Q53UF7r0ajbxXA
 3XWPKCPKRz8p/0bMN0hJyXjLGGyU6mCAFKNcQFabqLy3VrWm2F1d6gii4FDSTbwZhE
 jl6XlQY0ovXdWomHJXYDke2e+fBUu0/IbQjkOH3jGK27PNIWVGXpmWueQ0P/XVWCgb
 lWB9Rr5HzNuUg==
MIME-Version: 1.0
Subject: Re: [PATCH] net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable
 warnings
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162988500584.26256.659865970373423632.git-patchwork-notify@kernel.org>
Date: Wed, 25 Aug 2021 09:50:05 +0000
References: <20210823143754.14294-1-michael.riesch@wolfvision.net>
In-Reply-To: <20210823143754.14294-1-michael.riesch@wolfvision.net>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, peppe.cavallaro@st.com,
 alexandre.torgue@foss.st.com, joabreu@synopsys.com, davem@davemloft.net,
 kuba@kernel.org, mcoquelin.stm32@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_025006_901436_3C1B79C5 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
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

This patch was applied to netdev/net.git (refs/heads/master):

On Mon, 23 Aug 2021 16:37:54 +0200 you wrote:
> This reverts commit 2c896fb02e7f65299646f295a007bda043e0f382
> "net: stmmac: dwmac-rk: add pd_gmac support for rk3399" and fixes
> unbalanced pm_runtime_enable warnings.
> 
> In the commit to be reverted, support for power management was
> introduced to the Rockchip glue code. Later, power management support
> was introduced to the stmmac core code, resulting in multiple
> invocations of pm_runtime_{enable,disable,get_sync,put_sync}.
> 
> [...]

Here is the summary with links:
  - net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable warnings
    https://git.kernel.org/netdev/net/c/2d26f6e39afb

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
