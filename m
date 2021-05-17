Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F8AC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 22:50:23 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4643061209
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 22:50:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4643061209
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:Message-Id:From:
	Subject:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gE7jAq9dQIXcnRVhNgQSd0BqmQ8PMHPF8Kga37UD8HI=; b=V4jCxHeC/867f96clzwXfMGEZ
	i1sc0DtW1grgetuXmlN/qgIWKlCCXWHBxGfKnO4mfKcMOSX23Lqp61iuKr3VanEeWaBkCx+NwGPX9
	c8lFaGQVmapsh9EGWeuu4WhDaYURpq7GTC/aQnlLuaD43UD5UqQABTSheICkOoNJ2TQ1YCF18uTbD
	X5QN/icyCUVfLypQxSSxn3JRfpRPHBBmg/hIJehYpva+5CbWDA45d9XWwMj9HlMbQiFxgVkYvOZS+
	I67rBWKyLKMUPPjm6jWKjD5Op3xAxoXgqtogrvz33XrFl1/YNAdBKZoXJLz9eHhlPPDp+gJCX2RIz
	PlCa/Hbrg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lim41-00GMHx-2R; Mon, 17 May 2021 22:50:17 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lim3y-00GMHX-6A
 for linux-rockchip@desiato.infradead.org; Mon, 17 May 2021 22:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Cc:To:In-Reply-To:References:Date:
 Message-Id:From:Subject:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=iOR0Qcu8ZNYvsHZqfPNQR+2+6Y2QWrRD+ykuKPQJkwI=; b=ogchTOCTgm3fRmVVOYXWlGYw5R
 zs41UAfS2BFCbI6NS1b0ojCIukDZ+SsHi+7rvevpy+I4NGXbL4kaZ1m/mox5Eeg08M5Cx7QaaWcOI
 5Qty03dXOSR+GHg3YorDA0YYf38nAIN+hVwHzl8IqKWnIf5BA3PvziDdrfEhku1/6YuLZv5HgS9wv
 3jNyrmagJzNqsMV5EFDIWdXVyndQC8SK+OA5IUifz1KBExu72+LzxkVAjCQDpK4J0XMDrFZ20ZM9T
 eunKNJsV0zCt9uhJIOCc3rYDxfgZ/ULAbphzhqNS7uTr5dIXkqne5/SR95iw0tqnsieczDr82uY9R
 Ixgk6NVA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lim3v-00ECHF-Ia
 for linux-rockchip@lists.infradead.org; Mon, 17 May 2021 22:50:12 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 3A40161244;
 Mon, 17 May 2021 22:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621291811;
 bh=SiPzTsIqJmGUCqbaAmc3M2Z1x9Mwcu3ibWitf4T1ldA=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=WFLJDhmx5geOwnIh9qeL/X6f9CcAgfG/BARGyvIYCjt6gwfVM35ycW6nGVvHj5nKx
 xt/TO/4fJ/edgQejZSgLXC5dsW1tr9Gk8VVT8HPhRVhEL50x1QJvXgI93aNwHeh+Ku
 SLq2nWdP61lycH1iGwLc4W1xHEMjbDmZLIa8KNpbSc813F4vWFdEoDpw9gOg03hRuP
 DGxvF2Lw964Y/ROKpP3FBWKcZ7i8z9XkUJtCrt5FAjQFWnCIc6L5GtooJUUPHsW4IE
 V0RyXRHfl2nq4Z7gMjGeCleL0bzZBdkAkyOpJxXcmo6rGVFlmb1JLum086v/I3EVS2
 DeALc6ATvvyww==
MIME-Version: 1.0
Subject: Re: [PATCH v3 net-next 0/4] net: stmmac: RK3568
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <162129181118.15707.9043302436761903769.git-patchwork-notify@kernel.org>
Date: Mon, 17 May 2021 22:50:11 +0000
References: <20210517154037.37946-1-ezequiel@collabora.com>
In-Reply-To: <20210517154037.37946-1-ezequiel@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, joabreu@synopsys.com, heiko@sntech.de,
 davem@davemloft.net, kuba@kernel.org, pgwipeout@gmail.com,
 kever.yang@rock-chips.com, david.wu@rock-chips.com, robh+dt@kernel.org,
 jbx6244@gmail.com, wens213@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_155011_650155_1A4266EE 
X-CRM114-Status: UNSURE (   6.53  )
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

This series was applied to netdev/net-next.git (refs/heads/master):

On Mon, 17 May 2021 12:40:33 -0300 you wrote:
> Here's the third version of this patchset, taking
> the feedback from Heiko and Chen-Yu Tsai.
> 
> Although this solution is a tad ugly as it hardcodes
> the register addresses, we believe it's the most robust approach.
> 
> See:
> 
> [...]

Here is the summary with links:
  - [v3,net-next,1/4] net: stmmac: Don't set has_gmac if has_gmac4 is set
    https://git.kernel.org/netdev/net-next/c/d6b0625163a8
  - [v3,net-next,2/4] net: stmmac: dwmac-rk: Check platform-specific ops
    https://git.kernel.org/netdev/net-next/c/37c80d15ff4b
  - [v3,net-next,3/4] dt-bindings: net: rockchip-dwmac: add rk3568 compatible string
    https://git.kernel.org/netdev/net-next/c/f9da1c9d7fb5
  - [v3,net-next,4/4] net: stmmac: Add RK3566/RK3568 SoC support
    https://git.kernel.org/netdev/net-next/c/3bb3d6b1c195

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
