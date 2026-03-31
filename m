Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C41CFF60D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 07:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VvD8524Gt0GeFyGY/H4jvFbYvr0CYGWTQRcV8xaTdLg=; b=zcqYbd/85fU7/N
	JFWwadW1QN8w5PI/rR4IBUyhq6trNTIPHXlU1OdLVwSwqrwjSAe5pm9G5DMmt/fkjkMcPSjRGbHkG
	lJWDDh513vI6Fd4CX4ILtUNCblVebRD2+HoZXogFKUzOwAbf4yYYBLA6bKgFfUWuF0cICknidQpk+
	DBTyS2HjU/jAukqUgs7FOORWB1bH2pakFKmFmc2CtKs2wTGSoYW1UdXfEX1ToiB2+h78vNNTZAffo
	Psm7jhmqPDtKiFtlAe/vaP6euNzS9gW5Qw1GxCd9zy0kxtu9m3ZjrssY097o7IT6wKOwnBxrJLgV2
	Or7mOAhKihiwz4wREZxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Trc-0000000CWbH-3na5;
	Tue, 31 Mar 2026 07:50:16 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7Tra-0000000CWYv-3t2r
	for linux-rockchip@lists.infradead.org;
	Tue, 31 Mar 2026 07:50:16 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-486fe36cfabso32138475e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 31 Mar 2026 00:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774943413; x=1775548213; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kZ0FISfr5kyvOiMiGgtJkNjcn8iqulgi6+Bp+/x1xTo=;
        b=M9z6Wj2u0YZn4CGoVxrndXkUMZZJTzKipNFfJl4pAOTSsTT4GqQO7VRxicJf8YfGFg
         g9+H3eCNg498argW5jhWO/VuZP5jIvy4kjJFV0Of2TXLQgfd/2bOdM4BTOYq/ifG2pFG
         h/ItItVvWXktoMf9uwGM8yhVp1MEctLXiTN4wFT4t7OijMp5aVZUr5O5W5qI91zIdFbt
         7o7SMoNFqgzxxEAIUEtqCDFe9J4ONKa9R/b/I2OMVbqinB2I3EHXij7dw6p0XvHllR9h
         QPGzk+GUS3DsWmCaxLAvNODmBT/vv77OKUZUsWTB7Tffx1RJnK6m4QzI/Oz87BygCi5M
         g51g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774943413; x=1775548213;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kZ0FISfr5kyvOiMiGgtJkNjcn8iqulgi6+Bp+/x1xTo=;
        b=ODoZ8JQDeL97DDEZV0VNCGpmnKLhpwj/yJiqY8dFGL18C2YeSKzrW/gnoq6lBEYr4D
         JAECDA4/xKHWpl1gHdU/SL5iLBAGE4Bq+DqgVMf2NH5ncYyD1ilkXSlPFlKYUrM84Kmj
         lLoUoWt5r/tUgDElpv7l2P7Fxh5+hLZJFbhKYfwqEfjvNZUSMDPhqymmTVyiB79DYsK0
         +JpP8TtJ3EbYiHKgphM1SHIIClfC3IjVdALCIo4pHBzqzBgqLUsIcMhw1d0Tnvk3zh0n
         nxA/fzyXc5ybhmDWMuTQ0S1Hux/1uKxSvvVmpG37DiYaSgX2SdDrxLY4uefT72K/dTaj
         1txg==
X-Forwarded-Encrypted: i=1; AJvYcCX0Ggl5zzLDymmsnJVSUEMSwlQpj6dh108pFYrM//IL8LsYdYJR9f0f425JdFCh9mS44Hv81rZhB3PIin5lSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1RRuiAw9Y2ts0fcLwwNSRYKShe6U7VAnMKiKD+XQlZRzUCHsE
	yQnciI6MH14TDgjz1/sTgaQrCiwCNz0xBGrsuXDvA12i0962mCgbi8VUgKKc218VMGY=
