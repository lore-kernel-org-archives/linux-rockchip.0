Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCC95C52D7D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 07:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBKRjEidCEA6e0L1LPhNALVgOxiwpTdWdKkK0qCCrfg=; b=G8f0qocOtwZ9QJ
	Ep4YeZwVKN6bDDPra+PFobRV++UGG1u0YKGrrMEI6XhNwrgjHlXKtisTzrA7SzKcpEDMXua8jYqFy
	T2M8eoXbsfWDDWujGFjoJfTUs36wbufybP2lJt7L5skbd7pvokonWSafz/qI0ypisFeTZWJVBrE63
	neFFHdsrZ/R/E1LRQ1cyMFmhnUD86+zMsTchqoS4GnwUnkfrRcPtd88LHpYPvSqQjjFlRb0n+ekVT
	8BlfOSoTvA3FxczLkEK6KEk8aqvujC33SwwjzqGQATMhGtmnEssZim8fEzrgeB7UG/h/c3ofyG1hx
	TQOIEQM0BXvT0uxp1Igg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUmJ-00000009Fzf-46zh;
	Thu, 15 Aug 2024 07:20:11 +0000
Received: from mail-m1973187.qiye.163.com ([220.197.31.87])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seUjr-00000009FO1-0UTZ;
	Thu, 15 Aug 2024 07:17:41 +0000
DKIM-Signature: a=rsa-sha256;
	b=eA2jhTkXEK2I35UrMAUN1eKbwUl4EfTpsKPp3eaqt0aRwm+PFk9lrlpdS1LdE2OdyEAtlumfYPvZT4V+1dfvDb1Iitka8nE/mYcNRGBjEHH269nJ+5tt1HKVQ1VACc506GzovN7q43anLpLxr925hhAy3DeopUsN987uf69gODw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=/IZKyXbHMGPvjkG5x/AIclBs0OTUdOjwDmOWIhDPpKk=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id B983A7E04A3;
	Thu, 15 Aug 2024 15:17:24 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: linus.walleij@linaro.org,
	brgl@bgdev.pl,
	heiko@sntech.de,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com,
	tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com,
	Ye Zhang <ye.zhang@rock-chips.com>
Subject: [PATCH v1 5/5] rockchip: gpio: fix debounce config error
Date: Thu, 15 Aug 2024 15:16:51 +0800
Message-Id: <20240815071651.3645949-6-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240815071651.3645949-1-ye.zhang@rock-chips.com>
References: <20240815071651.3645949-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhNGFZOTR5PQ04eSB1NThlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9154e600ff09cfkunmb983a7e04a3
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6N1E6ESo*HjI2SEMrDigaKFYO
	KU8wCjpVSlVKTElITEtNSU9OQ09DVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTUhMTzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_001739_391526_149231A1 
X-CRM114-Status: GOOD (  12.63  )
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

