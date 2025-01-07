Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 200ACE77197
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jan 2025 15:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tKnvq62qgPOn6FkZKNEAr2FHGVtcbJRqx3IOR9GcEiU=; b=BIRl5gpdofG4a7
	oX37CLFzZcSL04/R+32mwiTJhFQ81fXsHmGJC71TBM+LdFpF8DSVIEuqz8cskl1ECfUFz2375+y0p
	a1r5nrjvLJ8RzOKyn0i3DFr047BRBoySGakTOkIWAcTJ17gCuZAccapv6C1kSpKLbFVZ8J+6QutwU
	9uOrFqz8LKiWMEMDsbQOcGKLN1Z2h9gQS/idi9h1GHwI+Su9WFo2lR+MhUNLZUTjn5GB/lDd4/HfF
	cEeV9suJYfDradx6HfGofvpY2uIGEAoQPSPJm8HRUcmrw+brHSjR4mrHEzWPCEGWM3QjOrqNVHPpY
	j/Bv/RO+SMTSANukIB2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVBpg-00000005V2Q-2Jii;
	Tue, 07 Jan 2025 15:49:28 +0000
Received: from mail-m118196.ym.163.com ([115.236.118.196])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVBoO-00000005Uru-1x1H;
	Tue, 07 Jan 2025 15:48:14 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 801e0ade;
	Tue, 7 Jan 2025 23:48:00 +0800 (GMT+08:00)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	jon.lin@rock-chips.com,
	linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org
Subject: [PATCH 2/2] spi: rockchip-sfc: Add rockchip,fspi compatible
Date: Tue,  7 Jan 2025 23:47:55 +0800
Message-Id: <20250107154755.2037197-2-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250107154755.2037197-1-jon.lin@rock-chips.com>
References: <20250107154755.2037197-1-jon.lin@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk5LS1ZJTR9LHhoeSh4dGkxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a944173916109d9kunm801e0ade
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OQw6LAw6DjITHxEUKSpMKAwz
	KzFPCh1VSlVKTEhNSU1PQ0NKSExMVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlOQ1VJSVVMVUpKT1lXWQgBWUFDS083Bg++
DKIM-Signature: a=rsa-sha256;
	b=Q1SPhU6twQ0nlv+ONHZXIjROcWiO8EYPGXr0HcXOR4Y5jXa5x3mny0tkRHyAlgi6XYY7IdOachcnCVczX6fhx3mVsC5oqg9RKhoo9xLAaxcgiBxN/WdiTPQiEGp4e+ot6+IX0vbsWOdZNtd4e7b9Z9s5BDAX6/DMdaqyCodsMH4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=XJLawlfMWnWq2XaeHw3MAcM0toNaZ6iL2XtcMfjanUw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_074808_723823_FB9B730B 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
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

FSPI is an SFC upgrade IP, support new feature like XIP. But RK AP
SOC FSPI early version integration implementation is the same as SFC.

Add rockchip,fspi compatible to match with RK technical reference
manual.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

 drivers/spi/spi-rockchip-sfc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 59de351499a0..88fbde27925e 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -808,6 +808,7 @@ static const struct dev_pm_ops rockchip_sfc_pm_ops = {
 };
 
 static const struct of_device_id rockchip_sfc_dt_ids[] = {
+	{ .compatible = "rockchip,fspi"},
 	{ .compatible = "rockchip,sfc"},
 	{ /* sentinel */ }
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
