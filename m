Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E072C47DD3
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jan 2024 19:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vvGSO++QxTdyGJRLJCyJqYFB/B1161yy+Ne4HAegVxI=; b=L/Ww0OQn5ONByJ
	91+y2HImoWot5Sy4tswO7D4I4ejeRUEI32kwdNlne548fWylFYZ6v61xXvDoCesogBQPsPOc7vPiC
	0HYA5FmWWeSeNrymgfFKqxi4LYcIWs6nwV192FHXbLB8833ciIyllOVRy8TlSDN7RTTvaHUwu81s5
	CsXGatlVd6u+yz9rjnPr96zaJ7fS4xRPp0iW7zA21RGR5ZrziVgon4ZxHjyeB2LiLTKuveU3JY+Mp
	7GQvjq16h/1e8aQ0l+J0BE6pCC7hir8A/0h734ehPoitfSqPZhzRZBKZleMUAL+Vm8tWZfbbzvQTk
	s4YYHf5skbCWXzNmHKcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQuh2-006ULE-1F;
	Fri, 19 Jan 2024 19:38:20 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQugx-006UJD-1q;
	Fri, 19 Jan 2024 19:38:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1705693089;
	bh=MSkJacugMshatNwZ3mm7fqSw/GZZCUd/n7oLLvxCAvs=;
	h=From:To:Cc:Subject:Date:From;
	b=Rxgl3i8ZC+YWiCP+rPTZ2QDTXukFQrh1bPTN/H/BfTmKLhgU6mtTkKt8M9ewAtG2D
	 v9bHvVKanfq7euV1l5e5F7hgbHIsoyYmUYgr6O9zyVcmalzptdw+irJ1OZ8LDYPe4w
	 +LsczR86kyGUquu21EjkMK0/NvSzblrPC8Z9/Y+gML0e4thm0IsqRv9BSqgRUqJPAB
	 PJZ1BP4kmAcvYp801UIHTQr5vSjW4XLzeyvCxGv/+ju/iiZga4KLPFdqi7pYDHs+kq
	 G6ugB+C1lFT2wWgprRXLvfKh0SwUUFTbyjJ9hdSX9d81zGN4Z9yHrkAfMPTvkxN21j
	 dOVpZAOHWO9Vg==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id DB8A03781FF2;
	Fri, 19 Jan 2024 19:38:08 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Algea Cao <algea.cao@rock-chips.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 0/3] Add support for RK3588 HDMI/DP Combo PHY
Date: Fri, 19 Jan 2024 21:38:00 +0200
Message-ID: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_113815_777846_EB864014 
X-CRM114-Status: UNSURE (   9.75  )
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

Add driver and bindings to support the Rockchip HDMI/eDP TX Combo PHY 
found on RK3588 SoC.

The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
and eDP links.

The HDMI link has been tested on Rock 5B and EVB1 boards.

Cristian Ciocaltea (3):
  dt-bindings: soc: rockchip: Add rk3588 hdptxphy syscon
  dt-bindings: phy: Add Rockchip HDMI/DP Combo PHY schema
  phy: rockchip: Add Samsung HDMI/DP Combo PHY driver

 .../phy/rockchip,rk3588-hdptx-phy.yaml        |   96 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    1 +
 drivers/phy/rockchip/Kconfig                  |    8 +
 drivers/phy/rockchip/Makefile                 |    1 +
 .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 2045 +++++++++++++++++
 5 files changed, 2151 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
