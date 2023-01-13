Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD175C54EBD
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jan 2023 06:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wI4IJ2gVs5A8b+Bx7l1SZG34U87pEuYTkSj4bW/Y2jM=; b=CVkCpE+kctlmfj
	yJCTQqq7zF3fflRn/V5MlFIctAMA9byjr9QGTh2t4meyKZDVXQ9/P4VecAWftJf5N+bgH9kPh3Srw
	BUHjmejcGbQuYGofhayCcTK4UrSzDzuVOmSqbHv4nqG2WENHRGwW9h5VTA5SnH5dS73+w3eC295xy
	Y5jc45Lo1ibvAbZs6369A/yvJIAbLlcz+Wrn7VNX+7dTAQxDaLeMXak2JE2Hv9eo+hY53cuWmvuTo
	b5xWEvvoEcbu2RNQBKYVofe0EV6M1KIPlb6muxA8MsxGba8noKyed57IvUF733NzgJESssP4yRU4f
	3ov3XdfdBFXArtJy4aCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGDoM-000s15-Gq; Fri, 13 Jan 2023 06:45:10 +0000
Received: from [2601:1c2:d80:3110::9307] (helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGDoC-000rxk-Rg; Fri, 13 Jan 2023 06:45:00 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] thermal: rockchip: fix kernel-doc warnings
Date: Thu, 12 Jan 2023 22:45:00 -0800
Message-Id: <20230113064500.16103-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
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

Don't use "/**" to begin non-kernel-doc comments.
Convert one function description to kernel-doc format.
Prevents these kernel-doc warnings:

drivers/thermal/rockchip_thermal.c:64: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
 * The max sensors is two in rockchip SoCs.
drivers/thermal/rockchip_thermal.c:179: warning: expecting prototype for TSADC Sensor Register description(). Prototype was for TSADCV2_USER_CON() instead
drivers/thermal/rockchip_thermal.c:1342: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
 * Reset TSADC Controller, reset all tsadc registers.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Amit Kucheria <amitk@kernel.org>
Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-pm@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
---
 drivers/thermal/rockchip_thermal.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff -- a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -60,7 +60,7 @@ enum adc_sort_mode {
 
 #include "thermal_hwmon.h"
 
-/**
+/*
  * The max sensors is two in rockchip SoCs.
  * Two sensors: CPU and GPU sensor.
  */
@@ -169,7 +169,7 @@ struct rockchip_thermal_data {
 	enum tshut_polarity tshut_polarity;
 };
 
-/**
+/*
  * TSADC Sensor Register description:
  *
  * TSADCV2_* are used for RK3288 SoCs, the other chips can reuse it.
@@ -1339,7 +1339,7 @@ rockchip_thermal_register_sensor(struct
 }
 
 /**
- * Reset TSADC Controller, reset all tsadc registers.
+ * rockchip_thermal_reset_controller - Reset TSADC Controller, reset all tsadc registers.
  * @reset: the reset controller of tsadc
  */
 static void rockchip_thermal_reset_controller(struct reset_control *reset)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
