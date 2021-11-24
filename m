Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3E56C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 02:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YHjnqAZOs82y0aQXvipK1hvShxhsxJjC1dsc4ynbCx0=; b=AEEBXHlw5ygkyT
	QhGtWXeX/dr+sDWNExh32sKiNH0TytwX4+Z0BEspo/ud1IJ344NQAIjSLWMnejArioXuKN0C0fK1n
	EeumWSc+jSrA4gG3LhMnGQEFlWMFUQxgOQx0d0zSCdzmPPxSN7/0xwZMgVmkOApyujoTiFsBvjtnM
	Y0oxFWX2PBFrmgEM1l9IzhHJG26mjMDYIXnoo4hb9rdaMeOaXapU1dGCUubfqW2AOaI8Dxrf1O8ni
	iPlfsU0aBxelgqqD3iKlz7Zqighh0zgWeK/oZJNJe8FP1n4PCMg3454vb4G6uLSlz/GEYktXiyn6R
	GoqmoQFRTlUNXDXD649Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mphnr-003pRc-D9; Wed, 24 Nov 2021 02:14:31 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mphnd-003pP1-93; Wed, 24 Nov 2021 02:14:19 +0000
Received: by mail-wr1-x436.google.com with SMTP id d24so1354073wra.0;
 Tue, 23 Nov 2021 18:14:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xe4o5Gm3OMdjS63wMnh/ZOlXxoaUWg1l/47qZWglxBI=;
 b=MOSdU1seSeuiSwHUZmk1UhtByoEtzLLRNtdxo0+O4R/7fz4+UeAjOE/Mk9Ow0CSnwq
 3gb8XKhUiw9t3A2lNpl3q5eiIcczC0zHyXPk+jtyM7uSucofkydcKRAj9qKlU+f450YM
 LKM1Suhlyj0yFzGEXiMjzWFh6oCfK04M97deJZ7clVgwi9v7EiyH7UZIfMFbssRYuF1L
 Ih3dfWs8WVzPdYnFBSF/YqpT8bXE85pWjbkFg6Dd1iVfQsXbF0TVt2Ng4cN0fOaW5cjK
 omgfVDAqexKTRZG8mxcZXQaPMnLyKSNmw3orJQkcewv4zXczLHCd4PHMKp7u59S+PCSH
 AbAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xe4o5Gm3OMdjS63wMnh/ZOlXxoaUWg1l/47qZWglxBI=;
 b=qGm+bF3bhcEBs7UYO2q004SIadT1ABqEYadWAdU4h6pZbCKNGOB0f4YF1Mq3QobzyC
 K03rLkFiFZmdtlgORQOj2uOnvJ/Ps5K8QXI+FQLDXzVDYMIJUfIzOylGHJk22t++SoRQ
 unsU8DRx80xmDPKzoH1f7Kj24ukZ9NK85QSD9wXYeuAGS6yFBOkYkpI8ftkgdQpSx2W2
 cLQ4dX40U950u5GNMArZZak1S9Y3BtABU/qjowfv/76KFw8YR5DC7OurHA0+I6nU7BOf
 tsIcEFIrxqN6crdCu+Lxc2rkdKiAK5Yv4qz5reHRRWFEcsuu/lCS6rcmtTLx4n1rI48a
 CfTQ==
X-Gm-Message-State: AOAM530ocVTPP+mma95NtVEq20HSBeeqXUps0tcFQhACg412Pv1KssS/
 34WTbryWlv+tdWkZmUDcqg==
X-Google-Smtp-Source: ABdhPJxya3jKNOzfMuNmHXXGJbUVr3esV/uhag0CYzu7qmZmXnsDI9xK9zK5GsJCJLZTYTGmQtQ6lA==
X-Received: by 2002:adf:e848:: with SMTP id d8mr13671517wrn.3.1637720048717;
 Tue, 23 Nov 2021 18:14:08 -0800 (PST)
Received: from alex-ThinkPad-E480.. (ip5b435a69.dynamic.kabel-deutschland.de.
 [91.67.90.105])
 by smtp.googlemail.com with ESMTPSA id c6sm3909458wmq.46.2021.11.23.18.14.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 18:14:08 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] iommu/rockchip: Fix PAGE_DESC_HI_MASKs for RK3568
Date: Wed, 24 Nov 2021 03:13:25 +0100
Message-Id: <20211124021325.858139-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211123_181417_345453_38F50419 
X-CRM114-Status: GOOD (  14.95  )
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

With the submission of iommu driver for RK3568 a subtle bug was
introduced: PAGE_DESC_HI_MASK1 and PAGE_DESC_HI_MASK2 have to be
the other way arround - that leads to random errors, especially when
addresses beyond 32 bit are used.

Fix it.

Fixes: c55356c534aa ("iommu: rockchip: Add support for iommu v2")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

I've found this bug, when testing the recent VOP2 submission, which is
the first perpherial which uses iommu for RK356x. I could use it on my
quartz64 8GB board only, when limiting the available memory to less 4GB.

This patch fixes it.

 drivers/iommu/rockchip-iommu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 5cb260820eda..7f23ad61c094 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -200,8 +200,8 @@ static inline phys_addr_t rk_dte_pt_address(u32 dte)
 #define DTE_HI_MASK2	GENMASK(7, 4)
 #define DTE_HI_SHIFT1	24 /* shift bit 8 to bit 32 */
 #define DTE_HI_SHIFT2	32 /* shift bit 4 to bit 36 */
-#define PAGE_DESC_HI_MASK1	GENMASK_ULL(39, 36)
-#define PAGE_DESC_HI_MASK2	GENMASK_ULL(35, 32)
+#define PAGE_DESC_HI_MASK1	GENMASK_ULL(35, 32)
+#define PAGE_DESC_HI_MASK2	GENMASK_ULL(39, 36)
 
 static inline phys_addr_t rk_dte_pt_address_v2(u32 dte)
 {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
