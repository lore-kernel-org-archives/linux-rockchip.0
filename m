Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 759CAE7719C
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jan 2025 09:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVyRDoMw+G1SzM4PicZd1TLZM3HL16fuPDHzYz/m1jw=; b=BP5DZxmQ/V4Nm0
	gSc9KuYeVw8oiX/mE0u+/fFYQUCPKLZo0UiT8iHRTre9gMObpUn+xuqjOjPqlYOCARoC1J9006dwp
	+pM9PyFiTSwpjO4J1dcPoP0bbQNWPch1CRU/5rqYvgJXHnLtXHk0eHMdi4JXEJuAtBZx4F2FfEUFn
	a3aVumPNcGsNx17ugg1p5SmDSyOyZNDS+YmrFxcHocochyWGbQlfjA2SiNQ7eV0X1hHjVgJ2opXR5
	RdYPvaIWvbX6VRc53wLG4k2ewnfiuZ64I2fCIS5M/xnLTFzGKVyDDbtHJ8cQYsLpKGRmYJaBOOosK
	dpJbOw5FkJMA5HiaTrqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtz8-00000002Oy6-3OFK;
	Sun, 12 Jan 2025 09:10:18 +0000
Received: from mail-m49218.qiye.163.com ([45.254.49.218])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtwe-00000002OXs-47GT;
	Sun, 12 Jan 2025 09:07:46 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 870092a3;
	Sun, 12 Jan 2025 17:07:40 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v1 2/6] phy: phy-rockchip-samsung-hdptx: Supplement some register names with their full version
Date: Sun, 12 Jan 2025 17:07:10 +0800
Message-Id: <20250112090714.1564158-3-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250112090714.1564158-1-damon.ding@rock-chips.com>
References: <20250112090714.1564158-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0xMGFYaSkhIGB9CSh1DSxhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9459c4d94f03a3kunm870092a3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NQg6Hww6KjILAwNKPRgaIRIi
	HTBPCyJVSlVKTEhNTUxJQ01JSk9CVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKSU5KNwY+
DKIM-Signature: a=rsa-sha256;
	b=JIW7aYZubryk6dp8N32zhxq+hs5ZBs/CgWIMBMayaY3tKkJpYGG97m9hDpctIGQsIunTnHsZabkFYEM0nmDqQRgnPhhy3jdkqzacS8c3ya576oMsg4ld3rzv1tEygtZUsY5oRr/6WSNu2jUZ8fLLnoRiLsu84khDxnSmob5lZHk=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=tywO7xGB2da8iEsHnvmYHdfB6wpe6ItXRYSerKfpSzc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_010745_239931_ECF23E0E 
X-CRM114-Status: UNSURE (   7.48  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, dmitry.baryshkov@linaro.org, vkoul@kernel.org, Damon Ding <damon.ding@rock-chips.com>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Complete the register names of CMN_REG(0081) and CMN_REG(0087) to their
full version, and it can help to better match the datasheet.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index efbea5b67c89..423c61b7469f 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -82,14 +82,14 @@
 #define ROPLL_SSC_EN			BIT(0)
 /* CMN_REG(0081) */
 #define OVRD_PLL_CD_CLK_EN		BIT(8)
-#define PLL_CD_HSCLK_EAST_EN		BIT(0)
+#define ANA_PLL_CD_HSCLK_EAST_EN	BIT(0)
 /* CMN_REG(0086) */
 #define PLL_PCG_POSTDIV_SEL_MASK	GENMASK(7, 4)
 #define PLL_PCG_CLK_SEL_MASK		GENMASK(3, 1)
 #define PLL_PCG_CLK_EN			BIT(0)
 /* CMN_REG(0087) */
-#define PLL_FRL_MODE_EN			BIT(3)
-#define PLL_TX_HS_CLK_EN		BIT(2)
+#define ANA_PLL_FRL_MODE_EN		BIT(3)
+#define ANA_PLL_TX_HS_CLK_EN		BIT(2)
 /* CMN_REG(0089) */
 #define LCPLL_ALONE_MODE		BIT(1)
 /* CMN_REG(0097) */
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
