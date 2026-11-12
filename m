Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39E1606A89D
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 18:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MBVNU9tu;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.a=rsa-sha256 header.s=Intel header.b=axtWnStn
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bjfFd4iCwBnmcHfviYZM7eLtOtKB4+gWoI47va6a6jA=; b=MBVNU9tuqtouHD1XYpPeYGQaFl
	VMPLUIRfjIZ9A+mt4h80XYzRGkeIAl1fOAiJOG1fPeW4/aCEVfwBc9VIwmNdVO0hOpFbTqnppzObA
	t/dPFb1K3Nr1UudOG373kq3UFBFkvkQIgrZv19GBKTccp0Mc/QFFyekB2TxrFblmnhX1J57lKF+Vl
	7l1jr+6kFrn4yXAQhO+KN/2VCGe8+gT6HwBMaPU4vNssVvm0bxCplpWe6Bb+JA5d7eAaKKrswUwnf
	ggmoqvS+yLIwpumUr/UijylCKV6yOu9dWX7oGvEnM39Rz1vK59/K/i1DF+R0uxIrp+BFllrnyXRfL
	Vklf6EFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZaw-0000000As9Q-1CgI;
	Thu, 12 Nov 2026 18:32:22 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRZat-0000000As8V-308p
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 18:32:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1794508340; x=1826044340;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=6II4ZThJGq3dR8oKhWLJPD70EGoV0mqzUUJP+s30b9s=;
  b=axtWnStny04glvf4i9VLRUjqKyPQyA8PnPXIDD+fO9TPOC85eaJgl4as
   sIcgbAbGTBdE7rX7bBNRvTsI1BlHhz24ZLs/TtmJOjg4FbcUdA2c8WiK/
   s1mQ/AR6YjVON3zMOez37HHqrkIRjqXBnsFTO6C/oTCRhqCTSkFDC7jZy
   0OuQybYYkjlu7Lmo4LgCt3ncNWVjLKmO0a4S/ql61NMHOfI+k/EjEhJuV
   y6tHzPqkCX8F3obERJxpA07snzRsS/b1iyLbGdMpLwZBFJ5twA1M16Azg
   i7nA/Uw+3oJvpZDMORcjWXbza5L4AnrXuAY/0We68afsSXLMrhL+uH1eI
   w==;
X-CSE-ConnectionGUID: n+KI1hQHSGyaETrMQeDaLg==
X-CSE-MsgGUID: 5KpC2hSdRkermU8Ldgxtrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11964"; a="3347784"
X-IronPort-AV: E=Sophos;i="6.27,210,1787036400"; 
   d="scan'208";a="3347784"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2026 10:32:20 -0800
X-CSE-ConnectionGUID: IfaXPzcmR/KbcV982RD93g==
X-CSE-MsgGUID: xSF2KndPTQm8yyiMP4y72g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.27,210,1787036400"; 
   d="scan'208";a="8618134"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO mdjait-mobl.intel.com) ([10.245.244.103])
  by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2026 10:32:18 -0800
From: Mehdi Djait <mehdi.djait@linux.intel.com>
To: michael.riesch@collabora.com
Cc: linux-media@vger.kernel.org,
	paul.elder@ideasonboard.com,
	daniel@makrotopia.org,
	linux-rockchip@lists.infradead.org,
	Mehdi Djait <mehdi.djait@linux.intel.com>,
	stable@vger.kernel.org
Subject: [PATCH v1 1/2] media: rockchip: rkcif: Don't reset the hardware in runtime suspend
Date: Thu, 12 Nov 2026 19:32:07 +0100
Message-ID: <20261112183208.2688580-2-mehdi.djait@linux.intel.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261112183208.2688580-1-mehdi.djait@linux.intel.com>
References: <20261112183208.2688580-1-mehdi.djait@linux.intel.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_103219_838172_FFD7CE94 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -4.2 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The reset in the runtime suspend also resets the VICAP IOMMU.

When the IOMMU driver accesses the IOMMU registers inside the delay window
between the assert and deassert, e.g. in rk_iommu_zap_lines() to shootdown
IOTLB entries, the system hangs.

Drop the reset and the now unused reset control.

Fixes: f53fb31a3889 ("media: rockchip: add driver for the rockchip camera interface")
Cc: stable@vger.kernel.org
Signed-off-by: Mehdi Djait <mehdi.djait@linux.intel.com>
---
 .../media/platform/rockchip/rkcif/rkcif-common.h  |  1 -
 drivers/media/platform/rockchip/rkcif/rkcif-dev.c | 15 ---------------
 2 files changed, 16 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-common.h b/drivers/media/platform/rockchip/rkcif/rkcif-common.h
index 4d9211ba9bda..38208e8b7b2d 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-common.h
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-common.h
@@ -237,7 +237,6 @@ struct rkcif_device {
 	struct clk_bulk_data clks[RKCIF_CLK_MAX];
 	unsigned int clks_num;
 	struct regmap *grf;
-	struct reset_control *reset;
 	void __iomem *base_addr;
 
 	struct rkcif_interface interfaces[RKCIF_IF_MAX];
diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-dev.c b/drivers/media/platform/rockchip/rkcif/rkcif-dev.c
index be3a174b9aab..dceabee2ecd6 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-dev.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-dev.c
@@ -10,7 +10,6 @@
  */
 
 #include <linux/clk.h>
-#include <linux/delay.h>
 #include <linux/interrupt.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
@@ -18,7 +17,6 @@
 #include <linux/of_graph.h>
 #include <linux/of_platform.h>
 #include <linux/pm_runtime.h>
-#include <linux/reset.h>
 
 #include <media/v4l2-fwnode.h>
 #include <media/v4l2-mc.h>
@@ -201,10 +199,6 @@ static int rkcif_probe(struct platform_device *pdev)
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to get clocks\n");
 
-	rkcif->reset = devm_reset_control_array_get_exclusive(dev);
-	if (IS_ERR(rkcif->reset))
-		return PTR_ERR(rkcif->reset);
-
 	rkcif->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
 						     "rockchip,grf");
 	if (IS_ERR(rkcif->grf))
@@ -273,15 +267,6 @@ static int rkcif_runtime_suspend(struct device *dev)
 {
 	struct rkcif_device *rkcif = dev_get_drvdata(dev);
 
-	/*
-	 * Reset CIF (CRU, DMA, FIFOs) to allow a clean resume.
-	 * Since this resets the IOMMU too, we cannot issue this reset when
-	 * resuming.
-	 */
-	reset_control_assert(rkcif->reset);
-	udelay(5);
-	reset_control_deassert(rkcif->reset);
-
 	clk_bulk_disable_unprepare(rkcif->clks_num, rkcif->clks);
 
 	return 0;
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
