Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A333D374A9
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 15:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ur+lEvzbU+weLDt/aewPUC+IwuYS/j7/FgryF+J3My0=; b=B3spQ8mX00tA6u
	c4YeP+qySwaYaz9kUYF5FH+xMOvIMWCdd6gvpGV6LPppYHqRceQ/g1JtQaTy/CqMI0+wdnmY9QqME
	F7Qgc9WZYlNEKrD8TQgDOaSli70W2VoRRgo0aFAgkJz34caQJR/DAlKciBeI7QFkNWwQ469lJrpdy
	xfpbnXKYKZBvx8iy9uaAuO/TaEriyzn3Z3EzDSHfFKlgH519vmnjMz7L2g4GOJO4cm5UQyXNughPG
	eP8zRU1QrCPPtwGDW105DO2+Ki4lb+MLafivp0GaNBg28uXArH9kTy9X089/sd3vyBgU9/OqECeQ1
	dy7ckHnaso83z+J3kKDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SWH-0000000FIRW-07mq;
	Thu, 17 Oct 2024 15:34:33 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1STO-0000000FHpn-49eW;
	Thu, 17 Oct 2024 15:31:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 37D7AA44184;
	Thu, 17 Oct 2024 15:31:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3ABEC4CEC7;
	Thu, 17 Oct 2024 15:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179094;
	bh=ECx1lDXvwWS4376i+gg20ZVRZy7s1XIM5Q1ERrjIGCY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=eqQ/9DxZA0gG6PokB+PlBPossYFi43fxJu9nthmCv/TAHIQnlHEKI93duunau9a19
	 03AK6FZaFcDj6/20O0U9WJKhgrQriK/lwrBjHA23/GhKnv8vyZHUpoj8jWaBso0bUL
	 cp3wtwo7QMCWSnjFDcxbrhnOJIMpV+8eR7aGT4t2fBqhkzqoBuuQRHBKZHm21cJGsc
	 vY1AzK5N7MxcPJRinq5aT0FBnkpzn9xmLnvKwyvpbAvzh2NdaTr6QWNuU3mmML1QDP
	 wY4yYT5lX+zw7/QaK2Y1sqQS3zJi9QDtlIPevmf70AIF79yqJxLQSNZshssVO0gQGe
	 S3Y2wt833M1OA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
In-Reply-To: <20240923-sam-hdptx-link-fix-v1-1-8d10d7456305@collabora.com>
References: <20240923-sam-hdptx-link-fix-v1-1-8d10d7456305@collabora.com>
Subject: Re: [PATCH] phy: phy-rockchip-samsung-hdptx: Depend on
 CONFIG_COMMON_CLK
Message-Id: <172917909130.278159.917332740340210062.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:01:31 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083135_126925_4AC74D6C 
X-CRM114-Status: UNSURE (   5.85  )
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


On Mon, 23 Sep 2024 19:40:16 +0300, Cristian Ciocaltea wrote:
> Ensure CONFIG_PHY_ROCKCHIP_SAMSUNG_HDPTX depends on CONFIG_COMMON_CLK to
> fix the following link errors when compile testing some random kernel
> configurations:
> 
>   m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.o: in function `rk_hdptx_phy_clk_register':
>   drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1031:(.text+0x470): undefined reference to `__clk_get_name'
>   m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1036:(.text+0x4ba): undefined reference to `devm_clk_hw_register'
>   m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1040:(.text+0x4d2): undefined reference to `of_clk_hw_simple_get'
>   m68k-linux-ld: drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c:1040:(.text+0x4da): undefined reference to `devm_of_clk_add_hw_provider'
> 
> [...]

Applied, thanks!

[1/1] phy: phy-rockchip-samsung-hdptx: Depend on CONFIG_COMMON_CLK
      commit: d8f9d6d826fc15780451802796bb88ec52978f17

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
