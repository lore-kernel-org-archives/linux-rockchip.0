Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9C47C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 05:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VtixvX2SQrDPQpVdrLSGsgqss2C2mXONHqLsMAjplNQ=; b=I0TuhajvzBkQGM
	l1/9gUqGgYt4CokwgsPXGt+mz3L2+EuuF+j6LJBBjhkk7aSc4XWz78KnR3o8H+XpYXCtcfRUvK2Qc
	7YFHLsFTL3r1sa85/aXrP0S5M7tT1+SMqW3wuLlTMmxS6RbZj6rTbfrx6Zpp21UkX5jYiymaiLKJy
	ggWuAsqM3uCAhUB9PIhbcFz/+DpmS4OiSlz0vyAni/msihEvdEYQxu9ZEYloUTiwiSA9cBdVW+kkz
	DJUDtZp9mpD8j0rdLzRXioP5YHT0Sc7PBZynAz8mHyZ0qilfGNiwBVO2A/hyh+2++Tv1oqh0/NVmR
	/tmcMlp3p+aHPDHoPbLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od2zQ-008Olv-73; Tue, 27 Sep 2022 05:18:40 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od2z9-008OiR-FB; Tue, 27 Sep 2022 05:18:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
	Subject:Cc:To:From:Content-Type:From:Reply-To:Subject:Content-ID:
	Content-Description:In-Reply-To:References:X-Debbugs-Cc;
	bh=DsO5pFYkK1Xjq0k4TZbE63CczW4L418+61sZYoyHZ0A=; b=ZYWzLATh11Vhw8dI5JY+sxclR4
	t9mzZ7yB4GDSEwIkS6EpkRp1dG8XH9E6RPR1qkObD7rwY5M7nMrh/9NZUUMydOQ3htnDyCh4CY+xQ
	vYojP4GShxCLH3zwcKGfZOqqFwYALkS673E738Nvg6G6m2e2wpLBVj8636miZpxkM8qsJzaHC2vc/
	m0G9MHNfjWcIs9zj3Ob0t0wSYM1o5f6devt2wg22+Wv5dCqmyjhrPkfHO59CBPweTOHhnTS6coOB2
	csxR3EYrBC+BLpT3nS9ddPUFyhwsTCDLYzAYZvFHIjqFi+3DOa48992br4C/qk5EWlq8SxSvkQMWj
	u4LX+rJg==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1od2yv-00BU7b-AK; Tue, 27 Sep 2022 07:18:09 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1od2yu-000Doj-1P;
	Tue, 27 Sep 2022 07:18:08 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Peter Geis <pgwipeout@gmail.com>,
	Aurelien Jarno <aurelien@aurel32.net>
Subject: [PATCH] phy: rockchip-snps-pcie3: only look for rockchip,pipe-grf on rk3588
Date: Tue, 27 Sep 2022 07:17:52 +0200
Message-Id: <20220927051752.53089-1-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_221823_947624_F19C939D 
X-CRM114-Status: GOOD (  11.34  )
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

The rockchip,pipe-grf property is only used on rk3588, but not on
rk3568. Therefore this property is not present on rk3568 devices,
leading to the following message:

  rockchip-snps-pcie3-phy fe8c0000.phy: failed to find rockchip,pipe_grf regmap

Fix that by only looking for this property on rk3588.

Fixes: 2e9bffc4f713d ("phy: rockchip: Support PCIe v3")
Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index 1917edda6b47..1dc12eb8dfd3 100644
--- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -257,10 +257,15 @@ static int rockchip_p3phy_probe(struct platform_device *pdev)
 		return PTR_ERR(priv->phy_grf);
 	}
 
-	priv->pipe_grf = syscon_regmap_lookup_by_phandle(dev->of_node,
-							 "rockchip,pipe-grf");
-	if (IS_ERR(priv->pipe_grf))
-		dev_info(dev, "failed to find rockchip,pipe_grf regmap\n");
+	if (of_device_is_compatible(np, "rockchip,rk3588-pcie3-phy")) {
+		priv->pipe_grf =
+			syscon_regmap_lookup_by_phandle(dev->of_node,
+							"rockchip,pipe-grf");
+		if (IS_ERR(priv->pipe_grf))
+			dev_info(dev, "failed to find rockchip,pipe_grf regmap\n");
+	} else {
+		priv->pipe_grf = NULL;
+	}
 
 	priv->num_lanes = of_property_read_variable_u32_array(dev->of_node, "data-lanes",
 							     priv->lanes, 2,
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
