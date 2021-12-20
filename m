Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90631C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 17:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bUfZLZxMwzNL0Ip14ecDfDjdC4PO8/HIGeTsEfBUZBg=; b=CDpQbr/W9Lr/rF
	KWyCg4O2iESS8wSPb44l7W5AW3imSsZRTFNW3v2acda4p9yIHAS9amiUHAmwGdbkNfvqux+RskTf9
	LGth9eS6EtMko95dsTmS1B6UN5DivYMuIa8aySIUo9jn88xVgXO48cAY+bfHjlFyppFmr+pAeP3wY
	t4hVvab61oukRlQqU7lM90Eqqgy0C9qvlRjk514bXP6dCVzQg4o4brI4CLAWzLGCkSyMroAy26Uh8
	RX/lkfc4YgOYgQxnACuIUDnSMYymtzqQI/ZyNTXYsepSydFNXdZkMhY30Mlx0Fs7KzcueFKq+P+t5
	1IhKr0fxLWbg/1JTOSpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzM7P-003Sn5-1f; Mon, 20 Dec 2021 17:06:35 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzM7M-003Sle-1d
 for linux-rockchip@lists.infradead.org; Mon, 20 Dec 2021 17:06:33 +0000
Received: by mail-qt1-x833.google.com with SMTP id p19so10342545qtw.12
 for <linux-rockchip@lists.infradead.org>; Mon, 20 Dec 2021 09:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xGYvrUtcghNdhEHNpV4zTbBKAn05WIfjj570cL025P4=;
 b=kshNHzUY2obZ0uKu7oBvpu8+FHTQ+GFaNQpgHRiCva7ekM+sbtJug+bdhtlD3Gy7Ny
 rZulrb7YtimRUMrZGcAmi0HK5LCl9vSxwYIfcE4+c2k2/6dhJxmeNNdWf7gEpdpojm92
 h5k3S3KdCNu+6H5DMyK2/GKZmhoNMRsdskSiswvRma/r+5kVDPxi3AHwlilMi9NAdP5E
 p+PZNk3ihYYIZoE5+EPKa+zZwLjOnxyunAXmI6krxBZ9VErCqWRKfHPFWg5NaxqCHbnv
 7jwJP8kmhl68sXXXMt7ViIaQ2EDlc+xRqneqdfCqt638viro9NGiK4lxbw3RMRIU1wvN
 W3NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xGYvrUtcghNdhEHNpV4zTbBKAn05WIfjj570cL025P4=;
 b=rTFKhL9LWiI3UgYLe1SlLk8awOvar70ox8t/oC3CUbHbMNPO3vWRPLEowR7MuEjCPI
 EDNvRnKbTL5LOthXMz66D3hmm+hLjQNP6oRVHL6QqpRg2XZrD4xoTCPprfpbFzjk5wM+
 Zv/eWXXv+SM/YvFxpyAh7VxHpfuBsy1lzvNYlMjwMfFNNCMTZhhdjka++T8xtr5+kQ47
 HzKEoN6AwsshMgEFWi+nmnyjP3dHyz4/Ov4ueOIUXvTuX5qksjUwXe8JAK28LsefqMSU
 NLeZuYI4LUM2Z1vCXX4FpfHGG4vjdbkIbL9p5ZPfuQud3599ec7Eg0V/9WfpTpEgsEhU
 hIsA==
X-Gm-Message-State: AOAM531ImT0QMoNFMUL8psw40HiPhFx9yaU4FV030Rw22w4J0b7tiExA
 QHd88itK+GK9K9b/2nNQI9YnDpKxrdKX3w==
X-Google-Smtp-Source: ABdhPJxNkuI9f9OKfjxbNW1p9h3QXWO/lbDR/xtZaS/oFHRgHuUq/TX/xNDCJ8JMRMR67znY4Glo1A==
X-Received: by 2002:ac8:5742:: with SMTP id 2mr13245137qtx.554.1640019990549; 
 Mon, 20 Dec 2021 09:06:30 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id y73sm11296270qkb.113.2021.12.20.09.06.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Dec 2021 09:06:30 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Dmitry Osipenko <digetx@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, linux-kernel@vger.kernel.org
Subject: [PATCH v3] mfd: rk808: add reboot support to rk808.c
Date: Mon, 20 Dec 2021 12:06:23 -0500
Message-Id: <20211220170624.1009898-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_090632_128244_D5B84415 
X-CRM114-Status: GOOD (  20.98  )
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
