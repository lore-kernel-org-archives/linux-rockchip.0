Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41941CD342F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 07:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuMXsj88wb4mJl6epyYSpCQSFgD5iEky3qoZTLAtid0=; b=sIS5R9JwM2Satq
	d++fzUdEy1Yr4S87ff3N2OtZTsJb2heRBY1lDgKhWM4lNVxgwh299u+u4Fi7BFfHsE/evzptgJNjR
	IY9BYW4yCfdVlEm1s2uFNy1YPINstOAV4vRztDOOFzpcVnxhFj3K1i1Jmn6X3UOSd2aCZVelgXcnN
	Q8aMjuqsrkNPFDN0St2cLWTKAwYN/ArYTW4NYJHAB0+/UDslgpfafn2CCyrzBMfuuKS0OgTpF6ldL
	Pf9A3f2rUpBsfoMPz4HXqfty1/Tta8FqL/afeu34/dmI/2iKkzGytcH91prrsCvxTO3B1z9yj3znH
	b+1ZK4jOMnrtVoWReJCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOFt-0000000GkQY-2bi8;
	Tue, 03 Sep 2024 07:47:13 +0000
Received: from mail-m127173.xmail.ntesmail.com ([115.236.127.173])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO6T-0000000GiNt-0Luj;
	Tue, 03 Sep 2024 07:37:32 +0000
DKIM-Signature: a=rsa-sha256;
	b=dA5o9xVhK1QRgaUA/cNrN7wOBI14iJktjBG5H947XGoJBMFA+TYndQMPpN0IhrCBILl2U5N3dXBR8EPsWyHFD8goyRi19yHtIbyluMsLINep4ipcna+6mzW0CLi4DzMEai0XGGGMrpSq4XKbpDhg6qhJLMSlij7pnPE2vCIG76I=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Wn6GkJwhWRWTq791Zs8sxLcCjb5vjEFNBYms3MzvyHw=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 9860B7E0638;
	Tue,  3 Sep 2024 15:37:15 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: Ye Zhang <ye.zhang@rock-chips.com>,
	linus.walleij@linaro.org,
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
	elaine.zhang@rock-chips.com
Subject: [PATCH v3 10/12] gpio: rockchip: support new version gpio
Date: Tue,  3 Sep 2024 15:36:47 +0800
Message-Id: <20240903073649.237362-11-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903073649.237362-1-ye.zhang@rock-chips.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk1OTFZKGE1PGR8aSUMfQk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91b6d1018109cfkunm9860b7e0638
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PDo6Mjo*KTIyDklOFhxIFRIp
	HQMKCxNVSlVKTElOSE9CS0hNQklMVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTkxJTTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_003729_581489_EF203CD7 
X-CRM114-Status: GOOD (  13.27  )
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
 drivers/gpio/gpio-rockchip.c | 29 ++++++++++++++++++++---------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 579701ad3c6f..6deebf1dd9dd 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -36,6 +36,7 @@
 #define GPIO_TYPE_V1		(0)           /* GPIO Version ID reserved */
 #define GPIO_TYPE_V2		(0x01000C2B)
 #define GPIO_TYPE_V2_1		(0x0101157C)
+#define GPIO_TYPE_V2_2		(0x010219C8)
 
 static const struct rockchip_gpio_regs gpio_regs_v1 = {
 	.port_dr = 0x00,
@@ -85,7 +86,7 @@ static inline void rockchip_gpio_writel(struct rockchip_pin_bank *bank,
 {
 	void __iomem *reg = bank->reg_base + offset;
 
-	if (bank->gpio_type == GPIO_TYPE_V2)
+	if (bank->gpio_type >= GPIO_TYPE_V2)
 		gpio_writel_v2(value, reg);
 	else
 		writel(value, reg);
@@ -97,7 +98,7 @@ static inline u32 rockchip_gpio_readl(struct rockchip_pin_bank *bank,
 	void __iomem *reg = bank->reg_base + offset;
 	u32 value;
 
-	if (bank->gpio_type == GPIO_TYPE_V2)
+	if (bank->gpio_type >= GPIO_TYPE_V2)
 		value = gpio_readl_v2(reg);
 	else
 		value = readl(reg);
@@ -112,7 +113,7 @@ static inline void rockchip_gpio_writel_bit(struct rockchip_pin_bank *bank,
 	void __iomem *reg = bank->reg_base + offset;
 	u32 data;
 
-	if (bank->gpio_type == GPIO_TYPE_V2) {
+	if (bank->gpio_type >= GPIO_TYPE_V2) {
 		if (value)
 			data = BIT(bit % 16) | BIT(bit % 16 + 16);
 		else
@@ -133,7 +134,7 @@ static inline u32 rockchip_gpio_readl_bit(struct rockchip_pin_bank *bank,
 	void __iomem *reg = bank->reg_base + offset;
 	u32 data;
 
-	if (bank->gpio_type == GPIO_TYPE_V2) {
+	if (bank->gpio_type >= GPIO_TYPE_V2) {
 		data = readl(bit >= 16 ? reg + 0x4 : reg);
 		data >>= bit % 16;
 	} else {
@@ -220,12 +221,18 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 		if (!freq)
 			return -EINVAL;
 		div = (u64)(GENMASK(23, 0) + 1) * HZ_PER_MHZ;
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
@@ -411,7 +418,7 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 	polarity = rockchip_gpio_readl(bank, bank->gpio_regs->int_polarity);
 
 	if (type == IRQ_TYPE_EDGE_BOTH) {
-		if (bank->gpio_type == GPIO_TYPE_V2) {
+		if (bank->gpio_type >= GPIO_TYPE_V2) {
 			rockchip_gpio_writel_bit(bank, d->hwirq, 1,
 						 bank->gpio_regs->int_bothedge);
 			goto out;
@@ -430,7 +437,7 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 				polarity |= mask;
 		}
 	} else {
-		if (bank->gpio_type == GPIO_TYPE_V2) {
+		if (bank->gpio_type >= GPIO_TYPE_V2) {
 			rockchip_gpio_writel_bit(bank, d->hwirq, 0,
 						 bank->gpio_regs->int_bothedge);
 		} else {
@@ -536,7 +543,7 @@ static int rockchip_interrupts_register(struct rockchip_pin_bank *bank)
 	}
 
 	gc = irq_get_domain_generic_chip(bank->domain, 0);
-	if (bank->gpio_type == GPIO_TYPE_V2) {
+	if (bank->gpio_type >= GPIO_TYPE_V2) {
 		gc->reg_writel = gpio_writel_v2;
 		gc->reg_readl = gpio_readl_v2;
 	}
@@ -669,6 +676,10 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 		bank->gpio_regs = &gpio_regs_v2;
 		bank->gpio_type = GPIO_TYPE_V2;
 		break;
+	case GPIO_TYPE_V2_2:
+		bank->gpio_regs = &gpio_regs_v2;
+		bank->gpio_type = GPIO_TYPE_V2_2;
+		break;
 	default:
 		dev_err(bank->dev, "cannot get the version ID\n");
 		return -ENODEV;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
