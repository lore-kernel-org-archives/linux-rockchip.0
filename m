Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DDDFC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 10:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pzq//tNc9F789h+SHv23cDhzCzWCT10GjZVWr/hFzx8=; b=VyAMBqbVftBMJZyJ5+vtup3ZuL
	Z2asPnhQN2/5Md1O5lRz5lG7ckwuE56BFqNH97i3dDYVcNld4cJ5199KRvMevHAdKNl8JOpvsRBFw
	zX7bO8lZVixNesvzgB9gKrPb6fnqv3jfoNLaXdq9uZRpI1iftMq3GTFoL7mMGR+Vfhu7BPgXNFhqN
	Bfj2fjszHhqzxnnNiF2/VrDX/oSkzGw5a04gjJyn8UBykkgO9cNdmFoPs8kDp28Khk3mznWB0Yqz1
	Bq9XGjKIWFsABT66gZ8PFqClwVQHj/ayhubRGsYWS3gaNEh7cIizhl6vqTsus2UxhE0GzqHZIXZt2
	aNdqufZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5lox-008rLk-5s; Thu, 15 Dec 2022 10:50:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5lou-008rKo-QI
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 10:50:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3E82B61C64;
	Thu, 15 Dec 2022 10:50:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97E34C433EF;
	Thu, 15 Dec 2022 10:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671101430;
	bh=0tc8CxRTfC5rdugzN4jzLVxBoOycbgCTK5F8bKMJ9OY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=gs66ooJqpNjWolvbm7j/gPGp2jEb3N7H2wVX6UJetNFK1WnUOkkN3qd4/eB+oKB+N
	 oxIDFCMbDoiYgr3MBRrD1w9q7mfd8YTCWP7ILz0G9qZYMQQ1gPke3rGO/AJysQfmv9
	 yWmg1sQbS2rquL30Vbo1p01cHJZhp44oNrHj08Bc3VfZvcu1G1SBjEUfP2I0Irj9cI
	 +pwycLOXOAWHiVjzS6KAXcAfftp9FcBD5Nv0AZVWriuHrfH+mXDAeX7P+tLkYmjDpv
	 D8ToXT0NLnIm08NoZz2/keL79quD3qMtxaHCpLpXK0gQeoOoV//hpvXCaJb5iEMpyV
	 Q+DN86iI3Z0gQ==
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1p5loq-00CpAU-89;
	Thu, 15 Dec 2022 10:50:28 +0000
MIME-Version: 1.0
Date: Thu, 15 Dec 2022 10:50:28 +0000
From: Marc Zyngier <maz@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Linus Walleij
 <linus.walleij@linaro.org>, Christopher Obbard <chris.obbard@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>,
 kernel@collabora.com, Yifeng Zhao <yifeng.zhao@rock-chips.com>, Elaine Zhang
 <zhangqing@rock-chips.com>, Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCHv6 3/7] arm64: dts: rockchip: Add base DT for rk3588 SoC
In-Reply-To: <CA+VMnFzMgOC7sgcpQ7nZx2gaJfqqvRu8RxETguaBHN1Lg_nG_w@mail.gmail.com>
References: <20221214182247.79824-1-sebastian.reichel@collabora.com>
 <20221214182247.79824-4-sebastian.reichel@collabora.com>
 <CA+VMnFzMgOC7sgcpQ7nZx2gaJfqqvRu8RxETguaBHN1Lg_nG_w@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <9a3cf2f1567f2a5990ed6dea9d6a5669@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: jagan@edgeble.ai, sebastian.reichel@collabora.com, heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, linus.walleij@linaro.org, chris.obbard@collabora.com, benjamin.gaignard@collabora.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, kernel@collabora.com, yifeng.zhao@rock-chips.com, zhangqing@rock-chips.com, sugar.zhang@rock-chips.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_025032_936130_87A05241 
X-CRM114-Status: UNSURE (   8.77  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2022-12-15 10:45, Jagan Teki wrote:

> One nick with dtbs_check,
> ethernet@fe1c0000: Unevaluated properties are not allowed ('reg',
> 'interrupts', 'interrupt-names', 'power-domains', 'resets',
> 'reset-names', 'snps,axi-config', 'snps,mixed-burst',
> 'snps,mtl-rx-config', 'snps,mtl-tx-config', 'snps,tso', 'mdio',
> 'stmmac-axi-config', 'rx-queues-config', 'tx-queues-config' were
> unexpected)

You did read the cover letter, right?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
