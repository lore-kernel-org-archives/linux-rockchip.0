Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B158AC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 00:39:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A33AF6500A
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 00:39:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A33AF6500A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7u9+lIbsEG1qvvzSwQg/mR55sPvHPX80jVdtowfRap0=; b=CuvPE4ijNaRMkuRQNAgqhd1hz
	alsLFxVVfUrxoUrklnfxJzZuF+LwvnScwHbDCpTW8FPJVtWr2GuKu+WOw8wWR3bgR5wtelYOusQVe
	zqb5h9d8B11PKTVgAWpJLBrW7md8enHk1ZtN8GZ7DFUy8hfxdHI+z5Z9oHVjjZWTjxscW1Gtot9dU
	/fMvs0GVqa9aunW3VmQOv2UzAMoRsLrakjOA+hknPDnlGZ5hum0gSZxusblAJwInmEfhjUHSLE8MH
	Ym7OYhYn405sQiOZzQf3+3+xl9THVfi6Q7G/QgcscNOnZ33DUrfYFlUUuFlb4sPM6CnJsezrktUK1
	o1afS9CNw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHyV1-00B3BP-JI; Fri, 05 Mar 2021 00:39:24 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHyUv-00B35M-Qc
 for linux-rockchip@lists.infradead.org; Fri, 05 Mar 2021 00:39:20 +0000
Received: from localhost (unknown [192.168.167.224])
 by lucky1.263xmail.com (Postfix) with ESMTP id AF215D062C;
 Fri,  5 Mar 2021 08:39:11 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26158T139991629948672S1614904748986290_; 
 Fri, 05 Mar 2021 08:39:11 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ead45bf5cea6ce219f086aa68e0a5431>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org, heiko@sntech.de, catalin.marinas@arm.com,
 will@kernel.org
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 2/2] pinctrl: rockchip: make driver be tristate module
Date: Fri,  5 Mar 2021 08:39:07 +0800
Message-Id: <20210305003907.1692515-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210305003907.1692515-1-jay.xu@rock-chips.com>
References: <20210305003907.1692515-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_003918_174374_7C64873A 
X-CRM114-Status: GOOD (  12.18  )
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

Make pinctrl-rockchip driver to be tristate module, support to build as
a module, this is useful for GKI.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/Kconfig            |  2 +-
 drivers/pinctrl/pinctrl-rockchip.c | 13 +++++++++++++
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index bf88aac7bcc6..04d1bd8b8d83 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -208,7 +208,7 @@ config PINCTRL_OXNAS
 	select MFD_SYSCON
 
 config PINCTRL_ROCKCHIP
-	bool
+	tristate "Rockchip gpio and pinctrl driver"
 	depends on OF
 	select GPIOLIB
 	select PINMUX
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index aa1a1c850d05..70dc03af5699 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -16,10 +16,12 @@
  */
 
 #include <linux/init.h>
+#include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/io.h>
 #include <linux/bitops.h>
 #include <linux/gpio/driver.h>
+#include <linux/of_device.h>
 #include <linux/of_address.h>
 #include <linux/of_irq.h>
 #include <linux/pinctrl/machine.h>
@@ -4256,3 +4258,14 @@ static int __init rockchip_pinctrl_drv_register(void)
 	return platform_driver_register(&rockchip_pinctrl_driver);
 }
 postcore_initcall(rockchip_pinctrl_drv_register);
+
+static void __exit rockchip_pinctrl_drv_unregister(void)
+{
+	platform_driver_unregister(&rockchip_pinctrl_driver);
+}
+module_exit(rockchip_pinctrl_drv_unregister);
+
+MODULE_DESCRIPTION("ROCKCHIP Pin Controller Driver");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:pinctrl-rockchip");
+MODULE_DEVICE_TABLE(of, rockchip_pinctrl_dt_match);
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
