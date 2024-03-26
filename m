Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7582FC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 19:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Tv9FXV7oEDNpxTa1VcxUxw+CbKk4leYuJlpYLOmYMwE=; b=behUPt2/k7bYuirAKo9HyDvqXI
	b3a9qnG5JP5kOg82KSYdZe4yHyD/Xc6sO1O9mE6mwAPwE0dnkx/dvMQR9mf6DZXEyuox0ynmrE/Eb
	iCJc28FnpS1EKPC2Q0uFawxB5aLJ1CvOPJjIWi+XCwJGqS9qGal/0zYGwQ9tbjINRQYWZwzXlTcsY
	XDMiEo0ImWcV0I4C0qI0OYMyUOoGJyJ9W9j5TO3xv6XNiUwX8+bCnV3X4kwIksykHU8bkEyPnRP3o
	xDfflFjIfoI7eU0ewEk+33qDcIrZmUpGe39lFxBRWlUfg2EJVKwRkbEN5nOdFlG8pkXNJ+zMgGDqK
	0yBDR/hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCDL-0000000666S-11vx;
	Tue, 26 Mar 2024 19:12:03 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCDH-0000000665G-2Z7N;
	Tue, 26 Mar 2024 19:12:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D86F8CE0AC3;
	Tue, 26 Mar 2024 19:11:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D68D7C433F1;
	Tue, 26 Mar 2024 19:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711480317;
	bh=EZrkA8k/lLE5hJHBsQBbRLVO8mmgDFjXv/SnhYX5MnY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=TnettQcMgC+GPeIX6M3vDm6KlVguwfzIDMU59TcyqH4VvFiJPA4WA/zlnLxZpsbzX
	 wa13BGPb7IeI73saRTF5+HFwqyZKIKJLr6EROqM+ZneqCGmJ/3DMSMiYGhvEdv4M7O
	 Sk2CxKResm+1raMxyym/kXTs55CzshgXG0YnJFIFKiBfqF8MRDztPCLPQukATnJy/o
	 yrDsddROheOso8oiui8DRH0SUPCf/C75nkTo0OAQQVus4Du45HODXQ+BaMXAlnlGpL
	 1pu4V935oeEAdrhhTqrBkWLMD3f/PFtq1KAp3E6d9nTtSEJuT0rckFZEAMadIBMYzs
	 vBV86TmCwEGbA==
Date: Tue, 26 Mar 2024 14:11:55 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: conor+dt@kernel.org, kernel@collabora.com, devicetree@vger.kernel.org, 
 sebastian.reichel@collabora.com, heiko@sntech.de, 
 linux-arm-kernel@lists.infradead.org, boris.brezillon@collabora.com, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
In-Reply-To: <0f3759ee390f245dac447bbee038445ddfecbec0.1711383286.git.dsimic@manjaro.org>
References: <0f3759ee390f245dac447bbee038445ddfecbec0.1711383286.git.dsimic@manjaro.org>
Message-Id: <171148006524.3222394.1157008244152468379.robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: quartzpro64: Enable the GPU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_121159_859148_9516C9F6 
X-CRM114-Status: GOOD (  16.69  )
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


On Mon, 25 Mar 2024 17:19:04 +0100, Dragan Simic wrote:
> Following the approach used to enable the Mali GPU on the rk3588-evb1, [1]
> do the same for the Pine64 QuartzPro64, which uses nearly identical hardware
> design as the RK3588 EVB1.
> 
> The slight disadvantage is that the regulator coupling logic requires the
> regulators to be always on, which is also noted in the comments.  This is
> obviously something to be improved at some point in the future, but should
> be fine for now, especially because the QuartzPro64 isn't a battery-powered
> board, so low power consumption isn't paramount.
> 
> [1] https://lore.kernel.org/linux-rockchip/20240325153850.189128-5-sebastian.reichel@collabora.com/
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-quartzpro64.dtb' for 0f3759ee390f245dac447bbee038445ddfecbec0.1711383286.git.dsimic@manjaro.org:

Error: arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts:288.1-5 Label or path gpu not found
FATAL ERROR: Syntax error parsing input tree
make[3]: *** [scripts/Makefile.lib:427: arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb] Error 1
make[2]: *** [scripts/Makefile.build:485: arch/arm64/boot/dts/rockchip] Error 2
make[2]: Target 'arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dtb' not remade because of errors.
make[1]: *** [/home/rob/proj/linux-dt-testing/Makefile:1387: rockchip/rk3588-quartzpro64.dtb] Error 2
make: *** [Makefile:240: __sub-make] Error 2
make: Target 'rockchip/rk3588-quartzpro64.dtb' not remade because of errors.






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
