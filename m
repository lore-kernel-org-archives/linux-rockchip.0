Return-Path: <SRS0=DOys=JT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27B82C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 07:25:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BEFD8613DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 07:25:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BEFD8613DE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=91Ij7P2rNoabSSmAnbkL4rZoOCuEYBklgTd4ob70E70=; b=mCSQtVsLoIpZ7Hdw00nqh9lMz
	MasmP7JnLVzNB62oP9VC/LDT25rfzutjHwrn70vGnrRqlHQCcJXzuEXjLwTzaiXGk6durOJAUkPgk
	SskA7GPrGFlwJcz54nRG9Wb56ana1V0Ae6U93Grms68bFNdYOvGK9Sl0M23nbRx/HczCjmMA8IIiB
	rdcWsEtIjsQXkWnb14whN2L2xaW+azahewmiiTwCyvi6GuszocGTnPmYRiah9DgtaDa1ApxIPgQd7
	szz/gmoQbf5Ffr4T1esTkqus1Jweky+n2OPZI85z7Uxmw9BzvEshFFAUEeoBx2/QF2I/KemIIlyog
	g+MRy1onw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZTiX-00G7k4-Mv; Thu, 22 Apr 2021 07:25:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZThu-00G7gV-Bo; Thu, 22 Apr 2021 07:25:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=0VXHGt5gHVfh9GKMTHMIP8agVymFR0YrREG8xOMgCGY=; b=P2idsdNARgtL4XgfgukllkaSiC
 C6NTJUnFHytlPjK72SUHR+OaYo3vOxHzqHr6rBHHbudIT3WQilZRm8hpn2r+/K3CZpz8Gvav+N9DM
 1soj8/nNFsA1TOZP3V/VDh9TgF0qV842L1DATEuHaw1NKtSKhCYdDgiRTAUbmsAn5xH5dBQjmJQu9
 7NpeqtSSWyvq+UftDeph76dQ+zlUy5Cw+9wLCDZsvBIxWBo2FHEBPb9tslEWr97ndRQy6kdcr2Jyd
 1Af4u3T07UFvKisnqTbqvZ/OigKXdZf8n2B4wKkK/1qSJRSE2pzqyBT80uviotSSbkt5L3XVNTR7Z
 g/R8iEyQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZThq-00DS5H-Sj; Thu, 22 Apr 2021 07:25:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id C604B1F43101
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 2/3] dt-bindings: iommu: rockchip: Add compatible for v2
Date: Thu, 22 Apr 2021 09:24:41 +0200
Message-Id: <20210422072442.111070-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210422072442.111070-1-benjamin.gaignard@collabora.com>
References: <20210422072442.111070-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_002459_073532_43C63F92 
X-CRM114-Status: UNSURE (   8.69  )
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

Add compatible for the second version of IOMMU hardware block.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index ab128f8e4c73..76710dcdc3e4 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -19,7 +19,9 @@ description: |+
 
 properties:
   compatible:
-    const: rockchip,iommu
+    enum:
+      - rockchip,iommu
+      - rockchip,iommu-v2
 
   reg:
     maxItems: 1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
