Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9BD2CF65DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 12:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mTnQaNsBkyuFDWzklAlCPmnNPazHwXg4mKr2ZSoi8Ns=; b=KsfHvVB2djRlt5
	3z60Ja7WDKKEeHRXFwnq7YRVnb5rPJGW/mGm70D2vejBkT+A5jRpYg4y/1Ztu1fZGZ7UV4UEPjwgA
	7vqo8mNN9c736k606DWQkS9siBmbEh+LjFdPCBW6lqvN9Zyc/GjbxsE05Bs+ITa74z3pFT61pn6jH
	QsGh76JYUoCEztzNEpUSx4QbiKT91f4xxhKn04XuTJyCOrHcG8b+F7PvrdYcJCfPZRc+VAWpnPsVg
	jE4KtQeDivAOcRTCiSAofd9wPaU+wxMdFU2UjlU/MVY4II3DqOn77sEHGVlxlIPmv5USKQot8dYUz
	TjMOB0X9X6wkbuH4BOLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLSS-0000000CUdD-3cxL;
	Mon, 26 Jan 2026 12:12:40 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLSQ-0000000CUcj-2Rsu
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Jan 2026 12:12:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E6B7339;
	Mon, 26 Jan 2026 04:12:29 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com [10.1.196.85])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 852153F5CA;
	Mon, 26 Jan 2026 04:12:34 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: brgl@kernel.org,
	linusw@kernel.org,
	heiko@sntech.de
Cc: sebastian.reichel@collabora.com,
	m.szyprowski@samsung.com,
	linux-rockchip@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH] gpio/rockchip: Stop calling pinctrl for set_direction
Date: Mon, 26 Jan 2026 12:12:26 +0000
Message-Id: <bddc0469f25843ca5ae0cf578ab3671435ae98a7.1769429546.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.39.2.101.g768bb238c484.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_041238_750460_8734D236 
X-CRM114-Status: GOOD (  13.82  )
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

Marking the whole controller as sleeping due to the pinctrl calls in the
.direction_{input,output} callbacks has the unfortunate side effect that
legitimate invocations of .get and .set, which cannot themselves sleep,
in atomic context now spew WARN()s from gpiolib.

However, as Heiko points out, the driver doing this is a bit silly to
begin with, as the pinctrl .gpio_set_direction hook doesn't even care
about the direction, the hook is only used to claim the mux. And sure
enough, the .gpio_request_enable hook exists to serve this very purpose,
so switch to that and remove the problematic business entirely.

Cc: stable@vger.kernel.org
Fixes: 20cf2aed89ac ("gpio: rockchip: mark the GPIO controller as sleeping")
Suggested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
If I don't have to redesign bits of the GPIO subsystem itself, this much
I can do :)

Tested on RK3399 NanoPC-T4 with GPIOs with and without explicit pinctrl,
and PROVE_LOCKING and DEBUG_ATOMIC_SLEEP stayed quiet (although I don't
think this board has any shared pins)
---
 drivers/gpio/gpio-rockchip.c       | 8 --------
 drivers/pinctrl/pinctrl-rockchip.c | 9 ++++-----
 2 files changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index bae2061f15fc..0fff4a699f12 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -18,7 +18,6 @@
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_irq.h>
-#include <linux/pinctrl/consumer.h>
 #include <linux/pinctrl/pinconf-generic.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
@@ -164,12 +163,6 @@ static int rockchip_gpio_set_direction(struct gpio_chip *chip,
 	unsigned long flags;
 	u32 data = input ? 0 : 1;
 
-
-	if (input)
-		pinctrl_gpio_direction_input(chip, offset);
-	else
-		pinctrl_gpio_direction_output(chip, offset);
-
 	raw_spin_lock_irqsave(&bank->slock, flags);
 	rockchip_gpio_writel_bit(bank, offset, data, bank->gpio_regs->port_ddr);
 	raw_spin_unlock_irqrestore(&bank->slock, flags);
@@ -593,7 +586,6 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 	gc->ngpio = bank->nr_pins;
 	gc->label = bank->name;
 	gc->parent = bank->dev;
-	gc->can_sleep = true;
 
 	ret = gpiochip_add_data(gc, bank);
 	if (ret) {
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index e44ef262beec..2fc67aeafdb3 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3545,10 +3545,9 @@ static int rockchip_pmx_set(struct pinctrl_dev *pctldev, unsigned selector,
 	return 0;
 }
 
-static int rockchip_pmx_gpio_set_direction(struct pinctrl_dev *pctldev,
-					   struct pinctrl_gpio_range *range,
-					   unsigned offset,
-					   bool input)
+static int rockchip_pmx_gpio_request_enable(struct pinctrl_dev *pctldev,
+					    struct pinctrl_gpio_range *range,
+					    unsigned int offset)
 {
 	struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 	struct rockchip_pin_bank *bank;
@@ -3562,7 +3561,7 @@ static const struct pinmux_ops rockchip_pmx_ops = {
 	.get_function_name	= rockchip_pmx_get_func_name,
 	.get_function_groups	= rockchip_pmx_get_groups,
 	.set_mux		= rockchip_pmx_set,
-	.gpio_set_direction	= rockchip_pmx_gpio_set_direction,
+	.gpio_request_enable	= rockchip_pmx_gpio_request_enable,
 };
 
 /*
-- 
2.39.2.101.g768bb238c484.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
