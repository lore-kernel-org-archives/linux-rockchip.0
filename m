Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D22FAC48286
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 21:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gE0tGMjdD/u2Xl2nmimbtde68lbpUyaaZmHWu3dJKk=; b=mPqIsnDHxX9Jdq
	4Vl3Bf71CQBHw5M2gtReNU7YL/QUyMlY/P1iFTCDrBsU0RV+TMfCq+Yppxy4w3P5MGoQxRljvUHWv
	/Wm5h0MGI780CrZSD0Xw54yJPPvO/nnEO3CxG1TYPBPJz8P2mzUSkHk41xhNbG/fOaXKmULc7K2lw
	wALJcn+SLg+3aTL4Hg6O0KHeFefNeSxlexEiVKCuvebXOkwpqpuu4Vp2F+4Mz6dJeG9/mFsE3t5ez
	nWEqRPNQS/14XtDLOjjQ0vAUDWfK3WbmvEV92/T7T3ZO5vfwAvcf6bjBG/FGiVbwPlGxS/dYd8j8/
	cjtT4mv3atsjZJj4Fn3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71T-00000001vGq-1zAT;
	Thu, 25 Jan 2024 21:12:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71N-00000001vCw-01oq
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Jan 2024 21:12:27 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71L-0002EX-K2; Thu, 25 Jan 2024 22:12:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	mturquette@baylibre.com,
	krzysztof.kozlowski+dt@linaro.org,
	sboyd@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] Add Support for RK3566 Anbernic RG-ARC
Date: Thu, 25 Jan 2024 22:12:13 +0100
Message-Id: <170621707721.1872080.13657125176438385219.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240123212111.202146-1-macroalpha82@gmail.com>
References: <20240123212111.202146-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_131225_092917_B777A1CA 
X-CRM114-Status: UNSURE (   9.92  )
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

On Tue, 23 Jan 2024 15:21:07 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Anbernic RG-ARC S and RG-ARC D handheld gaming
> console.
> 
> Chris Morgan (4):
>   arm64: dts: rockchip: Move device specific properties
>   dt-bindings: arm: rockchip: Add Anbernic RG-Arc
>   clk: rockchip: rk3568: Add PLL rate for 128MHz
>   arm64: dts: rockchip: add Anbernic RG-ARC S and RG-ARC D
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: Move device specific properties
      commit: 46943b333d60b8f4998df359fe697254eb2f90ad
[2/4] dt-bindings: arm: rockchip: Add Anbernic RG-Arc
      commit: e441dd472eb23329de738f365a5429fe7e6f844b
[3/4] clk: rockchip: rk3568: Add PLL rate for 128MHz
      commit: b3244351e2b39bd49aba780ea204f0f2a45a4725
[4/4] arm64: dts: rockchip: add Anbernic RG-ARC S and RG-ARC D
      commit: 05a708c6ebcadfb6c506f649375ccfc56b572652

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
