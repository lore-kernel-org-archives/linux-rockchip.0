Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DFEDC54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 10:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUGmyrr7p58Yh8I3Bqmx8zrVg+0L1Z22F7DUgd2DMyM=; b=FybZgsyNb10lXu
	RUipzVb0YuJFGBaDg/WqkpZD8NMPpEj4bEsh1D6d2p/zvu0B1nEhQSjT62RpzJRolnc7UHe0DeIAP
	aBz6MP+ufHSMT1zIPvLUibbdjKffPZ0n8jugOZbhWfMf9KzizlOMg2ajy09PiOmaKSDjci2/ZPy6d
	nrHoPpeMt3ZQ3Dl1uCMQJK8cCw7C4m+Oc3sZv+96lGp4BNVWn7GM+rZ+89eYET8ei5tqDJ/gwbKiF
	K+9ZBJW2Z9T3QDUFsFmJAVAcD2EGJTAWc2YkapyPqF2ctWEh2Z7jskTPwHTCyCcir2q+Kjo4hytDh
	zBmge5zW/ji1vncSc0DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXr-002z1v-C8; Tue, 20 Sep 2022 10:32:03 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXK-002yP8-L5
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 10:31:33 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 16680280BCB;
	Tue, 20 Sep 2022 18:31:22 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de,
	brgl@bgdev.pl,
	andriy.shevchenko@linux.intel.com
Cc: robert.moore@intel.com,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	lenb@kernel.org,
	rafael@kernel.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 16/20] gpio/rockchip: try to get gpio id from uid when ACPI enabled
Date: Tue, 20 Sep 2022 18:31:04 +0800
Message-Id: <20220920103108.23074-17-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920103108.23074-1-jay.xu@rock-chips.com>
References: <20220920103108.23074-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSxpDVktDSUweTx5IGBhDSVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MzY6Lyo6ST0qPhwyFxRDLy4N
	ThcKChlVSlVKTU1ITU1CQ0NJTElNVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUhNQkw3Bg++
X-HM-Tid: 0a835a73cdea2eb1kusn16680280bcb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_033130_915529_270B6093 
X-CRM114-Status: GOOD (  13.81  )
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

When the ACPI is enabled, the GPIO index should be get from the uid,
otherwise get it from the dt alias or a static count to the legency dt
files.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 40 ++++++++++++++++++++++++++++--------
 1 file changed, 31 insertions(+), 9 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 09ed5c880dde..11586d93549b 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -6,6 +6,7 @@
  * Copyright (c) 2021 Rockchip Electronics Co. Ltd.
  */
 
+#include <linux/acpi.h>
 #include <linux/bitops.h>
 #include <linux/clk.h>
 #include <linux/device.h>
@@ -710,6 +711,29 @@ rockchip_gpio_find_bank(struct pinctrl_dev *pctldev, int id)
 	return found ? bank : NULL;
 }
 
+static int rockchip_gpio_get_bank_id(struct device *dev)
+{
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+	int bank_id = -EINVAL;
+	u64 uid;
+	int ret;
+	static int gpio;
+
+	if (is_acpi_node(fwnode)) {
+		ret = acpi_dev_uid_to_integer(ACPI_COMPANION(dev), &uid);
+		if (ret < 0)
+			return ret;
+
+		bank_id = uid;
+	} else {
+		bank_id = of_alias_get_id(to_of_node(fwnode), "gpio");
+		if (bank_id < 0)
+			bank_id = gpio++;
+	}
+
+	return bank_id;
+}
+
 static int rockchip_gpio_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -717,8 +741,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	struct device_node *pctlnp = of_get_parent(np);
 	struct pinctrl_dev *pctldev = NULL;
 	struct rockchip_pin_bank *bank = NULL;
-	static int gpio;
-	int id, ret;
+	int ret;
 
 	if (!np || !pctlnp)
 		return -ENODEV;
@@ -727,13 +750,11 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	if (!pctldev)
 		return -EPROBE_DEFER;
 
-	id = of_alias_get_id(np, "gpio");
-	if (id < 0)
-		id = gpio++;
-
-	bank = rockchip_gpio_find_bank(pctldev, id);
-	if (!bank)
-		return -EINVAL;
+	ret = rockchip_gpio_get_bank_id(dev);
+	if (ret >= 0)
+		bank->bank_num = ret;
+	else
+		goto err;
 
 	bank->dev = dev;
 	bank->of_node = np;
@@ -759,6 +780,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	clk_put(bank->db_clk);
 	clk_disable_unprepare(bank->clk);
 	clk_disable_unprepare(bank->db_clk);
+err:
 
 	return ret;
 }
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