1. Prevent data from crossing boundaries
2. Support GPIO_TYPE_V2_2 debounce config
3. fix rockchip_gpio_set_config

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 42 ++++++++++++++++++++++--------------
 1 file changed, 26 insertions(+), 16 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 03e949b0a344..186d8c750fce 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -84,7 +84,7 @@ static inline void rockchip_gpio_writel(struct rockchip_pin_bank *bank,
 {
 	void __iomem *reg = bank->reg_base + offset;
 
-	if (bank->gpio_type == GPIO_TYPE_V2)
+	if (bank->gpio_type >= GPIO_TYPE_V2)
 		gpio_writel_v2(value, reg);
 	else
 		writel(value, reg);
@@ -96,7 +96,7 @@ static inline u32 rockchip_gpio_readl(struct rockchip_pin_bank *bank,
 	void __iomem *reg = bank->reg_base + offset;
 	u32 value;
 
-	if (bank->gpio_type == GPIO_TYPE_V2)
+	if (bank->gpio_type >= GPIO_TYPE_V2)
 		value = gpio_readl_v2(reg);
 	else
 		value = readl(reg);
@@ -111,7 +111,7 @@ static inline void rockchip_gpio_writel_bit(struct rockchip_pin_bank *bank,
 	void __iomem *reg = bank->reg_base + offset;
 	u32 data;
 
-	if (bank->gpio_type == GPIO_TYPE_V2) {
+	if (bank->gpio_type >= GPIO_TYPE_V2) {
 		if (value)
 			data = BIT(bit % 16) | BIT(bit % 16 + 16);
 		else
@@ -132,7 +132,7 @@ static inline u32 rockchip_gpio_readl_bit(struct rockchip_pin_bank *bank,
 	void __iomem *reg = bank->reg_base + offset;
 	u32 data;
 
-	if (bank->gpio_type == GPIO_TYPE_V2) {
+	if (bank->gpio_type >= GPIO_TYPE_V2) {
 		data = readl(bit >= 16 ? reg + 0x4 : reg);
 		data >>= bit % 16;
 	} else {
@@ -209,19 +209,25 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 	unsigned int cur_div_reg;
 	u64 div;
 
-	if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
-		div_debounce_support = true;
+	div_debounce_support = (bank->gpio_type >= GPIO_TYPE_V2) && !IS_ERR(bank->db_clk);
+	if (debounce && div_debounce_support) {
 		freq = clk_get_rate(bank->db_clk);
 		if (!freq)
 			return -EINVAL;
-		max_debounce = (GENMASK(23, 0) + 1) * 2 * 1000000 / freq;
+
+		div = (u64)(GENMASK(23, 0) + 1) * 1000000;
+		if (bank->gpio_type == GPIO_TYPE_V2)
+			max_debounce = DIV_ROUND_CLOSEST_ULL(div, freq);
+		else
+			max_debounce = DIV_ROUND_CLOSEST_ULL(div, 2 * freq);
 		if ((unsigned long)debounce > max_debounce)
 			return -EINVAL;
 
-		div = debounce * freq;
-		div_reg = DIV_ROUND_CLOSEST_ULL(div, 2 * USEC_PER_SEC) - 1;
-	} else {
-		div_debounce_support = false;
+		div = (u64)debounce * freq;
+		if (bank->gpio_type == GPIO_TYPE_V2)
+			div_reg = DIV_ROUND_CLOSEST_ULL(div, USEC_PER_SEC) - 1;
+		else
+			div_reg = DIV_ROUND_CLOSEST_ULL(div, USEC_PER_SEC / 2) - 1;
 	}
 
 	raw_spin_lock_irqsave(&bank->slock, flags);
@@ -284,10 +290,11 @@ static int rockchip_gpio_set_config(struct gpio_chip *gc, unsigned int offset,
 				  unsigned long config)
 {
 	enum pin_config_param param = pinconf_to_config_param(config);
+	unsigned int debounce = pinconf_to_config_argument(config);
 
 	switch (param) {
 	case PIN_CONFIG_INPUT_DEBOUNCE:
-		rockchip_gpio_set_debounce(gc, offset, true);
+		rockchip_gpio_set_debounce(gc, offset, debounce);
 		/*
 		 * Rockchip's gpio could only support up to one period
 		 * of the debounce clock(pclk), which is far away from
@@ -416,7 +423,7 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 	polarity = rockchip_gpio_readl(bank, bank->gpio_regs->int_polarity);
 
 	if (type == IRQ_TYPE_EDGE_BOTH) {
-		if (bank->gpio_type == GPIO_TYPE_V2) {
+		if (bank->gpio_type >= GPIO_TYPE_V2) {
 			rockchip_gpio_writel_bit(bank, d->hwirq, 1,
 						 bank->gpio_regs->int_bothedge);
 			goto out;
@@ -435,7 +442,7 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 				polarity |= mask;
 		}
 	} else {
-		if (bank->gpio_type == GPIO_TYPE_V2) {
+		if (bank->gpio_type >= GPIO_TYPE_V2) {
 			rockchip_gpio_writel_bit(bank, d->hwirq, 0,
 						 bank->gpio_regs->int_bothedge);
 		} else {
@@ -543,7 +550,7 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	}
 
 	gc = irq_get_domain_generic_chip(bank->domain, 0);
-	if (bank->gpio_type == GPIO_TYPE_V2) {
+	if (bank->gpio_type >= GPIO_TYPE_V2) {
 		gc->reg_writel = gpio_writel_v2;
 		gc->reg_readl = gpio_readl_v2;
 	}
@@ -632,10 +639,13 @@ static void rockchip_gpio_get_ver(struct rockchip_pin_bank *bank)
 	switch (id) {
 	case GPIO_TYPE_V2:
 	case GPIO_TYPE_V2_1:
-	case GPIO_TYPE_V2_2:
 		bank->gpio_regs = &gpio_regs_v2;
 		bank->gpio_type = GPIO_TYPE_V2;
 		break;
+	case GPIO_TYPE_V2_2:
+		bank->gpio_regs = &gpio_regs_v2;
+		bank->gpio_type = GPIO_TYPE_V2_2;
+		break;
 	default:
 		bank->gpio_regs = &gpio_regs_v1;
 		bank->gpio_type = GPIO_TYPE_V1;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
