Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1773DC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Sep 2022 15:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8E9uH1AutSle0L4daLIVnDS/8fiLfS/sVOywGjxwm44=; b=OBRKA3ERm6AZWQ
	Tqwlz5urG4AcuweUZHepXa6Qhuso7yujlU2i2RxTRWTbijjUN/4sznLQ9mGfyXUJW1Pe3JsRIozJL
	EqXaoab6MDLKG/tygMnStKqV8nj/X7MTH3pQeln9tMBUvNaSWxJ9rkPNjK1WBxqysf7ipBp4od1X9
	ZEf+NX8VqLyEZbWdtMI81H9hqOZrFbBdh6+og8E5WFuhDjtW0qu5JwpweNBxOIeHuwWevJSOQJY/8
	6ARzZJrJM45Itj0St79oIHr8hMiRr8xx5CaGMMcJkGJ3aSjRQG3abjDj+zGbnqj4hD+pvG7W0p7rU
	LnygaS9nskTh6CYRIq0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeIAy-00AKDv-Il; Fri, 30 Sep 2022 15:43:44 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeI6a-00AHcw-EF; Fri, 30 Sep 2022 15:39:16 +0000
Received: from jupiter.universe (dyndsl-091-096-057-200.ewe-ip-backbone.de [91.96.57.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5313666022F7;
	Fri, 30 Sep 2022 16:39:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664552344;
	bh=f2J6aSdhOrco8r48KzyqFH7xfmYiAHooce2bTGVTOLA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aGw8rUef91nf5fjOJLcNKGqTHWVj+ZravbU2wiyILPyg0wDPkbYdKhG6b/3KeUlFm
	 idh35TpjELpuuqM0pMvuVxWTNpGmQzU0nCGkDkc6kB4+xu8/sslS1mBGb0FyHU5oCq
	 tiW+0Pu3+F5czH2c2+oFV10F9ieQVnzyhxCiHPOx6dVSnvii5u9S2+F7zVi8RTituW
	 NGuImJvLWse0fuVk12crFXwI2lWhHNoViMs4NWbZ4/ocULfnK3TwxNEsMGclPkuTKZ
	 q80Q0vJkveO7ig6TtEXs92EVx3bFLdyd9kzlugIHyPYMoxXU0EykkxiqaRF1Vbmclu
	 K18KdkcyrF0wA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 10F9F480163; Fri, 30 Sep 2022 17:38:59 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 8/9] clk: rockchip: add lookup table support
Date: Fri, 30 Sep 2022 17:38:56 +0200
Message-Id: <20220930153857.299396-9-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930153857.299396-1-sebastian.reichel@collabora.com>
References: <20220930153857.299396-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_083912_801499_CE32A12C 
X-CRM114-Status: GOOD (  15.11  )
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

Add support for mapping reset IDs to register offsets
to support gapless continous platform reset IDs.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk.h     | 21 +++++++++++++++------
 drivers/clk/rockchip/softrst.c | 34 +++++++++++++++++++++++++---------
 2 files changed, 40 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 4a84491faf39..65e1dc57c068 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -922,15 +922,24 @@ struct clk *rockchip_clk_register_halfdiv(const char *name,
 					  spinlock_t *lock);
 
 #ifdef CONFIG_RESET_CONTROLLER
-void rockchip_register_softrst(struct device_node *np,
-			       unsigned int num_regs,
-			       void __iomem *base, u8 flags);
+void rockchip_register_softrst_lut(struct device_node *np,
+				   const int *lookup_table,
+				   unsigned int num_regs,
+				   void __iomem *base, u8 flags);
 #else
-static inline void rockchip_register_softrst(struct device_node *np,
-			       unsigned int num_regs,
-			       void __iomem *base, u8 flags)
+static inline void rockchip_register_softrst_lut(struct device_node *np,
+				   const int *lookup_table,
+				   unsigned int num_regs,
+				   void __iomem *base, u8 flags)
 {
 }
 #endif
 
+static inline void rockchip_register_softrst(struct device_node *np,
+					     unsigned int num_regs,
+					     void __iomem *base, u8 flags)
+{
+	return rockchip_register_softrst_lut(np, NULL, num_regs, base, flags);
+}
+
 #endif
diff --git a/drivers/clk/rockchip/softrst.c b/drivers/clk/rockchip/softrst.c
index 5d07266745b8..fd56aaefe6d1 100644
--- a/drivers/clk/rockchip/softrst.c
+++ b/drivers/clk/rockchip/softrst.c
@@ -12,6 +12,7 @@
 
 struct rockchip_softrst {
 	struct reset_controller_dev	rcdev;
+	const int			*lut;
 	void __iomem			*reg_base;
 	int				num_regs;
 	int				num_per_reg;
@@ -25,8 +26,13 @@ static int rockchip_softrst_assert(struct reset_controller_dev *rcdev,
 	struct rockchip_softrst *softrst = container_of(rcdev,
 						     struct rockchip_softrst,
 						     rcdev);
-	int bank = id / softrst->num_per_reg;
-	int offset = id % softrst->num_per_reg;
+	int bank, offset;
+
+	if (softrst->lut)
+		id = softrst->lut[id];
+
+	bank = id / softrst->num_per_reg;
+	offset = id % softrst->num_per_reg;
 
 	if (softrst->flags & ROCKCHIP_SOFTRST_HIWORD_MASK) {
 		writel(BIT(offset) | (BIT(offset) << 16),
@@ -52,8 +58,13 @@ static int rockchip_softrst_deassert(struct reset_controller_dev *rcdev,
 	struct rockchip_softrst *softrst = container_of(rcdev,
 						     struct rockchip_softrst,
 						     rcdev);
-	int bank = id / softrst->num_per_reg;
-	int offset = id % softrst->num_per_reg;
+	int bank, offset;
+
+	if (softrst->lut)
+		id = softrst->lut[id];
+
+	bank = id / softrst->num_per_reg;
+	offset = id % softrst->num_per_reg;
 
 	if (softrst->flags & ROCKCHIP_SOFTRST_HIWORD_MASK) {
 		writel((BIT(offset) << 16), softrst->reg_base + (bank * 4));
@@ -77,9 +88,10 @@ static const struct reset_control_ops rockchip_softrst_ops = {
 	.deassert	= rockchip_softrst_deassert,
 };
 
-void rockchip_register_softrst(struct device_node *np,
-			       unsigned int num_regs,
-			       void __iomem *base, u8 flags)
+void rockchip_register_softrst_lut(struct device_node *np,
+				   const int *lookup_table,
+				   unsigned int num_regs,
+				   void __iomem *base, u8 flags)
 {
 	struct rockchip_softrst *softrst;
 	int ret;
@@ -91,13 +103,17 @@ void rockchip_register_softrst(struct device_node *np,
 	spin_lock_init(&softrst->lock);
 
 	softrst->reg_base = base;
+	softrst->lut = lookup_table;
 	softrst->flags = flags;
 	softrst->num_regs = num_regs;
 	softrst->num_per_reg = (flags & ROCKCHIP_SOFTRST_HIWORD_MASK) ? 16
 								      : 32;
 
 	softrst->rcdev.owner = THIS_MODULE;
-	softrst->rcdev.nr_resets =  num_regs * softrst->num_per_reg;
+	if (lookup_table)
+		softrst->rcdev.nr_resets = num_regs;
+	else
+		softrst->rcdev.nr_resets = num_regs * softrst->num_per_reg;
 	softrst->rcdev.ops = &rockchip_softrst_ops;
 	softrst->rcdev.of_node = np;
 	ret = reset_controller_register(&softrst->rcdev);
@@ -107,4 +123,4 @@ void rockchip_register_softrst(struct device_node *np,
 		kfree(softrst);
 	}
 };
-EXPORT_SYMBOL_GPL(rockchip_register_softrst);
+EXPORT_SYMBOL_GPL(rockchip_register_softrst_lut);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
