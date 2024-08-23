Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECB7BC5321E
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 03:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSvBlMqiS+rZDhDB5YHGrTz61rgTg8nr0lbqYdB6/9Q=; b=fTGNF4Zl5KyHpk
	65IuOKtHqF/Ysk5qnONPAlIRyzSg7y+5z/PAi5XVJY0GmG4Hj6G+yg3Mad2LR84sVZzSCAsc5ogZD
	H9RyPODUtSPN3PSEJV8fuxzW1bbPp6kjN+YHTzOiCer76TX9yWFJGmtlkFwAEIqkyNR+Bk4tuw120
	myvb71N053AHot3dA+y7AJUFEEry2lUTjQ1DKCwTI3yOgAoVf18T2ck0zeMgdayKTbiqIs328MJQx
	Amq/RtyidBSA5uCSjX8QcVuCR9V85BAODy5SWLIjOAmupIKHDkjRV0G0JF+t0itwMFnyvBSRCu6P8
	eAvi1xL0PM+ou1jkQfOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLI8-0000000F5wI-0wq5;
	Fri, 23 Aug 2024 03:48:48 +0000
Received: from mail-m32122.qiye.163.com ([220.197.32.122])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLEn-0000000F50X-2MNV;
	Fri, 23 Aug 2024 03:45:26 +0000
DKIM-Signature: a=rsa-sha256;
	b=Zkn6ylcoVbTJckdIEBreZbOQG/pfX3mPGJX6PsYEVHuhr4rPxCUWbkwtbYyfql0LTNXTpfGjGAGAcm5fXGgSJDuhtSI+2fOzX4S23FFInoGj7Au9AH0SziiAPjh06b2n2dyBPFA7KnK68srUvZCUc2Rs3XGXbhwlcroavIugBxU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=apRmS241b/aRkrNBwUlbeYm8yi6KsELv22IMtcVzCc0=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 5EEE27E03EE;
	Fri, 23 Aug 2024 11:45:06 +0800 (CST)
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
Subject: [PATCH v2] gpio: rockchip: support 'clock-names' from dt nodes
Date: Fri, 23 Aug 2024 11:43:10 +0800
Message-Id: <20240823034314.62305-8-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823034314.62305-1-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhlJHlZJThofHxgYHUhCHU5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a917d56824209cfkunm5eee27e03ee
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTI6URw5GjIwQyw2NzQTTlE#
	OgwwCQhVSlVKTElPSENPTEtMTENKVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT01LSTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_204521_818339_3BDA0E23 
X-CRM114-Status: GOOD (  12.16  )
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
 drivers/gpio/gpio-rockchip.c | 42 ++++++++++++++++++++++++------------
 1 file changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index aff8bec79062..25ddf6a82c09 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -646,23 +646,12 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
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
@@ -722,10 +711,29 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 
 	raw_spin_lock_init(&bank->slock);
 
+	bank->clk = devm_clk_get(dev, "bus");
+	if (IS_ERR(bank->clk)) {
+		bank->clk = of_clk_get(dev->of_node, 0);
+		if (IS_ERR(bank->clk)) {
+			dev_err(dev, "fail to get apb clock\n");
+			return PTR_ERR(bank->clk);
+		}
+	}
+
 	ret = rockchip_get_bank_data(bank);
 	if (ret)
 		return ret;
 
+	bank->db_clk = devm_clk_get(dev, "db");
+	if (IS_ERR(bank->db_clk)) {
+		bank->db_clk = of_clk_get(dev->of_node, 1);
+		if (IS_ERR(bank->db_clk))
+			bank->db_clk = NULL;
+	}
+
+	clk_prepare_enable(bank->clk);
+	clk_prepare_enable(bank->db_clk);
+
 	/*
 	 * Prevent clashes with a deferred output setting
 	 * being added right at this moment.
@@ -734,9 +742,8 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 
 	ret = rockchip_gpiolib_register(bank);
 	if (ret) {
-		clk_disable_unprepare(bank->clk);
-		mutex_unlock(&bank->deferred_lock);
-		return ret;
+		dev_err(bank->dev, "Failed to register gpio %d\n", ret);
+		goto err_unlock;
 	}
 
 	while (!list_empty(&bank->deferred_pins)) {
@@ -769,6 +776,12 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	dev_info(dev, "probed %pOF\n", np);
 
 	return 0;
+err_unlock:
+	mutex_unlock(&bank->deferred_lock);
+	clk_disable_unprepare(bank->clk);
+	clk_disable_unprepare(bank->db_clk);
+
+	return ret;
 }
 
 static void rockchip_gpio_remove(struct platform_device *pdev)
@@ -776,6 +789,7 @@ static void rockchip_gpio_remove(struct platform_device *pdev)
 	struct rockchip_pin_bank *bank = platform_get_drvdata(pdev);
 
 	clk_disable_unprepare(bank->clk);
+	clk_disable_unprepare(bank->db_clk);
 	gpiochip_remove(&bank->gpio_chip);
 }
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
