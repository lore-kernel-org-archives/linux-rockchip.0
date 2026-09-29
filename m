Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D06DCCA5FA5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 10:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:Cc:To:In-Reply-To:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6j+MRtr2pBqwXzHHAd8AIJy90KF/Au1rh6czOUf5EVM=; b=1shNpBISuTWXgW
	4WtkFWAqnBDXgAVKDKTUgF/EUUIvFvR0GfsfPc6l2dugVT6sOyGID3N43D02li0XkQ3q0qOFnnAQg
	Cz26crldKYKr4UmJQwaQCqiYTz8oKwc7iMtiWecH55YfHyKP35T8mIjPoWhlnIpLyZMCEJzYWLGWO
	Jd/ZGvJyLyeUV5lmu83wibvxS3hxFpOG8sZvlZgEKg8sKUuRtRJM9KGBmizNg85iX+yoTeIq4dLsz
	R7UkyKS4O3RYrcQ/Wai8cbB2SfPuNCxVB23iDEoxjjcSPh86MBpbJppVlhYiIUQhY1+p37LdE5kRf
	JIvx/5vfJg5zxB2eKRBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBVBj-00000003FlC-1OwV;
	Tue, 29 Sep 2026 10:35:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBV8o-00000003CHd-38GC;
	Tue, 29 Sep 2026 10:32:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=References:Content-Type:Cc:To:
	In-Reply-To:Message-Id:Content-Transfer-Encoding:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=r457fqQsZjuEuXBSPoj5rDr27WgbPfP74A0q9KhjNco=; b=CbjIz9O+w6vmiYlqjAQBC0NGJA
	X8kJvja4HA1M+dGOGkSvNo25A/M9IiC+dKzc7PkK7JKJ8igq03uwvVaM8dOX8Gd19NxDHVcA39V98
	fXasVL+/xp61nGDz9XgmpNW/gnT66n9+zBE1XYbKQj4VGnMhE9aymw24+lmcywMATk3ecIk/hlbHj
	Dom2u8iVmplX/aUSpJ7h8E6UAadW3345bzbiWbcb0JD44K4iEAhhRAY7yt6ArkPXM2vn3Xj1NO6Mr
	ox/d4yXDizmBknxu2yn3lK0lqa1TBfq2FxpmE3FT2E0o3ULm1yZVebxr5EwK9VDdGFV9NqlIUdhAv
	fGIMj+MA==;
Received: from mailout2.w1.samsung.com ([210.118.77.12])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBV8l-0000000CJiT-2MCX;
	Tue, 29 Sep 2026 10:32:53 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260929103250euoutp028c99beba02b74f50a7961d4572873ae2~ZxCCLUUT12627126271euoutp02i;
	Tue, 29 Sep 2026 10:32:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260929103250euoutp028c99beba02b74f50a7961d4572873ae2~ZxCCLUUT12627126271euoutp02i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1790677970;
	bh=r457fqQsZjuEuXBSPoj5rDr27WgbPfP74A0q9KhjNco=;
	h=From:Date:Subject:In-Reply-To:To:Cc:References:From;
	b=Dip6HfjTv58iDU4hbp+FJ2c/oDjy6s9wK+vNapH0RJIEEwt6gCQhSb7eizZwa72W7
	 Ms5RYbVo4eIHF1XULMAu1EBZ+VsSk1ovtFdO0W0gTPrmLPuxlQktRqR7FBaXszWrF+
	 vTR+J7nxi31ygx3i4M7gyzUbHyZS1jbfhlU2jwic=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260929103250eucas1p1ea04d70d2cc6c4ddfe11e596ea9814a1~ZxCBhfDIO0556805568eucas1p1V;
	Tue, 29 Sep 2026 10:32:50 +0000 (GMT)
Received: from AMDC4942.eu.corp.samsungelectronics.net (unknown
	[106.210.136.40]) by eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260929103247eusmtip131972b1ab22df47a0a0b5e5a1dbd5012~ZxB-HaPDZ2959829598eusmtip1X;
	Tue, 29 Sep 2026 10:32:47 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
