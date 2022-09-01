Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1BADECAAD1
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 10:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGVsI+kkmGW11RO75VC/FjcfgS5VCowf5bfmUpv0Ubc=; b=ERs5aYv4y5iJDv
	o7cDYVOMZEj7eqpxTXUA5Z20QmJQtZpbS0+kCWb/tZ2g26waUtzvy5O5hRgmNz5ALAcWUKUH6AV5R
	augvEf90TQoe0O3vvqiMLyG6V9twH5bz9z5tVOIksy5iht4y1uKhzLraF+xxH60QdJZChWdxXpKGC
	IvuPL0UzEkNEd2fgztWrZXLmIhqgY7AbJarDFx0RYiwN4WCmUSlsNokaqDiDfILKctVqneB+0lsDt
	YosxZ3s63QaZsCEM0zT7jCPLVMRDO5U8stiuQ5ZZjCqBTFjomzM++t7p5OtYGBtOe30TTR0OZqe9G
	B88DhQMO02Veh37rHLOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTh9b-00AxyV-3A; Thu, 01 Sep 2022 10:10:31 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTh9Q-00AxuJ-Nn; Thu, 01 Sep 2022 10:10:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 52E1D61BBD;
	Thu,  1 Sep 2022 10:10:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD84C433D7;
	Thu,  1 Sep 2022 10:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662027016;
	bh=lyF1AoH2SuCW/n4u3M3W/4DQEDCWpqmu0ejVEWc3mWQ=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=RQaJ9mAMUCQCnSAqlo01M8svyC52PJxO+MdtWEiq8Cz9HTmknozU7XBpGsEt+Qn3H
	 vlmWBZpKtOCcVXOXHP+w7t5ajH5oiT2yTx5a/EFKpCmBKJQ1HEr4qOUXskiXtnKsnZ
	 HN00YOeICVel5pvKv4NO0hxcZsvxo+zPF7YRg+nmfbUzlizNBuqEeDYne65/qpLizT
	 2anOYEvAfMwlcTB0ah01aNALg23UOEgPuPpmZT3Fr8O/57luQXN1UkEb3+CVTNymeq
	 HiF/R+digNe6EQ414Mi0GzT87y2d7ZvI++LohOd+Nrw95O0OlGBeBDou4gsoKnRHbE
	 vl5zMJU9SKE2g==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 914C3E924D9;
	Thu,  1 Sep 2022 10:10:16 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCHv3 0/2] RK3588 Ethernet Support
From: patchwork-bot+netdevbpf@kernel.org
Message-Id:  <166202701658.6021.5345078422266376617.git-patchwork-notify@kernel.org>
Date: Thu, 01 Sep 2022 10:10:16 +0000
References: <20220830154559.61506-1-sebastian.reichel@collabora.com>
In-Reply-To: <20220830154559.61506-1-sebastian.reichel@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
 joabreu@synopsys.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_031020_851522_56C2F02A 
X-CRM114-Status: GOOD (  10.15  )
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

This series was applied to netdev/net-next.git (master)
by Paolo Abeni <pabeni@redhat.com>:

On Tue, 30 Aug 2022 17:45:57 +0200 you wrote:
> This adds ethernet support for the RK3588(s) SoCs.
> 
> Changes since PATCHv2:
>  * Rebased to v6.0-rc1
>  * Wrap DT bindings additions at 80 characters
>  * Add Acked-by from Krzysztof
> 
> [...]

Here is the summary with links:
  - [PATCHv3,1/2] net: ethernet: stmmac: dwmac-rk: Add gmac support for rk3588
    https://git.kernel.org/netdev/net-next/c/2f2b60a0ec28
  - [PATCHv3,2/2] dt-bindings: net: rockchip-dwmac: add rk3588 gmac compatible
    https://git.kernel.org/netdev/net-next/c/a2b77831427c

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
