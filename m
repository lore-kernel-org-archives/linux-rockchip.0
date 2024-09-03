Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7255CD342E
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 07:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GffWFgp+W8lL15cYEFwvYTYW+/eti4l0odf1GbqmS3E=; b=07oFBsxaKG/yql
	jCn8l55/cDhAUBms9gmWvCFDBQzzjbmbJhr9GBx7Rojuo4M4Lubr3o7vcHJBUdkavvYdJXBhtDIRB
	tTW5TSM0EE1SGs50VjQLJUQVovPPT6tZhhQPZXHthALLrAI5AC3P34H+mmptrId1Me5j8uC/t39d/
	cWcYJ4yD7yPEuR0SrQbluvaYuuYxsn0nP+GBRnjMj9+51tP8flF5zg2L3IW2zuJDNsIF6rEX+Rj3J
	DMSEWgO5JZzTzzSRO8y/5QSof40+mhrARDJyeZBRK2iKq1VaWyowEPFevN8yDN8KnXS9e8mCKZZcI
	ryy3n3BnagSUREfZ3wmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOEA-0000000Gk3S-32uB;
	Tue, 03 Sep 2024 07:45:26 +0000
Received: from mail-m12826.netease.com ([103.209.128.26])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO6T-0000000GiMd-1JsK;
	Tue, 03 Sep 2024 07:37:32 +0000
DKIM-Signature: a=rsa-sha256;
	b=Ii74ds9SnwnaDDrCQGKEgzMe1fgQ3dlfN8Sfln7XAvee6zhYZsqAaCcSYT2GRNzURVhuXUaTh7/Q3RdAjYENRls/oKCVD/ukdcH/BKW0Z4tQ9W22M2SUYHTo5z/0ZA2RiGZYx7C3oOwQxeXz7N8/jmisFGNIBBlw9NeGGtiLrm0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=q9p3HERBjpHzvy9d33e3BEdsxmACYt0ZV5dTXXk0BGE=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 958CD7E05FF;
	Tue,  3 Sep 2024 15:37:11 +0800 (CST)
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
Subject: [PATCH v3 07/12] gpio: rockchip: support 'clock-names' from dt nodes
Date: Tue,  3 Sep 2024 15:36:44 +0800
Message-Id: <20240903073649.237362-8-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903073649.237362-1-ye.zhang@rock-chips.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh1LQlZOSEJDGUJPSE0ZQk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91b6d0f17809cfkunm958cd7e05ff
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NE06Pjo6OjI4HkkTLBE1FRNJ
	MQMKChhVSlVKTElOSE9CS0hJQ0lNVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTkhPTjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_003730_391586_1234A5F4 
X-CRM114-Status: GOOD (  13.65  )
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

Added support for retrieving clocks using 'clock-names' from dt nodes

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c       | 54 +++++++++++++++++++++---------
 drivers/pinctrl/pinctrl-rockchip.h |  2 ++
 2 files changed, 40 insertions(+), 16 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 2e80f28bb0c4..83df1632112d 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -650,23 +650,12 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 	if (!bank->irq)
 		return -EINVAL;
 
-	bank->clk = of_clk_get(bank->of_node, 0);
-	if (IS_ERR(bank->clk))
-		return PTR_ERR(bank->clk);
-
-	clk_prepare_enable(bank->clk);
 	id = readl(bank->reg_base + gpio_regs_v2.version_id);
 
 	/* If not gpio v2, that is default to v1. */
 	if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1) {
 		bank->gpio_regs = &gpio_regs_v2;
 		bank->gpio_type = GPIO_TYPE_V2;
-		bank->db_clk = of_clk_get(bank->of_node, 1);
-		if (IS_ERR(bank->db_clk)) {
-			dev_err(bank->dev, "cannot find debounce clk\n");
-			clk_disable_unprepare(bank->clk);
-			return -EINVAL;
-		}
 	} else {
 		bank->gpio_regs = &gpio_regs_v1;
 		bank->gpio_type = GPIO_TYPE_V1;
@@ -726,9 +715,31 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 
 	raw_spin_lock_init(&bank->slock);
 
+	bank->clk = devm_clk_get_enabled(dev, "bus");
+	if (IS_ERR(bank->clk)) {
+		bank->clk = of_clk_get(dev->of_node, 0);
+		if (IS_ERR(bank->clk)) {
+			dev_err(dev, "fail to get apb clock\n");
+			return PTR_ERR(bank->clk);
+		}
+		clk_prepare_enable(bank->clk);
+		bank->manual_clk_release = true;
+	}
+
+	bank->db_clk = devm_clk_get_enabled(dev, "db");
+	if (IS_ERR(bank->db_clk)) {
+		bank->db_clk = of_clk_get(dev->of_node, 1);
+		if (IS_ERR(bank->db_clk)) {
+			bank->db_clk = NULL;
+		} else {
+			clk_prepare_enable(bank->db_clk);
+			bank->manual_dbclk_release = true;
+		}
+	}
+
 	ret = rockchip_get_bank_data(bank);
 	if (ret)
-		return ret;
+		goto err_disabled_clk;
 
 	/*
 	 * Prevent clashes with a deferred output setting
@@ -738,9 +749,8 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 
 	ret = rockchip_gpiolib_register(bank);
 	if (ret) {
-		clk_disable_unprepare(bank->clk);
-		mutex_unlock(&bank->deferred_lock);
-		return ret;
+		dev_err(bank->dev, "Failed to register gpio %d\n", ret);
+		goto err_unlock;
 	}
 
 	while (!list_empty(&bank->deferred_pins)) {
@@ -773,13 +783,25 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	dev_info(dev, "probed %pOF\n", np);
 
 	return 0;
+err_unlock:
+	mutex_unlock(&bank->deferred_lock);
+err_disabled_clk:
+	if (bank->manual_clk_release)
+		clk_disable_unprepare(bank->clk);
+	if (bank->manual_dbclk_release)
+		clk_disable_unprepare(bank->db_clk);
+
+	return ret;
 }
 
 static void rockchip_gpio_remove(struct platform_device *pdev)
 {
 	struct rockchip_pin_bank *bank = platform_get_drvdata(pdev);
 
-	clk_disable_unprepare(bank->clk);
+	if (bank->manual_clk_release)
+		clk_disable_unprepare(bank->clk);
+	if (bank->manual_dbclk_release)
+		clk_disable_unprepare(bank->db_clk);
 	gpiochip_remove(&bank->gpio_chip);
 }
 
diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index 0b2b56014b17..bb6df7296508 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -319,6 +319,8 @@ struct rockchip_pin_bank {
 	struct regmap			*regmap_pull;
 	struct clk			*clk;
 	struct clk			*db_clk;
+	bool				manual_clk_release;
+	bool				manual_dbclk_release;
 	int				irq;
 	u32				saved_masks;
 	u32				pin_base;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
