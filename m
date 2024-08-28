Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A554BC7112F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 20:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GO1r4xZZswC8+DS1gKcFPdM2BDEcDhlfPsZUEX+msQ4=; b=39wOnp/V1/Sz6s
	h9arn4lj1FA/Cr/yYL8lQQG3ELRpTLdTJXKY9g5sKk2KgNzmV0iUgEv/3EriwLDjTVqG/p1uqbXET
	q30+GWcfkCAIvElvWrozTpQBsSDsrgIzfO5VPIKLG9zQ/Z0suDWuHptH63orJzpOv5A7cxHuTpnOn
	AlMg9Z4cU50b5fPRV9q2hZe09NXJ1JpDSXNdm/lUhfTIF+TeTuDk0RZauoTXLeHRKWuuZdbU3ku5d
	0NvNSJN6ls43zPgafqhAkolf/ATBYFKCs5Ofn8BuS2OtmIzqQRw4fGEB3/63+0eZMRC7Vdq4sUsVT
	oMjYcClqhOnpOJMaQpiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjPfD-0000000Gxtk-49hP;
	Wed, 28 Aug 2024 20:53:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjPfB-0000000GxsH-0qv0;
	Wed, 28 Aug 2024 20:53:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=W3xTxHAVy8T5VJ7Gg1s6MiPfQ5UiQz/WzG7TYzz8skM=; b=bzF8eE9KcDKbWremHjI+p9vENo
	kOIg26PodC1g7xxbORtbpeQWua22oLyy4EqQdMupKpPdm45NkbFR6TZqGa7THFKRpSypmVGGrnUMR
	xNNR2qsiFU5ilXpcsC9Y0Mnnsl5xYmy00k8CQ5UDwL+hVdxNj/eiIloiwHdzA0SNjHGP6be0YfI9O
	VYrzn0CIPvxCFPWrjI0/3uDbJncw7K0vgTvq7/iVMgIok/2ydV/8ykuc+/rLTeP75pfylc+q3QDWh
	PAshHSQvyOuVHdr+5AV7YtdgVuYEPG7o3KbOE0Thle7C+ewbX6iZCHG9e6W5yEPr/5tzI2SqEtbES
	OdWcY/XA==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjPf7-0007tF-O1; Wed, 28 Aug 2024 22:53:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	mturquette@baylibre.com,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	krzk+dt@kernel.org,
	sboyd@kernel.org
Subject: Re: [PATCH v1 0/9] clk: rockchip: Drop CLK_NR_CLKS CLKPMU_NR_CLKS usage
Date: Wed, 28 Aug 2024 22:53:03 +0200
Message-ID: <172487836642.1577158.12196598647797813806.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
References: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_135309_283720_2F2FD073 
X-CRM114-Status: UNSURE (   9.96  )
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

On Mon, 26 Aug 2024 18:36:40 +0200, Johan Jonker wrote:
> In order to get rid of CLK_NR_CLKS and CLKPMU_NR_CLKS
> and be able to drop it from the bindings, use
> rockchip_clk_find_max_clk_id helper to find the
> highest clock id.
> 
> Johan Jonker (9):
>   clk: rockchip: px30: Drop CLK_NR_CLKS CLKPMU_NR_CLKS usage
>   clk: rockchip: rk3036: Drop CLK_NR_CLKS usage
>   clk: rockchip: rk3228: Drop CLK_NR_CLKS usage
>   clk: rockchip: rk3288: Drop CLK_NR_CLKS usage
>   clk: rockchip: rk3308: Drop CLK_NR_CLKS usage
>   clk: rockchip: rk3328: Drop CLK_NR_CLKS usage
>   clk: rockchip: rk3368: Drop CLK_NR_CLKS usage
>   clk: rockchip: rk3399: Drop CLK_NR_CLKS CLKPMU_NR_CLKS usage
>   dt-bindings: clock: rockchip: remove CLK_NR_CLKS and CLKPMU_NR_CLKS
> 
> [...]

Applied, thanks!

[1/9] clk: rockchip: px30: Drop CLK_NR_CLKS CLKPMU_NR_CLKS usage
      commit: 2496910c84a4bd1aa2c10fe57cf4ae1cbcab17f4
[2/9] clk: rockchip: rk3036: Drop CLK_NR_CLKS usage
      commit: ec4f4261c315d9bc30bb1bb8c3bb17cbaebe7741
[3/9] clk: rockchip: rk3228: Drop CLK_NR_CLKS usage
      commit: 819b2e19a9f7dc9e84a00e2f6da2b2f15a01cee6
[4/9] clk: rockchip: rk3288: Drop CLK_NR_CLKS usage
      commit: 545b1313c5a24eed0e4d34554c715b46686251ff
[5/9] clk: rockchip: rk3308: Drop CLK_NR_CLKS usage
      commit: 31fe14956883bc09846ce239993e215330218a6f
[6/9] clk: rockchip: rk3328: Drop CLK_NR_CLKS usage
      commit: 0758fe99bc969294c2391de145b67c1223c7b104
[7/9] clk: rockchip: rk3368: Drop CLK_NR_CLKS usage
      commit: 41563197e7f2a0b449476bbbe931cb2806e84966
[8/9] clk: rockchip: rk3399: Drop CLK_NR_CLKS CLKPMU_NR_CLKS usage
      commit: 1a229868852ffe1d59f6bdad1e473d9d5f9e14bb
[9/9] dt-bindings: clock: rockchip: remove CLK_NR_CLKS and CLKPMU_NR_CLKS
      commit: fb234516c5a0728d7dbd718667c33c1523b55fe8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
