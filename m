Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBDC0C77B7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 02:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IufBG192vCCKB/58dh/9rUlKQNWSEmzdELikoRwKoZk=; b=iOh1batJyj7HXD
	Sn2no2iNw0cxlIj/0EukEBC8++NRrFtJuyWNw+P/B485vRbpK7FOqpcphWkFVqk5Lm12iLBpTa00m
	eC78FR2f+hGdW8aUx+KS56FR3lqB2WrEkYtWfDVapHCfFmtreivFjhjWsKbvpFmlCyQUI25NBgIdE
	VtbNwFRNbZxgxqqfCkSBLITePuaca1wjlw5lquQymZV4sUqYv5RUt/aJCDEtF/EUTCnc+yywURnfG
	9WLpqgUaxU7J+7uJcUHpHToXi8ArqWkcq301veDaivlFEo4FzaTGbvkT2v/77hp6tnC8AGx9WCWo/
	bgPulustpk22Ik6coYCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTWVA-00000001QOQ-4C3E;
	Mon, 23 Jun 2025 02:01:41 +0000
Received: from mail-m19731108.qiye.163.com ([220.197.31.108])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTWU3-00000001QJq-2nEk;
	Mon, 23 Jun 2025 02:00:33 +0000
Received: from xxm-vm.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 198a76e7e;
	Mon, 23 Jun 2025 10:00:24 +0800 (GMT+08:00)
From: Simon Xue <xxm@rock-chips.com>
To: joro@8bytes.org,
	will@kernel.org,
	heiko@sntech.de
Cc: robin.murphy@arm.com,
	iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	Simon Xue <xxm@rock-chips.com>
Subject: [PATCH v3] iommu/rockchip: prevent iommus dead loop when two masters share one IOMMU
Date: Mon, 23 Jun 2025 10:00:18 +0800
Message-Id: <20250623020018.584802-1-xxm@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250623010532.584409-1-xxm@rock-chips.com>
References: <20250623010532.584409-1-xxm@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0tMHVZMSkxNS01DSBgYSBlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a979a83e4cd03ackunm95adb0ad1ba41a5
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6K1E6SSo*FjE9Hi0jOBIhATkI
	PQ9PCz9VSlVKTE5LTU9PS0lOQkxOVTMWGhIXVQMDFjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lBWU5D
	VUlJVUxVSkpPWVdZCAFZQUlJTEw3Bg++
DKIM-Signature: a=rsa-sha256;
	b=MAHilJErUTQVecZJVotp/gw1fDA3axTx5qvIuwytoEuMZgBrHlkowpBfFodv0JzuAfkP/sqEvjMHB4pJArwoPlpg8uzZz8xWGdOpPdCklp1vfV0UKwdMuFEz6SjmH5glGyfGlY5BUcBmuo4pm2Ou+2SWAm3+T/J6EHZZoLpYV5E=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=NmfePvVvj/IGwECh3d25BxV8sGg50mGiW3x9goEC7jY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_190032_221082_C4D581AF 
X-CRM114-Status: GOOD (  10.02  )
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

When two masters share an IOMMU, calling ops->of_xlate during
the second master's driver init may overwrite iommu->domain set
by the first. This causes the check if (iommu->domain == domain)
in rk_iommu_attach_device() to fail, resulting in the same
iommu->node being added twice to &rk_domain->iommus, which can
lead to an infinite loop in subsequent &rk_domain->iommus operations.

Cc: <stable@vger.kernel.org>
Fixes: 25c2325575cc ("iommu/rockchip: Add missing set_platform_dma_ops callback")
Signed-off-by: Simon Xue <xxm@rock-chips.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>

v3:
   Add missing `Cc: stable@vger.kernel.org` in commit message.
   No functional changes.
v2:
   No functional changes.
---
 drivers/iommu/rockchip-iommu.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 22f74ba33a0e..e6bb3c784017 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1157,7 +1157,6 @@ static int rk_iommu_of_xlate(struct device *dev,
 		return -ENOMEM;
 
 	data->iommu = platform_get_drvdata(iommu_dev);
-	data->iommu->domain = &rk_identity_domain;
 	dev_iommu_priv_set(dev, data);
 
 	platform_device_put(iommu_dev);
@@ -1195,6 +1194,8 @@ static int rk_iommu_probe(struct platform_device *pdev)
 	if (!iommu)
 		return -ENOMEM;
 
+	iommu->domain = &rk_identity_domain;
+
 	platform_set_drvdata(pdev, iommu);
 	iommu->dev = dev;
 	iommu->num_mmu = 0;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