X-Gm-Gg: ATEYQzykMDmCb3OvEZ80VYDI1Xiw13usqiDgHZFRwPe039LtfVMa2R1VhaRCmMHRJ/1
	w8/P5+EUB5/L73NyRhLVhwaedxuj937wN9lp2TXEIFsiYjxj7P+ZS6MqSQw/0JI8cNYqhw2Cctl
	CEtRkFHUGIRlWNjje1mfeC/wMvDXUQKV/lH/s+x2NQzaJqruEU6z5FJyAfORJx8ai0y4guhT1mz
	llS1mz2KldroCMTm+q9rgY+VQzIjuClSwitqKsPYovazSs1oGnZEzg/ep7WQIu5ZdJhmCqTi0TD
	GUS+s999j3RPfcfXMyxW8mSj5nvJhTYzRkuAD2x+TexrukDv6NbxOFEyIITSJT7dvSJenD3BDKr
	o080MYYa7VESG/9gsL5qD9vNaf9m+8X4fLucOQ8rYnjEsbx8D6BpMYX0fCNMyCkEPSww9Axw1qf
	gfUXtPx3L8YkTa6fitVpMgc22/0ZocIJqFOtG+Ju4=
X-Received: by 2002:a05:600c:8907:b0:485:fbd2:f72 with SMTP id 5b1f17b1804b1-4887818678emr31449875e9.1.1774943412488;
        Tue, 31 Mar 2026 00:50:12 -0700 (PDT)
Received: from rock-3b.tailb81abf.ts.net ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4887c91f0casm9873015e9.35.2026.03.31.00.50.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 00:50:11 -0700 (PDT)
From: Midgy BALON <midgy971@gmail.com>
To: iommu@lists.linux.dev
Cc: joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	heiko@sntech.de,
	jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	Midgy BALON <midgy971@gmail.com>
Subject: [PATCH] iommu/rockchip: fix page table allocation flags for v2 IOMMU
Date: Tue, 31 Mar 2026 09:50:10 +0200
Message-Id: <20260331075010.1463-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_005014_986830_77B1E516 
X-CRM114-Status: GOOD (  14.07  )
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

commit 2a7e6400f72b ("iommu: rockchip: Allocate tables from all
available memory for IOMMU v2") removed GFP_DMA32 from
iommu_data_ops_v2, reasoning that RK356x and RK3588 IOMMU v2 hardware
supports up to 40-bit physical addresses for page tables.  However, the
RK3568 IOMMU page-table walker uses a 32-bit AXI bus: it cannot access
physical addresses above 4 GB regardless of the address encoding range.

On boards with more than 4 GB of RAM (e.g. 8 GB LPDDR4X), removing
GFP_DMA32 causes two distinct failure modes:

1. Direct allocation above 4 GB: iommu_alloc_pages_sz() may return
   memory above 0x100000000.  The hardware page-table walker issues a
   bus error trying to dereference those addresses, causing an IOMMU
   fault on the first DMA transaction.

2. SWIOTLB bounce-buffer poisoning: without GFP_DMA32, page tables land
   above the SWIOTLB window.  dma_map_single() with DMA_BIT_MASK(32)
   then bounces them into a buffer below 4 GB.  rk_dte_get_page_table()
   returns phys_to_virt() of the bounce buffer address; PTEs are written
   there; the next dma_sync_single_for_device(DMA_TO_DEVICE) copies the
   original (zero) data back over the bounce buffer, silently erasing the
   freshly written PTEs.  The IOMMU faults because every PTE reads as zero.

Restore GFP_DMA32 (and DMA_BIT_MASK(32)) for iommu_data_ops_v2, which
currently only serves "rockchip,rk3568-iommu" in mainline.

Tested on Radxa ROCK 3B (RK3568, 8 GB LPDDR4X):
  - MobileNetV1 via RKNN: 5.8 ms/inference (IOMMU mode)
  - YOLOv5s 640x640 via RKNN: ~57 ms/inference (IOMMU mode)
  - No IOMMU faults, correct inference results

Fixes: 2a7e6400f72b ("iommu: rockchip: Allocate tables from all available memory for IOMMU v2")
Cc: stable@vger.kernel.org
Cc: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 drivers/iommu/rockchip-iommu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 85f3667e797..8b45db29471 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1358,8 +1358,8 @@ static struct rk_iommu_ops iommu_data_ops_v2 = {
 	.pt_address = &rk_dte_pt_address_v2,
 	.mk_dtentries = &rk_mk_dte_v2,
 	.mk_ptentries = &rk_mk_pte_v2,
-	.dma_bit_mask = DMA_BIT_MASK(40),
-	.gfp_flags = 0,
+	.dma_bit_mask = DMA_BIT_MASK(32),
+	.gfp_flags = GFP_DMA32,
 };
 
 static const struct of_device_id rk_iommu_dt_ids[] = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
