Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 488A9C28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 06:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mCpt9RJQaq4X5hPfaw50vyBBwb6d2dxKm18+osTkMHQ=; b=ohDEQZ8fDi13GA
	kLfcE1c0/KOqGEODLeEZVMilVONqIETr2bywWjo2ABVDzXY0RSfOfFhRKPU9Dhlcaw0NP1YGwyjpO
	mKrp2ySndTlS3eltAEAXgEwYzNov19V250XX3ILLeeH5f4Pr88LzDfikvTk+EGEKuKNsI5r/3meFe
	+uGZ0km7l/YXaXh672z25TQuE4tsYkOy69EHADipHkXPIcOjR0u6J2cdtqHFIIRg/z4ccJCB4ytc4
	umU6ugGvc7dBZGAvVTtt3qszaX2EW/aRUGGq53G2DAHRSSWB2twLd2kcf55zCo4kOEzwAJu+vJjvp
	9ZAoIb295rBFw8HXd/lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsFSV-00000007Zvk-349L;
	Wed, 12 Mar 2025 06:20:51 +0000
Received: from mail-m3285.qiye.163.com ([220.197.32.85])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsFSS-00000007Zv9-2bET;
	Wed, 12 Mar 2025 06:20:50 +0000
Received: from xxm-vm.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id dfe6f8d0;
	Wed, 12 Mar 2025 14:20:38 +0800 (GMT+08:00)
From: Simon Xue <xxm@rock-chips.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	linux-iio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Simon Xue <xxm@rock-chips.com>
Subject: [PATCH] iio: adc: rockchip: Fix clock initialization sequence
Date: Wed, 12 Mar 2025 14:20:16 +0800
Message-Id: <20250312062016.137821-1-xxm@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRkeT1ZNS0xPTx8ZTR9PQkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9589031fa403ackunmdfe6f8d0
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OT46HSo4MTJLTR4tHRMaFxkL
	Ai0wCytVSlVKTE9KTE1LT0hCSUpOVTMWGhIXVQMDFjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lBWU5D
	VUlJVUxVSkpPWVdZCAFZQUpNS043Bg++
DKIM-Signature: a=rsa-sha256;
	b=MKjocUGQwhTcya7uy6KiltggFcjzV3Phkl397oA9r3ld7SCj3DgZJUuK7XTS5OQCkfNAa472trd9GRbCX4g+Kda82/uMUT2FPz5UWNMCOpQCCB9HZGu5ExIvmYdCH/NVrm+gaIbXHAims7r/TyU4Ji/kpo3QOBlLJ3GYw+uSlpc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=vy+9eAm5AK9uncKvL50rH3d9NuCi+vykIYrh7yJCQns=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_232049_171796_3627368F 
X-CRM114-Status: GOOD (  11.40  )
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

clock_set_rate should be executed after devm_clk_get_enabled.

Fixes: 97ad10bb2901 ("iio: adc: rockchip_saradc: Make use of devm_clk_get_enabled")
Signed-off-by: Simon Xue <xxm@rock-chips.com>
---
 drivers/iio/adc/rockchip_saradc.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index a29e54754c8f..ab4de67fb135 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -480,15 +480,6 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	if (info->reset)
 		rockchip_saradc_reset_controller(info->reset);
 
-	/*
-	 * Use a default value for the converter clock.
-	 * This may become user-configurable in the future.
-	 */
-	ret = clk_set_rate(info->clk, info->data->clk_rate);
-	if (ret < 0)
-		return dev_err_probe(&pdev->dev, ret,
-				     "failed to set adc clk rate\n");
-
 	ret = regulator_enable(info->vref);
 	if (ret < 0)
 		return dev_err_probe(&pdev->dev, ret,
@@ -515,6 +506,14 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	if (IS_ERR(info->clk))
 		return dev_err_probe(&pdev->dev, PTR_ERR(info->clk),
 				     "failed to get adc clock\n");
+	/*
+	 * Use a default value for the converter clock.
+	 * This may become user-configurable in the future.
+	 */
+	ret = clk_set_rate(info->clk, info->data->clk_rate);
+	if (ret < 0)
+		return dev_err_probe(&pdev->dev, ret,
+				     "failed to set adc clk rate\n");
 
 	platform_set_drvdata(pdev, indio_dev);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
