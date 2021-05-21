Return-Path: <SRS0=rr0l=KQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C8FC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 13:41:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2F6F0610CB
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 May 2021 13:41:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2F6F0610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GVSCdvM8OiQAFryJ5j8yL1Fdc8N+M2IAIjjj2u6Z9Jw=; b=KHcs7p2akCc1ptfcWQ7cVgPda0
	q//hn9+jN+gQVcV5rR7MFmZvc4u+ApamevdDFhGo6xZfbV1uWsX3RpsS0rDOEZUtH7R7quLHVE36a
	agaYS43uF2a2qJwAEinOxnUYFM6KkKfq2VvDF9HOmCLmnTlIky0FnCjh9x+vsZIb+SkzAOEsxMqtQ
	ReWZf5S/OA3l+4rKXeKLIErZ2d3hlcljD9YukXkWorD8mdZx5nPP3d9qbPZp1F0jYcTGf1A3RtcEC
	7A92WCpha84vqT1bmrBx3GUds9f8yka6zyV389snFwP89F4mEZNUhwPOF7f2vaggIXDiRJZQKAj6Y
	dbdA4vrQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk5Ox-005a1r-7t; Fri, 21 May 2021 13:41:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk5OP-005ZqC-Oo; Fri, 21 May 2021 13:40:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=BGRUsMYl7w9ZES09AB25c7tzexndat9EF2BA7IiCn2I=; b=XEfg2jc30fIQXbJVOPnO81y6mi
 URX44SfZKUTqf0rvyPUlOsTPuz72CXWAf+MCVvCBZJNhXKcaQd5G0rvMzvhhtXs/6XctLyfflNgkq
 tXMRCs22yuLHQC602MEg/U4N7bRafA18BZVJkcs5uyqc++4wRR9BY7d60hVW9OrpR6uBqzM42rvVZ
 CtvIl0oYH1QOftVG7mLzkAlRX0CU5WNH1apswybhUOiHh265r1Jvj+qrez1Q3y/zgf+8+Ol7QZPFr
 +S/iTMxbP8hq1lpYCKqSl7XC1dTBY4X0qZlPNb8tGEeXmxaKbHrtnOocZZ+AsbrGVs+znU+VtRv8n
 xMEAwCdw==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk5ON-00H9jh-AN; Fri, 21 May 2021 13:40:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 41AE41F44086
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com, robin.murphy@arm.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v6 2/4] dt-bindings: iommu: rockchip: Add compatible for v2
Date: Fri, 21 May 2021 15:40:26 +0200
Message-Id: <20210521134028.3710011-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210521134028.3710011-1-benjamin.gaignard@collabora.com>
References: <20210521134028.3710011-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_064043_510455_D27559F5 
X-CRM114-Status: UNSURE (   8.84  )
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
RK356x IOMMU can also be link to a power domain.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 .../devicetree/bindings/iommu/rockchip,iommu.yaml          | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
index 099fc2578b54..d2e28a9e3545 100644
--- a/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/rockchip,iommu.yaml
@@ -19,7 +19,9 @@ description: |+
 
 properties:
   compatible:
-    const: rockchip,iommu
+    enum:
+      - rockchip,iommu
+      - rockchip,rk3568-iommu
 
   reg:
     items:
@@ -48,6 +50,9 @@ properties:
   "#iommu-cells":
     const: 0
 
+  power-domains:
+    maxItems: 1
+
   rockchip,disable-mmu-reset:
     $ref: /schemas/types.yaml#/definitions/flag
     description: |
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
