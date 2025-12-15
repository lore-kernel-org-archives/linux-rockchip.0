Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54765D5B857
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 17:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c/E3Rnj2FA8BGHx6jOnhCn002AS+yPaHBba4D9Iid7U=; b=JUe5hAhXigSt3X
	GgBlLNlJdfual4WEEe0d2ELv4/jpNaqDI0K3zT1xFVEnoNSZYNhNQwEn2NPYAWn328C/zk7xjO1XK
	ne8kkEAwqurkfa/OCKeqcmt/4Gdq0CzkYU7E2rIB0Zul8a6jeOYm8jyWx7Dq7VwV49v68s6t+atA3
	gXQRaRmOuwzEYSji0gquuqAdvPed0tHGbTtiPvjZxZEjzXvZXsyLYrhOsPcGgIvogO9qS7vest2v0
	GbqYCxRp+PsZQ7LhEjPgYSbZe/YF3F2yMERcaWr7EVHFVrgU+xSYbRsh++dYsGPDmQ3/7ui2r9StH
	6rTtDAbkfhkaAd+Re6Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVC3i-000000042wG-0A1J;
	Mon, 15 Dec 2025 17:08:30 +0000
Received: from smtp-8fa9.mail.infomaniak.ch ([2001:1600:7:10::8fa9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVC3f-000000042vn-0aQL
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Dec 2025 17:08:28 +0000
Received: from smtp-4-0001.mail.infomaniak.ch (smtp-4-0001.mail.infomaniak.ch [10.7.10.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4dVRN82ltkzPZS;
	Mon, 15 Dec 2025 18:08:24 +0100 (CET)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4dVRN61zzfzF7B;
	Mon, 15 Dec 2025 18:08:22 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Mon, 15 Dec 2025 18:07:56 +0100
Subject: [PATCH] accel/rocket: factor out code with find_core_for_dev in
 rocket_remove
MIME-Version: 1.0
Message-Id: <20251215-rocket-reuse-find-core-v1-1-be86a1d2734c@cherry.de>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MQQqDMBBG4avIrDtgQkXxKsWFTn51EJIysVIQ7
 25w+S3eOynDFJn66iTDoVlTLHCvimQd4wLWUEy+9o3zrmFLsmFnwy+DZ42BJRm4g0wtgn/LOFG
 Jv4ZZ/8/4M1zXDRIOJDFoAAAA
X-Change-ID: 20251215-rocket-reuse-find-core-8ecb7ed24cab
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Oded Gabbay <ogabbay@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.3
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_090827_330863_660E1DEA 
X-CRM114-Status: GOOD (  12.07  )
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

There already is a function to return the offset of the core for a given
struct device, so let's reuse that function instead of reimplementing
the same logic.

There's one change in behavior when a struct device is passed which
doesn't match any core's. Before, we would continue through
rocket_remove() but now we exit early, to match what other callers of
find_core_for_dev() (rocket_device_runtime_resume/suspend()) are doing.
This however should never happen. Aside from that, no intended change in
behavior.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 drivers/accel/rocket/rocket_drv.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index 5c0b63f0a8f00..28bf6c602f802 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -180,17 +180,18 @@ static int rocket_probe(struct platform_device *pdev)
 	return rocket_core_init(&rdev->cores[core]);
 }
 
+static int find_core_for_dev(struct device *dev);
+
 static void rocket_remove(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	int core = find_core_for_dev(dev);
 
-	for (unsigned int core = 0; core < rdev->num_cores; core++) {
-		if (rdev->cores[core].dev == dev) {
-			rocket_core_fini(&rdev->cores[core]);
-			rdev->num_cores--;
-			break;
-		}
-	}
+	if (core < 0)
+		return;
+
+	rocket_core_fini(&rdev->cores[core]);
+	rdev->num_cores--;
 
 	if (rdev->num_cores == 0) {
 		/* Last core removed, deinitialize DRM device. */

---
base-commit: a619746d25c8adafe294777cc98c47a09759b3ed
change-id: 20251215-rocket-reuse-find-core-8ecb7ed24cab

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
