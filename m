Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37014C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 19:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v+IVstAknPZg1g4nXnVGz+x742TJX0uqj8oU57mX2tw=; b=as8Byr2iiTiOCS
	Ga3/iq+odvaScr0o+YtPW7DDIwtZEunBlkDCAwwdZB49t7/CM4KGxC37MzCos9Oa22sU3V2sbHyDx
	j2UOtmINV9rni/YLLs10WQ6WqipT7BmHH7VS1NfaKaTXk3XsW4xLzdYDrWxBrnTz65MoD0GqWmngJ
	1nH1puHgQbga5iLxgk38Uo1cIi/FtpffpFIdR46fk8MLAHJ6m2ehn4a6egm+EWQwsNasXFE4Glwjp
	7X0iCcT0n9WVQ3fvE96bgvSxiv3Kj3ZhAliTDERbj0hGgOXVOFT7pTisncA7fq3oMSeAJM1NjC8QD
	DRIh5iAmbVyEsd9neHXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHWLq-00FRbY-KN; Tue, 08 Feb 2022 19:40:34 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHWLj-00FRZT-UQ
 for linux-rockchip@lists.infradead.org; Tue, 08 Feb 2022 19:40:32 +0000
Received: by mail-qt1-x82b.google.com with SMTP id t1so9662650qtq.13
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Feb 2022 11:40:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n8OOhMPiL2g7dZ4KQkAzRGSsEf6CgBqobcbl60qNN4I=;
 b=BeTGhE6kfd0itErFlri8GBsQfNcO5MBAbc8WM3Azl/dqzm1t2XjxXWIIfCnBDk695I
 vJUXwKjmJrN9G5ZHO1MbQeZ9HKP1JfgMwcyWYTOhyvKx3AJERs8yKkJVXRAXDCfp0wfl
 VfQOLBQlpzZVJoiOagcddSArbGYvEx+ENRBVHsVqQgLFUP0jiXqKuDk/AzTD+dV+lkdt
 MC2UpRUWl91kGu/Z5oX+oDMRMsMUvmLJbbBQTYoH57t6skU1ppG/NKckqMvj3cqwS+nX
 tX2bU2hjyPH+44PYtEb8yTk4kc8zfH2PdDG6rJ68ZHX4D+ypyE6Gd22G7CZ8vAIPHd+I
 fQsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n8OOhMPiL2g7dZ4KQkAzRGSsEf6CgBqobcbl60qNN4I=;
 b=ZUxr545B+zCLpPmtStfAh43uln7nxhDyNdFdt0NTzp7l/LbTOj5luDp2d7g6OmeInB
 DYbklVp04yuubcAwdrlyvHf9MpMZF/A8lHOian0r6V+YhcjPOInSfjhA+F8EIU4xaxoS
 yDqG8Tlx2rVDztJIqZyFhS8ptjf6LERghpFR69JUM9Yb6hKHlqZ1w2R1CuB0NBBsMLYs
 u7uc9MfYVQ2nhptFlH+aY8pASt2yKvy1PdpJ4J2KKMjUmgK25oNAK7aD42st5+OfH2kL
 LStd5YObDsuf4juQSkYBj/WO7lZy9fqkdXCvCYv+AHtgu0KQ7I5LM391b6/+ZNKbESbU
 +1IQ==
X-Gm-Message-State: AOAM5337rj49MvwMM2PIIuoPkhZmcqx4SKIqZ05rlTTJNpedqYZfEUpR
 RgYLf/imFfJqVT2TH5lDF6c=
X-Google-Smtp-Source: ABdhPJxHcmZ6eQPEwiU+PLQpJM+WPBGZxZkUYzZyCfh/jLWZpzXVb0zegpoDS8mpDGkRcBBSRM8gPQ==
X-Received: by 2002:ac8:578a:: with SMTP id v10mr4292435qta.14.1644349226236; 
 Tue, 08 Feb 2022 11:40:26 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id c78sm7167202qkg.42.2022.02.08.11.40.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 11:40:26 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Lee Jones <lee.jones@linaro.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-rockchip@lists.infradead.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Dmitry Osipenko <digetx@gmail.com>, linux-kernel@vger.kernel.org
Subject: [PATCH v5] mfd: rk808: add reboot support to rk808.c
Date: Tue,  8 Feb 2022 14:40:23 -0500
Message-Id: <20220208194023.929720-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_114028_033167_57593C64 
X-CRM114-Status: GOOD (  16.83  )
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
Acked-for-mfd-by: Lee Jones <lee.jones@linaro.org>
---
Changelog:
V5:
- Fix length of error print.

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
index b181fe401330..4142b638e5fa 100644
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
+				dev_warn(&client->dev, "failed to register rst handler, %d\n", ret);
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
