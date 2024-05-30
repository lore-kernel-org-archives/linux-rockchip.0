Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E0A4C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 May 2024 00:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTea4kPPpojLRluN5GvDZF1Ts/+54X54sagAz54TuYg=; b=jq4MeZr4EnYltp
	2K96nmuI7Ae4Rz39oBy+Sx0lthz9J2zIc28MowpPNrSlfOq7/fblXgXRNl8KRljQOZy+dkybAs93Q
	gGeoWTpmvv1E3EuYuXRlSqmpatAklcxR77cHIiCy27kGINU13VG4F8oGowbD1qPnVV/qqA6jkvnZ9
	8Yp1eP/sMufjFPcnoCbJebjNdBKw0Uo/OUl5pbOMc/YaVTUos2KFeZh0U6NwrEanQMRmssIdQoQR4
	fMSsE86HMPVlSQec6sleYpMUzpdOXyCQI0MSm32ufB2xroYraSTbM/MuVvYpx3J4owUSApNpYNSmo
	zTbkUGUh5a2YM0faqwmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCTX4-00000005soS-3Uai;
	Thu, 30 May 2024 00:20:38 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCTX1-00000005snw-2Sac
	for linux-rockchip@lists.infradead.org;
	Thu, 30 May 2024 00:20:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5C61ACE1924;
	Thu, 30 May 2024 00:20:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88850C32786;
	Thu, 30 May 2024 00:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717028431;
	bh=n7hlT0uhmy6M3F0Ua2czUZF1UCn0/L9iLZtHkVv9GLE=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=A2Q8HJdEZzwUCKf1uEU/iKgSUu8KmfyajlUv0gsTWzXMD3fPlLS7f3glu3Y1m2NZI
	 NOeLoeqXb+YeN5W7Qkj85+3ukRcqlt5JrhYAgOHMMZwskk3yjD9mZ0EZJSQddevdjn
	 kAwttHzZv/CCWZVa4OQQ2Afvp4sce3eyxLJ/X3cNzlcKhn96rwOXcdD81cY733mst+
	 mLt/x8zcvBSXsvg9J+xs3Xu1NF+hhf4fJZXDrTLDYZ6/PpBI0gORUr7WecVDpOA6nz
	 DYD57Wg1qJXyidMNjKG95kYuwVHO9Q3SO56pAL17rZi3y4vTFCCipa524Bm8a0VEa7
	 ATJ0Vevm06lIw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 7534FCF21E0;
	Thu, 30 May 2024 00:20:31 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH v2] dt-bindings: net: rockchip-dwmac: Fix rockchip,rk3308-gmac
 compatible
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <171702843147.13917.16610885650179845184.git-patchwork-notify@kernel.org>
Date: Thu, 30 May 2024 00:20:31 +0000
References: <20240528093751.3690231-1-jonas@kwiboo.se>
In-Reply-To: <20240528093751.3690231-1-jonas@kwiboo.se>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 alexandre.torgue@foss.st.com, peppe.cavallaro@st.com, joabreu@synopsys.com,
 t.schramm@manjaro.org, linux-rockchip@lists.infradead.org, heiko@sntech.de,
 krzysztof.kozlowski@linaro.org, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_172035_900459_760DB335 
X-CRM114-Status: UNSURE (   6.30  )
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

On Tue, 28 May 2024 09:37:48 +0000 you wrote:
> Schema validation using rockchip,rk3308-gmac compatible fails with:
> 
>   ethernet@ff4e0000: compatible: ['rockchip,rk3308-gmac'] does not contain items matching the given schema
>         from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#
>   ethernet@ff4e0000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts', 'phy-mode',
>                      'reg', 'reset-names', 'resets', 'snps,reset-active-low', 'snps,reset-delays-us',
>                      'snps,reset-gpio' were unexpected)
>         from schema $id: http://devicetree.org/schemas/net/rockchip-dwmac.yaml#
> 
> [...]

Here is the summary with links:
  - [v2] dt-bindings: net: rockchip-dwmac: Fix rockchip,rk3308-gmac compatible
    https://git.kernel.org/netdev/net-next/c/544a74c32bcc

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
