Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 107A9C369C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 12:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VSIleknI/2ws+FDWydI4DaLeXV+v9qe6PP3Wh0WyiME=; b=iKQz9TF2Cn2JIC
	9fpYvMxdfdEWcRGFPj6fFyc0APozImIL7lVr9d1gaMaBKeqlkwR97py/f7zsEWN25JegprboTC1Z2
	/fz84EIWJ1Ks+N/rzrKz4gSwuyQiaqI5mydzS4mvwK/9ikFqf5zgZWqJ2h8Mz1CurIsmdyzNe8jdQ
	GXS5SNsdI2Vd4uVS0dS+1Zi4TmNJW5FLje31cbccxTBIzTo5TkQeuR4vV2s4GjOchnIgmctIsPIS5
	DR3jF52lIXw5AeImA7rMlBd5QNH5Ol2uo4Tc5jiP8daSvbgENBUQmrGRPtVUPHhDYST/xpkradt+T
	dKNlfGnaIy+mtUcOYvXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7CKv-000000072nK-2Lqj;
	Tue, 22 Apr 2025 12:02:49 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7BoI-00000006wVY-06jB;
	Tue, 22 Apr 2025 11:29:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=2RWjK
	PWv82UStMG6NIWMhcWrtvVJa7KMbvU2NcwBt1g=; b=L8dAlQh2CfbwxNHys0yEf
	IyXb8FFHE7WoFP0CX+ElrJ4conoHMiQzEuzceikbUdiO40V85jXcw9JTz7gQKZm8
	UsK5HBVt17CF/MUSs0GZrAiYAKsiN+gc3jp5g3GAxsFgYIO1qk2GX0kkf0HQOIBZ
	N7qC9KSp46kAG1aLsMUskU=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wCXbK1gfQdoRW2NBg--.44191S4;
	Tue, 22 Apr 2025 19:28:37 +0800 (CST)
From: Hans Zhang <18255117159@163.com>
To: lpieralisi@kernel.org,
	kw@linux.com,
	bhelgaas@google.com,
	heiko@sntech.de
Cc: manivannan.sadhasivam@linaro.org,
	robh@kernel.org,
	jingoohan1@gmail.com,
	shawn.lin@rock-chips.com,
	linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Hans Zhang <18255117159@163.com>
Subject: [PATCH 2/3] PCI: dw-rockchip: Reorganize register and bitfield definitions
Date: Tue, 22 Apr 2025 19:28:29 +0800
Message-Id: <20250422112830.204374-3-18255117159@163.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250422112830.204374-1-18255117159@163.com>
References: <20250422112830.204374-1-18255117159@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wCXbK1gfQdoRW2NBg--.44191S4
X-Coremail-Antispam: 1Uf129KBjvJXoWxWFWxWryktw1DKF48uFyfJFb_yoW5Zrykpa
	98AFyakrs8tayakwnYgF15AF17tF13KFWjgrsIg3yUu3Z5Aw18Gr18WF1Sgry7tr4kWrW3
	uwn8Gw1xWF9xCrUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zEJ3kiUUUUU=
X-Originating-IP: [61.171.199.116]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbBDwU3o2gHegppMgABsb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_042906_439068_9A48BC1F 
X-CRM114-Status: UNSURE (   7.96  )
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

Register definitions were scattered with ambiguous names (e.g.,
PCIE_RDLH_LINK_UP_CHGED in PCIE_CLIENT_INTR_STATUS_MISC) and lacked
hierarchical grouping. Magic values for bit operations reduced code
clarity.

Group registers and their associated bitfields logically. This improves
maintainability and aligns the code with hardware documentation.

Signed-off-by: Hans Zhang <18255117159@163.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 42 +++++++++++--------
 1 file changed, 24 insertions(+), 18 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index fd5827bbfae3..cdc8afc6cfc1 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -8,6 +8,7 @@
  * Author: Simon Xue <xxm@rock-chips.com>
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/gpio/consumer.h>
 #include <linux/irqchip/chained_irq.h>
@@ -34,30 +35,35 @@
 
 #define to_rockchip_pcie(x) dev_get_drvdata((x)->dev)
 
-#define PCIE_CLIENT_RC_MODE		HIWORD_UPDATE_BIT(0x40)
-#define PCIE_CLIENT_EP_MODE		HIWORD_UPDATE(0xf0, 0x0)
-#define PCIE_CLIENT_ENABLE_LTSSM	HIWORD_UPDATE_BIT(0xc)
-#define PCIE_CLIENT_DISABLE_LTSSM	HIWORD_UPDATE(0x0c, 0x8)
-#define PCIE_CLIENT_INTR_STATUS_MSG_RX	0x04
+#define PCIE_CLIENT_GENERAL_CONTROL	0x0
+#define  PCIE_CLIENT_RC_MODE		HIWORD_UPDATE_BIT(0x40)
+#define  PCIE_CLIENT_EP_MODE		HIWORD_UPDATE(0xf0, 0x0)
+#define  PCIE_CLIENT_ENABLE_LTSSM	HIWORD_UPDATE_BIT(0xc)
+#define  PCIE_CLIENT_DISABLE_LTSSM	HIWORD_UPDATE(0x0c, 0x8)
+
+#define PCIE_CLIENT_INTR_STATUS_MSG_RX	0x4
+#define PCIE_CLIENT_INTR_STATUS_LEGACY	0x8
+
 #define PCIE_CLIENT_INTR_STATUS_MISC	0x10
+#define  PCIE_RDLH_LINK_UP_CHGED	BIT(1)
+#define  PCIE_LINK_REQ_RST_NOT_INT	BIT(2)
+
+#define PCIE_CLIENT_INTR_MASK_LEGACY	0x1c
 #define PCIE_CLIENT_INTR_MASK_MISC	0x24
+
 #define PCIE_CLIENT_POWER		0x2c
+#define  PME_READY_ENTER_L23		BIT(3)
+
 #define PCIE_CLIENT_MSG_GEN		0x34
-#define PME_READY_ENTER_L23		BIT(3)
-#define PME_TURN_OFF			(BIT(4) | BIT(20))
-#define PME_TO_ACK			(BIT(9) | BIT(25))
-#define PCIE_SMLH_LINKUP		BIT(16)
-#define PCIE_RDLH_LINKUP		BIT(17)
-#define PCIE_LINKUP			(PCIE_SMLH_LINKUP | PCIE_RDLH_LINKUP)
-#define PCIE_RDLH_LINK_UP_CHGED		BIT(1)
-#define PCIE_LINK_REQ_RST_NOT_INT	BIT(2)
-#define PCIE_CLIENT_GENERAL_CONTROL	0x0
-#define PCIE_CLIENT_INTR_STATUS_LEGACY	0x8
-#define PCIE_CLIENT_INTR_MASK_LEGACY	0x1c
+#define  PME_TURN_OFF			HIWORD_UPDATE_BIT(BIT(4))
+#define  PME_TO_ACK			HIWORD_UPDATE_BIT(BIT(9))
+
 #define PCIE_CLIENT_HOT_RESET_CTRL	0x180
+#define  PCIE_LTSSM_ENABLE_ENHANCE	BIT(4)
+
 #define PCIE_CLIENT_LTSSM_STATUS	0x300
-#define PCIE_LTSSM_ENABLE_ENHANCE	BIT(4)
-#define PCIE_LTSSM_STATUS_MASK		GENMASK(5, 0)
+#define  PCIE_LINKUP_MASK		GENMASK(17, 16)
+#define  PCIE_LTSSM_STATUS_MASK		GENMASK(5, 0)
 
 struct rockchip_pcie {
 	struct dw_pcie pci;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
