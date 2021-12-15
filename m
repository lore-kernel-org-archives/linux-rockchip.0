Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6F6FC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 21:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQ1wACnS3xdHW7bz6753m+XeE9vHpe7xOmvPnwTwktI=; b=luBmOCU6px5S1g
	EMhqnuuq/4krmynFJuWV+DLhthEFCH5DWD/gPWgZNqImvOP9BDJwhWsq1/PIf63sQ3qVYmBP+NXNB
	rpdHljAIPg1+uWplDza9qB7wCncpnMoUyVN2V6oWEyF/h4SPbPytKqjCHawL1WpHf+fa+wbjCmPzm
	aQavswbWPXvlAkQ9UzH8cy0iS9/V7EhdioQob5MS8wbU/XMbGVtlq8j+s4ZYbNlPqG23OEEl6AEi1
	5YqXknXwDRNLv9nBAvdyqdHbqPh4lwSnB/XXC4ju32AEvyBCVE9+QAZlpvj5DlraRDAdPPeB3X6/O
	Rveci7Ub9NKlyNv+FpFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbtq-002oEV-Es; Wed, 15 Dec 2021 21:33:22 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbtn-002oDY-IH
 for linux-rockchip@lists.infradead.org; Wed, 15 Dec 2021 21:33:21 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout3.routing.net (Postfix) with ESMTP id F22186005E;
 Wed, 15 Dec 2021 21:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1639603991;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hWzxlx8Nu1TPpJuRyawo3q2Yic58WXyHq727goeDI64=;
 b=UlZuhgjD+l69zDOV6n5WQYu+twE27OiIjIapVcRzDjuXX2x8h90XXXU5M9T89PAO66NhfO
 S14jHhQ2UBUcgOiuwvIHWON2jdAMKkrwZ0yMzD+SaUSRhKgD7+oJiPRngv/DW0o8NWp77c
 G3ExuGqSP9zb7+3XyWxb/B9s7649q2A=
Received: from localhost.localdomain (fttx-pool-80.245.79.169.bambit.de
 [80.245.79.169])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 61540405D6;
 Wed, 15 Dec 2021 21:33:10 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Lee Jones <lee.jones@linaro.org>
Cc: Frank Wunderlich <frank-w@public-files.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 1/2] mfd: rk808: add reboot support to rk808 pmic
Date: Wed, 15 Dec 2021 22:32:59 +0100
Message-Id: <20211215213300.4778-2-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211215213300.4778-1-linux@fw-web.de>
References: <20211215213300.4778-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 5268f42b-9bee-4701-a1c8-c6f8dd6d6554
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_133319_939450_05644CEF 
X-CRM114-Status: GOOD (  13.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Peter Geis <pgwipeout@gmail.com>

This adds reboot support to the rk808 pmic. This only enables if the
rockchip,system-power-controller flag is set.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/mfd/rk808.c       | 48 +++++++++++++++++++++++++++++++++++++++
 include/linux/mfd/rk808.h |  2 ++
 2 files changed, 50 insertions(+)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index b181fe401330..afbd7e01df50 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -19,6 +19,7 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/regmap.h>
+#include <linux/reboot.h>
 
 struct rk808_reg_data {
 	int addr;
@@ -533,6 +534,7 @@ static void rk808_pm_power_off(void)
 	int ret;
 	unsigned int reg, bit;
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+	dev_err(&rk808_i2c_client->dev, "poweroff device!\n");
 
 	switch (rk808->variant) {
 	case RK805_ID:
@@ -552,6 +554,7 @@ static void rk808_pm_power_off(void)
 		bit = DEV_OFF;
 		break;
 	default:
+		dev_err(&rk808_i2c_client->dev, "poweroff device not supported!\n");
 		return;
 	}
 	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
@@ -559,6 +562,44 @@ static void rk808_pm_power_off(void)
 		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
 }
 
+static int rk808_restart_notify(struct notifier_block *this, unsigned long mode, void *cmd)
+{
+	int ret;
+	unsigned int reg, bit;
+	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+
+	switch (rk808->variant) {
+	case RK805_ID:
+		reg = RK805_DEV_CTRL_REG;
+		bit = DEV_OFF_RST;
+		break;
+	case RK808_ID:
+		reg = RK808_DEVCTRL_REG,
+		bit = DEV_OFF;
+		break;
+	case RK817_ID:
+		reg = RK817_SYS_CFG(3);
+		bit = DEV_RST;
+		break;
+	case RK818_ID:
+		reg = RK818_DEVCTRL_REG;
+		bit = DEV_OFF_RST;
+		break;
+	default:
+		return NOTIFY_DONE;
+	}
+	ret = regmap_update_bits(rk808->regmap, reg, bit, bit);
+	if (ret)
+		dev_err(&rk808_i2c_client->dev, "Failed to restart device!\n");
+
+	return NOTIFY_DONE;
+}
+
+static struct notifier_block rk808_restart_handler = {
+	.notifier_call = rk808_restart_notify,
+	.priority = 255,
+};
+
 static void rk8xx_shutdown(struct i2c_client *client)
 {
 	struct rk808 *rk808 = i2c_get_clientdata(client);
@@ -727,6 +768,13 @@ static int rk808_probe(struct i2c_client *client,
 	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
 		rk808_i2c_client = client;
 		pm_power_off = rk808_pm_power_off;
+		rk808->nb = &rk808_restart_handler;
+
+		dev_warn(&client->dev, "register restart handler\n");
+
+		ret = register_restart_handler(rk808->nb);
+		if (ret)
+			dev_err(&client->dev, "failed to register restart handler, %d\n", ret);
 	}
 
 	return 0;
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index a96e6d43ca06..5dfe0c4ceab1 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -373,6 +373,7 @@ enum rk805_reg {
 #define SWITCH2_EN	BIT(6)
 #define SWITCH1_EN	BIT(5)
 #define DEV_OFF_RST	BIT(3)
+#define DEV_RST		BIT(2)
 #define DEV_OFF		BIT(0)
 #define RTC_STOP	BIT(0)
 
@@ -701,5 +702,6 @@ struct rk808 {
 	long				variant;
 	const struct regmap_config	*regmap_cfg;
 	const struct regmap_irq_chip	*regmap_irq_chip;
+	struct notifier_block		*nb;
 };
 #endif /* __LINUX_REGULATOR_RK808_H */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
