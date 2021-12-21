Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 078F8C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Dec 2021 23:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IojNDehxRtQ1WsaEk0MMk0KUcNU7w/44qu7O2ytGOzI=; b=E+KVvWSxyyMTGq
	FPcAGksLvDB9cyxqLTm3pcfHhTL/uY/x1dd9CT8icMhPHzAJnsXjCpLftgEg9DK7hVYOXe0sX0+mh
	7XdhSwNhJI/lP3cHU+cDY3xWlc6SOUf7Kr567jNqcftFr6kTKRnwp1ePLU5d0jIHk/IeetM9atGP6
	/gob7ioF+q2NwaCSK5W8/c6TD2P5EZXfOwofk4jMjNmct3UYokVGTQ2HmaKoEsB38+F39878gSq5m
	XRXuDj2Y7Zw9bBBnT+jwUBG8kNeUlBdBO1rkSWKHCttmH8IQD3aWaC0LH9mPeK4gSxR2w41wf1f2W
	xJtqGzxJ+AKGc01AIagQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzoCu-008i9j-58; Tue, 21 Dec 2021 23:06:08 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzoCr-008i9Q-EZ
 for linux-rockchip@lists.infradead.org; Tue, 21 Dec 2021 23:06:06 +0000
Received: by mail-qt1-x82d.google.com with SMTP id l17so329020qtk.7
 for <linux-rockchip@lists.infradead.org>; Tue, 21 Dec 2021 15:06:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FvSSROr+K+Ysb8k8Dk2ivOhBjqdFNd8mpizso6zU3/E=;
 b=Z7actIIro4tY/xus/N4EsFgK5T9jrY0dmTypeQi6AUaC9+fHFPVQMmIULXW2jGAo0d
 Lg4XCvUqMW2jQkGUTHyb2ryBqpCpLxeJli0zuOiSPGSjaQjbsyeY6kFFdNs69qc7a4tx
 eFVFfLHlpvEshVaHOwpg5dw7MAv5UwO5AtmQzyMXvr1Yd7mIVB3jTLUYhlIqEONL1bW6
 kWYYZRCafS/2ItN9idLtlc31g14b3xFgauk3z3fmMkndi0W0TBDTMqVMKMO5eafCX5r2
 ciBdTYN0mJ5HOmd7OYTBsIuBQRjmWIDE9LdSRXA6M17ly6l/D28HhE6sIhgoEjVYH01w
 FjiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FvSSROr+K+Ysb8k8Dk2ivOhBjqdFNd8mpizso6zU3/E=;
 b=7kbVuPKTg7nIgdcZGtMzlCwOhC4coGqUgV/DzK6mhikX1fnjkf+nzGebTqQepoZiHn
 bdwIf6jpKbezFKF9Y4P+cBssqHsgFlz7Jk26FxqhvpKYoEORoNTF3nGXfA3XDbadzSWZ
 reJWFCUufuk98gTM5lWeUE/yrElL71zdLFrFuh/v1uekDlKJUzQWqm7yz1DbDfkmRmL4
 IpRQNQqQIFBiOCjUkqCMRqM4L7KEOvTyYH+ZmAguAqrVKqK0S77FkWH7RR+TWc084W/O
 WktcXpEDsCxWPGqxV0cdYChNq9HfuU1++aS2OxpTfN4ocG8qNrBYk6HJFzmZEB28rz9v
 YYdg==
X-Gm-Message-State: AOAM533TJqOrGrLL3olltxCUntsjP1Wh7PD2moVPrf+BZYZf2v6ZAcL8
 aeOCfaDodbOFV3qD1cp1H1o=
X-Google-Smtp-Source: ABdhPJwhqxDrZonZy2PZJUkfNCxSLYysjkIJJJDt2kCyWtrUAYvbCVWd4nIhKKhHcjzRx57beYoxWw==
X-Received: by 2002:a05:622a:24b:: with SMTP id
 c11mr365036qtx.19.1640127963664; 
 Tue, 21 Dec 2021 15:06:03 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id s6sm365165qko.43.2021.12.21.15.06.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Dec 2021 15:06:03 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Dmitry Osipenko <digetx@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, linux-kernel@vger.kernel.org
Subject: [PATCH v4] mfd: rk808: add reboot support to rk808.c
Date: Tue, 21 Dec 2021 18:05:50 -0500
Message-Id: <20211221230550.1331047-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211221_150605_530651_4C45FF7D 
X-CRM114-Status: GOOD (  20.99  )
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

This adds reboot support to the rk808 pmic driver and enables it for
the rk809 and rk817 devices.
This only enables if the rockchip,system-power-controller flag is set.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Reviewed-by: Dmitry Osipenko <digetx@gmail.com>
---
(Resending due to incorrect Subject line)

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
V4:
- reorder rk808_restart_notify (Thanks Dmitry)
- drop of_property_read_bool before unregister (Good catch Frank)

V3: Thanks Dmitry!
- Adjust priority to be in line with other pmic drivers
- Move ret handling to case switch
- Make default registration debug
- Add unregister function on removal

V2:
- Squash the patch from Frank Wunderlich for rk809 support.
- Remove support for the rk805, rk808, and rk818 devices.
- Only register the reset handler for supported devices.
- Remove unnecessary dev_err and dev_warn statements.
- Register the reset handler directly

 drivers/mfd/rk808.c       | 44 +++++++++++++++++++++++++++++++++++++++
 include/linux/mfd/rk808.h |  1 +
 2 files changed, 45 insertions(+)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index b181fe401330..874d461dda44 100644
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
+	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+	unsigned int reg, bit;
+	int ret;
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
+	.priority = 192,
+};
+
 static void rk8xx_shutdown(struct i2c_client *client)
 {
 	struct rk808 *rk808 = i2c_get_clientdata(client);
@@ -727,6 +757,18 @@ static int rk808_probe(struct i2c_client *client,
 	if (of_property_read_bool(np, "rockchip,system-power-controller")) {
 		rk808_i2c_client = client;
 		pm_power_off = rk808_pm_power_off;
+
+		switch (rk808->variant) {
+		case RK809_ID:
+		case RK817_ID:
+			ret = register_restart_handler(&rk808_restart_handler);
+			if (ret)
+				dev_warn(&client->dev, "failed to register restart handler, %d\n", ret);
+			break;
+		default:
+			dev_dbg(&client->dev, "pmic controlled board reset not supported\n");
+			break;
+		}
 	}
 
 	return 0;
@@ -749,6 +791,8 @@ static int rk808_remove(struct i2c_client *client)
 	if (pm_power_off == rk808_pm_power_off)
 		pm_power_off = NULL;
 
+	unregister_restart_handler(&rk808_restart_handler);
+
 	return 0;
 }
 
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
