Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51333C35FFA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Mar 2025 17:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDMT9QxHBFZoheTg91sHfUO2b0CszuKXZb5sHfln+08=; b=d6hRsC/pGemnqd
	Ytw+UOUvWZ80UVOnYE7zRv4clv054Y6Zbt800DtEfmj8vhh5OJr8tROv+5Wo5LH3NvY0qS1g0boyh
	NAJ0rS9eGB/BiXOqWkwf8W+7kXyeygi83LYgj3Sz666iMOvDvyr33IMSEsfrB3/YAf15W45fiGsDY
	W7yiHwNoj+89dYg9P3ZM52/u6dzmOczNmdS319otYNATKty+/NCO+uYWynjiFjRQii7RmA61X9xjG
	1T/KbvWVJgYgfDgv2R3HcCA4uWWPAKYF3R7pF932nTeagV8KHtgeDkC0cGdV214TiuP1AzKVNH0Gm
	fv8qcZZ27O4tjTJxLK3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuxRl-00000009k9E-13C1;
	Wed, 19 Mar 2025 17:43:17 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuxOa-00000009jcU-2xlL;
	Wed, 19 Mar 2025 17:40:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6CE9DA4927B;
	Wed, 19 Mar 2025 17:34:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A646C4CEE4;
	Wed, 19 Mar 2025 17:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742405999;
	bh=3iS1Nid3hVupIVK8yX+AtPOSA9VbgHfzJ6vsdb/SE9w=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=mipelKeXek0u7WEJJhh/0KMAGYRgGSyMkdw/pPEzcT4WMmww+U6Wd7D983rVPLsep
	 VsN1304unfrt/5jh+/bS6tMK2hi23RzOGZQCIknhXjLCr3zJOwB0hnr4yulMqd+4pt
	 bXochih0TaBQ5FF/W/J8Y9Z445F601/Qgn8hIdjUNAqlYQ4W2iW7HsT5NfubHt0JC5
	 8ipu96Wknmc0c+SFNNZqnkts6s5GgdKo3JEwgBwkcx3fd8keXDFdH+c7+JMQQOx60i
	 ckoJ9zze9a1wwZIv2gOLfDoOUXgtceqmrcEiAcUyijBICO23/HCl0HMOmSOgJlPmYg
	 6DUu/9WHFXyKQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 71042380CFFE;
	Wed, 19 Mar 2025 17:40:36 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH RESEND net-next v2] net: stmmac: dwmac-rk: Provide FIFO sizes
 for DWMAC 1000
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <174240603529.1129938.15321664004147428078.git-patchwork-notify@kernel.org>
Date: Wed, 19 Mar 2025 17:40:35 +0000
References: <20250312163426.2178314-1-wens@kernel.org>
In-Reply-To: <20250312163426.2178314-1-wens@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, heiko@sntech.de, wens@csie.org,
 hayashi.kunihiko@socionext.com, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_104000_807340_0DF541BA 
X-CRM114-Status: UNSURE (   8.73  )
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
by Paolo Abeni <pabeni@redhat.com>:

On Thu, 13 Mar 2025 00:34:26 +0800 you wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The DWMAC 1000 DMA capabilities register does not provide actual
> FIFO sizes, nor does the driver really care. If they are not
> provided via some other means, the driver will work fine, only
> disallowing changing the MTU setting.
> 
> [...]

Here is the summary with links:
  - [RESEND,net-next,v2] net: stmmac: dwmac-rk: Provide FIFO sizes for DWMAC 1000
    https://git.kernel.org/netdev/net-next/c/d3c58b656c97

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
