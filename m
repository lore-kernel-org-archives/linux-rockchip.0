Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3E1BEE6454
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 07:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NnECqOspCBH+PtEozhFvh8sFuIRnfCWoYKgteec7RTI=; b=KhKi8HxeNTZaV5
	JUjSfxKEnX386KMZAh5D1ld2s75cqjOAkA+duofkZBHS7f0hmdjiQVjNtD/Xph6VM1cTe/mBgrSo4
	UxeKHZyjdgSxalDxbo9zHrO3utd1huCJYCHrLHVxauYXmkNkGW35VvrsMYN2/t8+QsL8bYGLY3lu7
	bBevtat7i+9dS5ZWC0P6/pYDQAyPkkawdSDl3jolfHx5SSosWnF7rkSMkyHcdmpCB55B8c68H5+pS
	qCdcEnGyLCGY2rnbDVBeatOTkn1yDjF6iBTwy3rIqCVC4OFvzACFosvexjcGURvJ8XzVJlnS/WQWe
	mTady1KXjQzaL9JJF4OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soeHU-0000000CAjs-0nJo;
	Thu, 12 Sep 2024 07:30:20 +0000
Received: from mail-m49206.qiye.163.com ([45.254.49.206])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soeE1-0000000CA9h-2mfo;
	Thu, 12 Sep 2024 07:26:47 +0000
DKIM-Signature: a=rsa-sha256;
	b=emeihT/A1S3qEp2p88WokDWPh3qpTY20t0wwpIypbwJb9ZX3DZuSfN14eKoaWE2ji0FCZUhPQrreWv29xzqBmu4j4XYCfRPcGo/jU1Uw3ePlDWOVcAYvUh4DuK59Y0Ktotu6HyOIPetE79uoRw/PMVU93OQZ37EGBA0pBORqd6E=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=3A7Xdz2lLn+EifRk1ghow9aL8DdOLauW53N67ioG3Hg=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 271FB900D34;
	Thu, 12 Sep 2024 15:26:23 +0800 (CST)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Subject: [PATCH] mmc: dw_mmc: rockchip: Keep controller working for card detect
Date: Thu, 12 Sep 2024 15:26:14 +0800
Message-Id: <20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkkeTVYYTBoaGE9DSEsfHhpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a91e520475303a3kunm271fb900d34
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ogw6Nyo6ITI1PywJTjUvNBMx
	Ai9PCSpVSlVKTElNSklOQkNPS0tPVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFISkNCNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_002646_212190_F4350738 
X-CRM114-Status: GOOD (  11.64  )
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

In order to make the SD card hotplug working we need the card detect
function logic inside the controller always working. The runtime PM will
gate the clock and the power domain, which stops controller working when
no data transfer happen.

So lets skip enable runtime PM when the card needs to detected by the
controller and the card is removable.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 drivers/mmc/host/dw_mmc-rockchip.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index b07190ba4b7a..df91205f9cd3 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -345,28 +345,39 @@ static int dw_mci_rockchip_probe(struct platform_device *pdev)
 	const struct dw_mci_drv_data *drv_data;
 	const struct of_device_id *match;
 	int ret;
+	bool use_rpm = true;
 
 	if (!pdev->dev.of_node)
 		return -ENODEV;
 
+	if (!device_property_read_bool(&pdev->dev, "non-removable") &&
+	     !device_property_read_bool(&pdev->dev, "cd-gpios"))
+		use_rpm = false;
+
 	match = of_match_node(dw_mci_rockchip_match, pdev->dev.of_node);
 	drv_data = match->data;
 
 	pm_runtime_get_noresume(&pdev->dev);
 	pm_runtime_set_active(&pdev->dev);
-	pm_runtime_enable(&pdev->dev);
-	pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
-	pm_runtime_use_autosuspend(&pdev->dev);
+
+	if (use_rpm) {
+		pm_runtime_enable(&pdev->dev);
+		pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
+		pm_runtime_use_autosuspend(&pdev->dev);
+	}
 
 	ret = dw_mci_pltfm_register(pdev, drv_data);
 	if (ret) {
-		pm_runtime_disable(&pdev->dev);
-		pm_runtime_set_suspended(&pdev->dev);
+		if (use_rpm) {
+			pm_runtime_disable(&pdev->dev);
+			pm_runtime_set_suspended(&pdev->dev);
+		}
 		pm_runtime_put_noidle(&pdev->dev);
 		return ret;
 	}
 
-	pm_runtime_put_autosuspend(&pdev->dev);
+	if (use_rpm)
+		pm_runtime_put_autosuspend(&pdev->dev);
 
 	return 0;
 }
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
