Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5BB1C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 14:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pXGutv76ftbgpsquRy1WMEbVLWPubooyPmNW8ZVKm8E=; b=DGoj0eLIoME8Wu
	kw9xElwhemla9tIGcvu9hLD9Zh+Uujt29iWfo7bHyUhuR+DQFLhKy++IS5IQZwL2QbJD5WvxL+Yoc
	jlSWfyBijdfd3OF8SJcucbVIs/HGx2HhqQ1xi5ZjLWukBwgkSnzG/66Lk4ynbmUwOfc1d3dXSGrIM
	kZqVsr0l8CSE2GOOivluA8tk5UVq8e3re/QJEWHVepWviEQRGK3kH/3lZKli+2A9sxqAiUvuYBoK6
	CsGM/Sx3bRVdLNgsSn9QpDwpPtUsoXXc4yM3BM3G+gTXlj56pl0Ynutkqynrq1AzM+0tG2amL3G60
	pYMeoXDjqRdDU8wlpx/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myEeE-00Al9O-O5; Fri, 17 Dec 2021 14:55:50 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myEeC-00Al8z-Ld
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 14:55:50 +0000
Received: by mail-qt1-x836.google.com with SMTP id 8so2822887qtx.5
 for <linux-rockchip@lists.infradead.org>; Fri, 17 Dec 2021 06:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XtcOS73MMuTSnqyUtIZf+L5nKHAZxvPbB6o8V1hZyjM=;
 b=pKzUbHI9kfxRcJMTXcxX2W7LVyGkKWWnRlhLTz18NC3a6Uw4UYaNyPZtpwt6qBxBEO
 67k5oPomwL3gtNL1xQh6P65FuwlhK2Db0I48xQZiCiNXGfqpeia3DrOzV5uC52XmInc1
 jkaLNT+DWr9r4CAwPxzeY679YTNtSJBbbb85BBmJxZM52rK/v+hQ/yTVF7WfasqSBG9S
 QV2RCbNA+KUT345Yc99H59W/c09gh1m8/GMiJqc063Qdi0lUC7ny5i48aF1dBPlTiUEy
 eqTbjt8wqgRoyp130yPT78Hwdhr+nkcIG+bB93N3U3h1d/yI2wZa1pr2NFr/Yk109xL8
 7ptQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XtcOS73MMuTSnqyUtIZf+L5nKHAZxvPbB6o8V1hZyjM=;
 b=C0z1VnH3dWxz6W8wOkscU03TruSG+665QJr66LnlYPvbWLlsuzTt8zrYUyYXrEcIZP
 qLSiVyPlebGVfjkTV4CMHzlPx1yhvFVvk50QVbV8LKSzxX19dh2bB7V7uwrOrglS3Ugc
 YjF2DqfPtY4cXbzWBNRFIMaz+YZm1MJ1yKEqPVsArzThgS6ThgVEUhlFHH+8ZYIecQt3
 ebsawxogpFh++x1YoM3TWc2fEBvngduVZE8f41m83O059VLfeRwpQaY4mjgBxdiaK5c/
 a8lA+UmZkoTzAw0CYwaA/d33CPp6pTPRp6U+uMaAQQSlSyE4AviEHUYZCXdJC0+JYJvI
 VI6Q==
X-Gm-Message-State: AOAM532D47nVEho5DM3oEJDsqCKSLs6w7C8w9nxLnfeMFyqlRwg8gCT6
 9Q9iR2Qi1ji4gMMjC9WZ2fg=
X-Google-Smtp-Source: ABdhPJw8N/0bg1xJaQNrA1IXrd7by/PdqZLXyIW33rKr6C/KJpBOUuMXNA18L5ZKhPD9XSKNURmCDw==
X-Received: by 2002:a05:622a:14:: with SMTP id x20mr2604178qtw.1.1639752947547; 
 Fri, 17 Dec 2021 06:55:47 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id t35sm8310727qtc.83.2021.12.17.06.55.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Dec 2021 06:55:47 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, linux-kernel@vger.kernel.org
Subject: [PATCH v2] mfd: rk808: add reboot support to rk808.c
Date: Fri, 17 Dec 2021 09:55:43 -0500
Message-Id: <20211217145544.341617-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_065548_755598_930A2AFD 
X-CRM114-Status: GOOD (  20.18  )
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

This adds reboot support to the rk808o pmic driver and enables it for
the rk809 and rk817 devices.
This only enables if the rockchip,system-power-controller flag is set.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
This patch was created to address issues with psci-reset on rk356x
chips. Until the rk356x series ATF open source code is released so we
can fix the issue at the source, this is the only way to ensure reliable
resetting on devices using these chips.

After testing the rk808 (thanks Robin!), it was found DEV_OFF_RST does
not reset the PMIC to a power on state. Since the rk805 and rk818 match
this register layout, I'm removing support for all three in the v2.
It may be possible to add support to them using an RTC wakeup, but that
has not been explored and is outside the scope of this patch.

Changelog:
V2:
- Squash the patch from Frank Wunderlich for rk809 support.
- Remove support for the rk805, rk808, and rk818 devices.
- Only register the reset handler for supported devices.
- Remove unnecessary dev_err and dev_warn statements.
- Register the reset handler directly

 drivers/mfd/rk808.c       | 43 +++++++++++++++++++++++++++++++++++++++
 include/linux/mfd/rk808.h |  1 +
 2 files changed, 44 insertions(+)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index b181fe401330..6fa7fbf9b695 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -19,6 +19,7 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/regmap.h>
+#include <linux/reboot.h>
 
 struct rk808_reg_data {
 	int addr;
@@ -543,6 +544,7 @@ static void rk808_pm_power_off(void)
 		reg = RK808_DEVCTRL_REG,
 		bit = DEV_OFF_RST;
 		break;
+	case RK809_ID:
 	case RK817_ID:
 		reg = RK817_SYS_CFG(3);
 		bit = DEV_OFF;
@@ -559,6 +561,34 @@ static void rk808_pm_power_off(void)
 		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
 }
 
+static int rk808_restart_notify(struct notifier_block *this, unsigned long mode, void *cmd)
+{
+	int ret;
+	unsigned int reg, bit;
+	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+
+	switch (rk808->variant) {
+	case RK809_ID:
+	case RK817_ID:
+		reg = RK817_SYS_CFG(3);
+		bit = DEV_RST;
+		break;
+
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
@@ -727,6 +757,19 @@ static int rk808_probe(struct i2c_client *client,
 	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
 		rk808_i2c_client = client;
 		pm_power_off = rk808_pm_power_off;
+
+		switch (rk808->variant) {
+		case RK809_ID:
+		case RK817_ID:
+			ret = register_restart_handler(&rk808_restart_handler);
+			break;
+		default:
+			dev_info(&client->dev, "pmic controlled board reset not supported\n");
+			break;
+		}
+
+		if (ret)
+			dev_err(&client->dev, "failed to register restart handler, %d\n", ret);
 	}
 
 	return 0;
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index a96e6d43ca06..58602032e642 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -373,6 +373,7 @@ enum rk805_reg {
 #define SWITCH2_EN	BIT(6)
 #define SWITCH1_EN	BIT(5)
 #define DEV_OFF_RST	BIT(3)
+#define DEV_RST		BIT(2)
 #define DEV_OFF		BIT(0)
 #define RTC_STOP	BIT(0)
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
