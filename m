Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A2D9C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 03:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=il01U3QhL7WxthtsYBtxC3WfpqtQ7KK3dO0733RyccI=; b=hR13UZZAQWmFv2
	Ikd54FFhHeMuYwzbDN75N6xxJHC14FnCNfQbHZN74J6v8yBGOpsh4YOSYc3w+v7sJXkm5a/MlMukA
	uw1DRHClTG0mqKjDG2AVrXqUqq02oeRU89EhLg+BpH8Z6Pu7pVb9dJbbL5qsaRxzzopqzAAmWRNjN
	hGRqF5gddxMN09OdsRIxLsbVNYdY21tnWBBvso+QZ6iiXADyAJovCH1i6VjGQJRJwfXmHZnK2x89e
	B4QeY/+doKNOs6djakxsLO7yjIshAPAgaj4QTWmS/6RjLo6NFvbrSTEVIKjUmAua8ld9p9sTbpnls
	dQTW8XQnrmxC6o0fjrnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLJY-0000000F6NK-241T;
	Fri, 23 Aug 2024 03:50:16 +0000
Received: from mail-m11886.qiye.163.com ([115.236.118.86])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLEp-0000000F50y-1np6;
	Fri, 23 Aug 2024 03:45:27 +0000
DKIM-Signature: a=rsa-sha256;
	b=U9MZIydUDcjO9xdJvBvlkI0qjkZordIUe5F8OiKfCHXK4rX6EDX6BnpGbE63FBVy9KckeE51U7OEyDt+7u5WiKeX06NJNeZDUxxkMritcWcUP/KqPoHUpDqv86Dl7mqHemop6eY39GJud+qeSFOBWGMhO0hTt5po8eki6cu7NJE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=kmbOu81I/SivoswEU4k4vCo9LnH975Xko2P8NPDJNNA=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id D96197E03F1;
	Fri, 23 Aug 2024 11:45:07 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	heiko@sntech.de,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com,
	andriy.shevchenko@linux.intel.com,
	tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com,
	tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com,
	Ye Zhang <ye.zhang@rock-chips.com>
Subject: [PATCH v2] gpio: rockchip: support new version gpio
Date: Fri, 23 Aug 2024 11:43:11 +0800
Message-Id: <20240823034314.62305-9-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823034314.62305-1-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk9IHlZKGkwaShoZQ0xOTB5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a917d5687fb09cfkunmd96197e03f1
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OVE6HTo*FDI2Hiw0NzYhTgII
	EjkaCzBVSlVKTElPSENPTEtCS0NKVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTU9JSzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_204523_823176_0E69DB53 
X-CRM114-Status: GOOD (  14.53  )
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

The next version gpio controller on SoCs like rk3576 which support four
OS operation and four interrupts

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 40 ++++++++++++++++++++++++------------
 1 file changed, 27 insertions(+), 13 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 25ddf6a82c09..5289c94d5c60 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -29,6 +29,7 @@
 #define GPIO_TYPE_V1		(0)           /* GPIO Version ID reserved */
 #define GPIO_TYPE_V2		(0x01000C2B)  /* GPIO Version ID 0x01000C2B */
 #define GPIO_TYPE_V2_1		(0x0101157C)  /* GPIO Version ID 0x0101157C */
