Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D562CE7491C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 07:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Ie+JdmTdrvi4uFCHvcTBEsJ/oLbdbFpP4wYEnaupIM=; b=ZJdKCor2bBM9fN
	O/pPzw93H0YioEBFnrnhuPXZEEqvVumzy9jLIxPRKsrWGZWGELvFTFxJztif3PEGh97NgI9IvrBC3
	gDZw+QZj+BGmuvMnKdOfueZYd0FcK36cV3kJ8jH8sgpSKkY0fWj/L/+shCWDn3RIVYAC+awBrXxAJ
	hiEvTGkbMju8Oc4wmXMx7dJGt8f9iV5kbFWomBK05ZJckgW2GctpuCSZqtuOVR3EB56/TlMjvxZDZ
	IRKLU7bPCzU+3IWb2XTGJgbQUwY4TfTMfnffcy5530pwzT9RMR1j/drwJeor6OXtQIQXzboaRWqEa
	dg8kBu5sqOwZkt84rYFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJ2K-0000000GWmM-3gwz;
	Wed, 24 Dec 2025 07:11:56 +0000
Received: from mail-m32118.qiye.163.com ([220.197.32.118])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJ2H-0000000GWkx-1xEo;
	Wed, 24 Dec 2025 07:11:55 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2e63ea8b8;
	Wed, 24 Dec 2025 15:11:47 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 4/5] phy: rockchip-snps-pcie3: Check more sram init status for RK3588
Date: Wed, 24 Dec 2025 15:10:09 +0800
Message-Id: <1766560210-100883-5-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
References: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9b4f33194209cckunm34e2a83f3c2d73
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR9IQlYaHUMfSklNSEIdQ0pWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gVu/zbvWd/8GCESbh2vOYfC51To7UeQxB63FDvltrcm6hxId/Zn06xL7C5iKIkKlHC9feGPtXgFvC24lcZ56B07t0wHxxCS1W/ZRuqLXrYe2kMHwP4ZLWrZBwkNK5g4QnwAZ+ewZBmf9PyoxgrRhAUHqb1sMqz65+ZQSX2hIi3o=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=EruBuD3DV9D2zUZnQ8r8fDZq4vTwMkgX5kghIQwvukc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_231153_659532_09241300 
X-CRM114-Status: GOOD (  10.24  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

All the lower 4 bits should be checked which shows the mpllx_state.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index f5a5d0af..6cc38e3 100644
--- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -43,7 +43,7 @@
 #define RK3588_PCIE3PHY_GRF_PHY0_LN1_CON1	0x1104
 #define RK3588_PCIE3PHY_GRF_PHY1_LN0_CON1	0x2004
 #define RK3588_PCIE3PHY_GRF_PHY1_LN1_CON1	0x2104
-#define RK3588_SRAM_INIT_DONE(reg)		(reg & BIT(0))
+#define RK3588_SRAM_INIT_DONE(reg)              ((reg & 0xf) == 0xf)
 
 #define RK3588_BIFURCATION_LANE_0_1		BIT(0)
 #define RK3588_BIFURCATION_LANE_2_3		BIT(1)
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
