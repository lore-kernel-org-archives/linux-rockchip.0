Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1673C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Feb 2022 20:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZUXx+V3NLgPEN0JsynFV4MwfAXzoa//mRbROcDYhyl8=; b=c+oapGRySqorUf
	6rnPa5Jam6iQEd1EmNo7HCmscOnb+QQ+CzPZ4mSFVEAPfeR45v+HyPxTWPf7deiFAfFet8P+fkCOM
	wD/Bbiyl5TptAibhg3iuH2H9/FYZ0oD/eLGLF9d1ZJ0oz9iQ4cS0b7/mOgDeWUJabyN+J0vMGwtoY
	wy9rrhRXe7dDZHDVnr6dOZU5yNr4uNLQv6IJXZyX7LWwDEnwmI8r2xYXDJ0DspV7LAOIoKaVRRwOa
	7CmYxc0yfBa6YtTIkfZdW2Lbjynds8gOPyStNy4HokHIV9WV171M5qEg/INv3mQIUJsH7O5tPtmbk
	PC96uhQksXKJ2bPZBYQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nG514-005Nzj-2O; Fri, 04 Feb 2022 20:17:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nG50j-005Nw3-TF; Fri, 04 Feb 2022 20:16:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB84911D4;
 Fri,  4 Feb 2022 12:16:46 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.40])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AFA843F718;
 Fri,  4 Feb 2022 12:16:45 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: joro@8bytes.org,
	will@kernel.org
Cc: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH] iommu/msm: Use standard driver registration
Date: Fri,  4 Feb 2022 20:16:40 +0000
Message-Id: <05ca5e1b29bdd350f4e20b9ceb031a2c281e23d2.1644005728.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220204_121650_026382_8F700A54 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
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

It's been a long time since there was any reason to register IOMMU
drivers early. Convert to the standard platform driver helper.

CC: Andy Gross <agross@kernel.org>
CC: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/msm_iommu.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/iommu/msm_iommu.c b/drivers/iommu/msm_iommu.c
index 3a38352b603f..06bde6b66732 100644
--- a/drivers/iommu/msm_iommu.c
+++ b/drivers/iommu/msm_iommu.c
@@ -831,16 +831,4 @@ static struct platform_driver msm_iommu_driver = {
 	.probe		= msm_iommu_probe,
 	.remove		= msm_iommu_remove,
 };
-
-static int __init msm_iommu_driver_init(void)
-{
-	int ret;
-
-	ret = platform_driver_register(&msm_iommu_driver);
-	if (ret != 0)
-		pr_err("Failed to register IOMMU driver\n");
-
-	return ret;
-}
-subsys_initcall(msm_iommu_driver_init);
-
+builtin_platform_driver(msm_iommu_driver);
-- 
2.28.0.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
