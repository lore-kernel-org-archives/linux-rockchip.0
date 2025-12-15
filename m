Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7703CD5B858
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 16:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IF8IqH9ewEhOwKMF6bc2xVNZsYec6pnoCtAmJ/l/XQc=; b=Q2lUrMva+2q5Hn
	x1Vipn+nwitHAMbqVVfqR4374veCI5V3Zizz2LIoLz9QQqItOdDDZMfap9XE1lzMUkEz8/LZWS9wc
	DoVl3ywkx+6lLCkC7ZW68UF9APcWppaz278lOmLFsBN56QX9Ecos3eIcFQYn76cH3cxk8Bxbjd7J3
	TEHgYPGiCD/1na2uqkTNT1RU6dxLDzzNeSyRPBpkco2I8K2ekDEJWa/6PlLRnhPsl+pEc/1fmUdvf
	+Bw6Gv9Dw4sb+lmGVsVMXTDBaf++JbXtctEaIePnM7ctxiUZFFnLp3Sij2P+IYLfTvDBN2RPalhoA
	aGeTzDgV4fyJwH8ubZEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVBYz-00000004039-0xqa;
	Mon, 15 Dec 2025 16:36:45 +0000
Received: from smtp-8fab.mail.infomaniak.ch ([83.166.143.171])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVBYu-00000003zzP-1jp0
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Dec 2025 16:36:44 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (smtp-4-0000.mail.infomaniak.ch [10.7.10.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4dVQgR2whbz6Mb;
	Mon, 15 Dec 2025 17:36:35 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4dVQgQ5X8Nz9pt;
	Mon, 15 Dec 2025 17:36:34 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Mon, 15 Dec 2025 17:36:15 +0100
Subject: [PATCH 2/2] accel/rocket: fix unwinding in error path in
 rocket_probe
MIME-Version: 1.0
Message-Id: <20251215-rocket-error-path-v1-2-eec3bf29dc3b@cherry.de>
References: <20251215-rocket-error-path-v1-0-eec3bf29dc3b@cherry.de>
In-Reply-To: <20251215-rocket-error-path-v1-0-eec3bf29dc3b@cherry.de>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Oded Gabbay <ogabbay@kernel.org>, 
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_083640_597847_0C0C4BE7 
X-CRM114-Status: GOOD (  16.85  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

When rocket_core_init() fails (as could be the case with EPROBE_DEFER),
we need to properly unwind by decrementing the counter we just
incremented and if this is the first core we failed to probe, remove the
rocket DRM device with rocket_device_fini() as well. This matches the
logic in rocket_remove(). Failing to properly unwind results in
out-of-bounds accesses.

Fixes: 0810d5ad88a1 ("accel/rocket: Add job submission IOCTL")
Cc: stable@vger.kernel.org
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Note that this means that, technically, the first core (in HW) may not
be the first core in the kernel (if EPROBE_DEFER is returned by the
first core's probe for example). This may be a real issue if we rely on
this. E.g. I see the iommu domain is set in in rocket_open() with
rocket_iommu_domain_create(rdev->cores[0].dev) which could be expecting
the main core (but it isn't clear from the commit logs, so maybe all
cores may be totally independent). In any case, this patch is keeping
the status quo.
---
 drivers/accel/rocket/rocket_drv.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index 5c0b63f0a8f00..f6ef4c7aeef11 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -13,6 +13,7 @@
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 
+#include "rocket_device.h"
 #include "rocket_drv.h"
 #include "rocket_gem.h"
 #include "rocket_job.h"
@@ -158,6 +159,8 @@ static const struct drm_driver rocket_drm_driver = {
 
 static int rocket_probe(struct platform_device *pdev)
 {
+	int ret;
+
 	if (rdev == NULL) {
 		/* First core probing, initialize DRM device. */
 		rdev = rocket_device_init(drm_dev, &rocket_drm_driver);
@@ -177,7 +180,17 @@ static int rocket_probe(struct platform_device *pdev)
 
 	rdev->num_cores++;
 
-	return rocket_core_init(&rdev->cores[core]);
+	ret = rocket_core_init(&rdev->cores[core]);
+	if (ret) {
+		rdev->num_cores--;
+
+		if (rdev->num_cores == 0) {
+			rocket_device_fini(rdev);
+			rdev = NULL;
+		}
+	}
+
+	return ret;
 }
 
 static void rocket_remove(struct platform_device *pdev)

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
