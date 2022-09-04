Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CB47C6FA82
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Sep 2022 17:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kLQl2BZlfA3Miluq90kr7p4hiEA5WaFS85hH29O7Dk=; b=JaYsjepsuYfGOA
	Pw3e/p6ONfOCYa2YzDpfkYsAtLrcW8qTnj1rKBG9KEXw+YjhnCG+AAKH3B07Jm9Y2iH2CfLR4kjPG
	ZFf2kok1NgfXTTxsyOPZX+pndnbl4mQZYgtST50q4ccuPBaRmEmtR4cmicqh5mKNUjtfY4k2vzwmS
	7OpmaUeAiAawlRbTtEJfO5eRXTPoYN8MgK8o0Xam4cHhWdfJJArusw6w7tBq6rhL5Mdrgyh6GP/gH
	3IRK6xd74YhzVs0TZpbYY2Rj+3dwXHi2zp+WsklO3pcnbAmrcRdyKwho8SORYBh0z8fo2KbCpH+5j
	qSvLUWbojOaC80x1b/Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUtKc-008U7h-8m; Sun, 04 Sep 2022 17:22:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUtKG-008TqM-0G; Sun, 04 Sep 2022 17:22:29 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oUtKC-0000tW-4g; Sun, 04 Sep 2022 19:22:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wunderlich <linux@fw-web.de>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Liang Chen <cl@rock-chips.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Frank Wunderlich <frank-w@public-files.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Simon Xue <xxm@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: (subset) [PATCH v5 0/5] RK3568 PCIe V3 support
Date: Sun,  4 Sep 2022 19:22:18 +0200
Message-Id: <166231195329.2423948.2237968885556290321.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220825193836.54262-1-linux@fw-web.de>
References: <20220825193836.54262-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_102228_061777_0469C584 
X-CRM114-Status: UNSURE (   9.73  )
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

On Thu, 25 Aug 2022 21:38:31 +0200, Frank Wunderlich wrote:
> This series adds Rockchip PCIe V3 support found on rk3568 SOC.
> 
> Compared to PCIeV2 which uses the Naneng combphy, PCIe v3 uses a dedicated
> PCI-phy.
> 
> Frank Wunderlich (4):
>   dt-bindings: phy: rockchip: add PCIe v3 phy
>   dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
>   arm64: dts: rockchip: rk3568: Add PCIe v3 nodes
>   arm64: dts: rockchip: Add PCIe v3 nodes to BPI-R2-Pro
> 
> [...]

Applied, thanks!

[2/5] dt-bindings: soc: grf: add pcie30-{phy,pipe}-grf
      commit: 4e441643b32249b4dac89be063255957f3d2938c
[4/5] arm64: dts: rockchip: rk3568: Add PCIe v3 nodes
      commit: faedfa5b40f095d09040c3a040e2f8dee4a36b4b
[5/5] arm64: dts: rockchip: Add PCIe v3 nodes to BPI-R2-Pro
      commit: 86973ae0355bc302d5e4c10fa382f6801feb4b90

As stated in the separate mail, I've added the -regulator
suffixes to the regulator node names.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