Date: Tue, 29 Sep 2026 12:31:18 +0200
Subject: [PATCH v5 21/21] MAINTAINERS: Add StarFive JH7110 display subsystem
 entry
MIME-Version: 1.0
Message-Id: <20260929-jh7110-clean-send-v5-21-82b4d8e3c6c7@samsung.com>
In-Reply-To: <20260929-jh7110-clean-send-v5-0-82b4d8e3c6c7@samsung.com>
To: Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
	<conor+dt@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>,  Robert Foss
	<rfoss@kernel.org>,  Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>,  Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,  Andy Yan
	<andy.yan@rock-chips.com>, Philipp Zabel <p.zabel@pengutronix.de>,  Emil
	Renner Berthing <kernel@esmil.dk>,  Hal Feng <hal.feng@starfivetech.com>, 
	Michael Turquette <mturquette@baylibre.com>,  Stephen Boyd
	<sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>,  Paul Walmsley
	<pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,  Albert Ou
	<aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,  Dominique
	Belhachemi <db@domibel.de>, Brian Masney <bmasney+clk@redhat.com>,  Jerome
	Brunet <jbrunet+clk@baylibre.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org,  Marek
	Szyprowski <m.szyprowski@samsung.com>,  Maud Spierings
	<maud_spierings@murena.io>,  Graham Markall <hello@big-grey.co.uk>,  Icenowy
	Zheng <zhengxingda@iscas.ac.cn>,  Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	Joshua Peisach <jpeisach@ubuntu.com>,  =?utf-8?q?Uwe_Kleine-K=C3=B6nig?=
	<u.kleine-koenig@baylibre.com>,  Michal Wilczynski
	<m.wilczynski@samsung.com>
X-Mailer: b4 0.15-dev
X-CMS-MailID: 20260929103250eucas1p1ea04d70d2cc6c4ddfe11e596ea9814a1
X-Msg-Generator: CA
X-RootMTR: 20260929103250eucas1p1ea04d70d2cc6c4ddfe11e596ea9814a1
X-EPHeader: CA
X-CMS-RootMailID: 20260929103250eucas1p1ea04d70d2cc6c4ddfe11e596ea9814a1
References: <20260929-jh7110-clean-send-v5-0-82b4d8e3c6c7@samsung.com>
	<CGME20260929103250eucas1p1ea04d70d2cc6c4ddfe11e596ea9814a1@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_113251_659001_44A85975 
X-CRM114-Status: UNSURE (   9.39  )
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

The JH7110 display subsystem spans a PHY driver, a DRM bridge driver,
a parent device and their bindings, and has no existing maintainer entry.

Add an entry covering them so patches reach someone who can review them.

Reviewed-by: Joshua Peisach <jpeisach@ubuntu.com>
Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 MAINTAINERS | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 72294ddfa5b757f805640919e3d6d5d7c4c48582..bd0a485744864cb713be759911c62442f0ffdaa5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -26076,6 +26076,19 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.yaml
 F:	drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c
 
+STARFIVE JH7110 DISPLAY SUBSYSTEM
+M:	Michal Wilczynski <m.wilczynski@samsung.com>
+R:	Icenowy Zheng <zhengxingda@iscas.ac.cn>
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/bridge/starfive,jh7110-inno-hdmi-controller.yaml
+F:	Documentation/devicetree/bindings/phy/starfive,jh7110-inno-hdmi-phy.yaml
+F:	Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-hdmi-subsystem.yaml
+F:	Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-vout-subsystem.yaml
+F:	drivers/gpu/drm/bridge/jh7110-inno-hdmi.c
+F:	drivers/phy/starfive/phy-jh7110-inno-hdmi.c
+F:	drivers/soc/starfive/jh7110-hdmi-subsystem.c
+F:	drivers/soc/starfive/jh7110-vout-subsystem.c
+
 STARFIVE JH7110 DPHY RX DRIVER
 M:	Jack Zhu <jack.zhu@starfivetech.com>
 M:	Changhuang Liang <changhuang.liang@starfivetech.com>

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