+#define GPIO_TYPE_V2_2		(0x010219C8)  /* GPIO Version ID 0x010219C8 */
 
 static const struct rockchip_gpio_regs gpio_regs_v1 = {
 	.port_dr = 0x00,
@@ -78,7 +79,7 @@ static inline void rockchip_gpio_writel(struct rockchip_pin_bank *bank,
 {
 	void __iomem *reg = bank->reg_base + offset;
 
-	if (bank->gpio_type == GPIO_TYPE_V2)
+	if (bank->gpio_type >= GPIO_TYPE_V2)
 		gpio_writel_v2(value, reg);
 	else
 		writel(value, reg);
@@ -90,7 +91,7 @@ static inline u32 rockchip_gpio_readl(struct rockchip_pin_bank *bank,
 	void __iomem *reg = bank->reg_base + offset;
 	u32 value;
 
-	if (bank->gpio_type == GPIO_TYPE_V2)
+	if (bank->gpio_type >= GPIO_TYPE_V2)
 		value = gpio_readl_v2(reg);
 	else
 		value = readl(reg);
@@ -105,7 +106,7 @@ static inline void rockchip_gpio_writel_bit(struct rockchip_pin_bank *bank,
 	void __iomem *reg = bank->reg_base + offset;
 	u32 data;
 
-	if (bank->gpio_type == GPIO_TYPE_V2) {
+	if (bank->gpio_type >= GPIO_TYPE_V2) {
 		if (value)
 			data = BIT(bit % 16) | BIT(bit % 16 + 16);
 		else
@@ -126,7 +127,7 @@ static inline u32 rockchip_gpio_readl_bit(struct rockchip_pin_bank *bank,
 	void __iomem *reg = bank->reg_base + offset;
 	u32 data;
 
-	if (bank->gpio_type == GPIO_TYPE_V2) {
+	if (bank->gpio_type >= GPIO_TYPE_V2) {
 		data = readl(bit >= 16 ? reg + 0x4 : reg);
 		data >>= bit % 16;
 	} else {
@@ -204,18 +205,24 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 	unsigned int cur_div_reg;
 	u64 div;
 
-	div_debounce_support = (bank->gpio_type == GPIO_TYPE_V2) && !IS_ERR(bank->db_clk);
+	div_debounce_support = (bank->gpio_type >= GPIO_TYPE_V2) && !IS_ERR(bank->db_clk);
 	if (debounce && div_debounce_support) {
 		freq = clk_get_rate(bank->db_clk);
 		if (!freq)
 			return -EINVAL;
 		div = (u64)(GENMASK(23, 0) + 1) * 1000000;
-		max_debounce = DIV_ROUND_CLOSEST_ULL(div, freq);
+		if (bank->gpio_type == GPIO_TYPE_V2)
+			max_debounce = DIV_ROUND_CLOSEST_ULL(div, freq);
+		else
+			max_debounce = DIV_ROUND_CLOSEST_ULL(div, 2 * freq);
 		if (debounce > max_debounce)
 			return -EINVAL;
 
 		div = (u64)debounce * freq;
-		div_reg = DIV_ROUND_CLOSEST_ULL(div, USEC_PER_SEC) - 1;
+		if (bank->gpio_type == GPIO_TYPE_V2)
+			div_reg = DIV_ROUND_CLOSEST_ULL(div, USEC_PER_SEC) - 1;
+		else
+			div_reg = DIV_ROUND_CLOSEST_ULL(div, USEC_PER_SEC / 2) - 1;
 	}
 
 	raw_spin_lock_irqsave(&bank->slock, flags);
@@ -401,7 +408,7 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 	polarity = rockchip_gpio_readl(bank, bank->gpio_regs->int_polarity);
 
 	if (type == IRQ_TYPE_EDGE_BOTH) {
-		if (bank->gpio_type == GPIO_TYPE_V2) {
+		if (bank->gpio_type >= GPIO_TYPE_V2) {
 			rockchip_gpio_writel_bit(bank, d->hwirq, 1,
 						 bank->gpio_regs->int_bothedge);
 			goto out;
@@ -420,7 +427,7 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 				polarity |= mask;
 		}
 	} else {
-		if (bank->gpio_type == GPIO_TYPE_V2) {
+		if (bank->gpio_type >= GPIO_TYPE_V2) {
 			rockchip_gpio_writel_bit(bank, d->hwirq, 0,
 						 bank->gpio_regs->int_bothedge);
 		} else {
@@ -526,7 +533,7 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	}
 
 	gc = irq_get_domain_generic_chip(bank->domain, 0);
-	if (bank->gpio_type == GPIO_TYPE_V2) {
+	if (bank->gpio_type >= GPIO_TYPE_V2) {
 		gc->reg_writel = gpio_writel_v2;
 		gc->reg_readl = gpio_readl_v2;
 	}
@@ -648,13 +655,20 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 
 	id = readl(bank->reg_base + gpio_regs_v2.version_id);
 
-	/* If not gpio v2, that is default to v1. */
-	if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1) {
+	switch (id) {
+	case GPIO_TYPE_V2:
+	case GPIO_TYPE_V2_1:
 		bank->gpio_regs = &gpio_regs_v2;
 		bank->gpio_type = GPIO_TYPE_V2;
-	} else {
+		break;
+	case GPIO_TYPE_V2_2:
+		bank->gpio_regs = &gpio_regs_v2;
+		bank->gpio_type = GPIO_TYPE_V2_2;
+		break;
+	default:
 		bank->gpio_regs = &gpio_regs_v1;
 		bank->gpio_type = GPIO_TYPE_V1;
+		pr_info("Note: Use default GPIO_TYPE_V1!\n");
 	}
 
 	return 0;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
