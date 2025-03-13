Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 165A5C282DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Mar 2025 10:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTr9Ee1F4uuk7I7tG1rcv0SmFcwSWwdFvOfpsuILDVY=; b=wXu3z9hKHg6t37
	n/3QnXUoZrO174kGSfT2ICGvf4BdggNoqK/1tKeAfQpfCaGwgcvuo6eZSxCJsxwQXwH4XYqn6Nmm/
	DAHvdPX2iHYd7ml4PbipzX3D3ht82KxhjCGtyC8jl143l2GpMJ0xNWDhRYuznQ17EQZDDRoxCpIPf
	k/ZyaIcl/SJ9t46r8n1rSzpHTeOJn/TM0F4638RwTAQM2rXzgb74SB69Qi3mxACiRT65mNSUben6H
	Ol2A5Wh9w8qY0XvqKip8/tJcuptPCxVBkbYMz9YrBnDYgZeWtpFZrc/LvFxXyjEr8mg+WYMw9r2rx
	kb1Lxt3HTIJcLrsrytFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfXU-0000000ApHC-1I82;
	Thu, 13 Mar 2025 10:11:44 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfVo-0000000Aoz2-0Pci;
	Thu, 13 Mar 2025 10:10:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0AB14A45987;
	Thu, 13 Mar 2025 10:04:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0D0FC4CEEA;
	Thu, 13 Mar 2025 10:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741860598;
	bh=3ia4Sn6jj2l6liyurFbn7ply3ehwt3UFgJmXXXgNixs=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=LNtyegOucLPnqQ38sjFfRNvvezBFC4y9FCkZcmFH2kWyqiF9R/iS7BkNuRtP3S1u8
	 KiHhdWl+mGBJJgaazt2AOesNpi9zIdIn6Y2kNzPavbAbR/mhddZP+hfwrbL/MyJD0M
	 B5K+82CiclQzGCs5NcG5cmWHeT9EaK7aT6tuJMY0wROiolOBKIfPuYbNIVacqCkbA9
	 10oEzXg6zG2/IklQ50xj9u9uu8wnkuJuZh363iPIHrTVHmuSEtSc2OQkojILJLibqZ
	 +yWBS6dIDSs65QEkQMUVTmw6PadG440vJqMvbAJklNP2QyciSbI8g7DWPZ2zpIdJFB
	 h9C7azPak9Qcg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70BD63806651;
	Thu, 13 Mar 2025 10:10:33 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH v2 0/3] net: stmmac: dwmac-rk: Validate GRF and peripheral GRF
 during probe
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <174186063226.1446759.12026198009173732573.git-patchwork-notify@kernel.org>
Date: Thu, 13 Mar 2025 10:10:32 +0000
References: <20250308213720.2517944-1-jonas@kwiboo.se>
In-Reply-To: <20250308213720.2517944-1-jonas@kwiboo.se>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: heiko@sntech.de, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_031000_209004_F3794100 
X-CRM114-Status: UNSURE (   7.67  )
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

This series was applied to netdev/net-next.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Sat,  8 Mar 2025 21:37:12 +0000 you wrote:
> All Rockchip GMAC variants typically write to GRF regs to control e.g.
> interface mode, speed and MAC rx/tx delay. Newer SoCs such as RK3576 and
> RK3588 use a mix of GRF and peripheral GRF regs. These syscon regmaps is
> located with help of a rockchip,grf and rockchip,php-grf phandle.
> 
> However, validating the rockchip,grf and rockchip,php-grf syscon regmap
> is deferred until e.g. interface mode or speed is configured.
> 
> [...]

Here is the summary with links:
  - [v2,1/3] dt-bindings: net: rockchip-dwmac: Require rockchip,grf and rockchip,php-grf
    https://git.kernel.org/netdev/net-next/c/313cf06ef4de
  - [v2,2/3] net: stmmac: dwmac-rk: Validate GRF and peripheral GRF during probe
    https://git.kernel.org/netdev/net-next/c/247e84f66a3d
  - [v2,3/3] net: stmmac: dwmac-rk: Remove unneeded GRF and peripheral GRF checks
    https://git.kernel.org/netdev/net-next/c/41f35564cb71

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
