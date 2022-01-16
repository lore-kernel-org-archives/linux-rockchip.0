Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E281C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jan 2022 12:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WsvZDTy9bnz9sQokTIMByUZNm0C1QjtAjt/5GfH5qs=; b=kIDDml7wixyHBv
	HiFS1w9l3AdZkQVrbCN4A7mzaWnVV4gEb9eGXUngg+Alv8xbOpbDMWVp3c5O9RA5KJY2ALVm1pxeB
	USlad8g1etFfie3PveAkTxYCvJq7aP7+JA8wFypGCelWUWKDTK/wk9mjTi9ZLhjnvfr9ZDSiro97A
	LQLRWXXAwFEPVBovvj51LMWT9WGyrdGxaTT86cRszJTMLFRGdo7O2lh7+NASNol7YQYqoIjWgWi5B
	tRpg9yKBYFwb/oWMO6NJ9COZvl/QCrgHUKw1Dmtn5dSYBRc6sg2ntSJD0uACKe+giZ7zbAmgy82Da
	61wVBdHfbxGhfRV8OypQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n94yf-00CQnd-PP; Sun, 16 Jan 2022 12:49:45 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n94yJ-00CQjQ-VY; Sun, 16 Jan 2022 12:49:25 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout2.routing.net (Postfix) with ESMTP id 9B6855FEA8;
 Sun, 16 Jan 2022 12:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1642337362;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Cp8maleWJkAj3g8Rqy87pKYRY7/YmFrFYofmm6M7tfU=;
 b=xzLeV7bVOOFZ7CBlwJE6aCx1/VkZeVGsF5RYElMDSZUNUG0C6auhUttPlFF9zWQ0szLJPr
 xMxC5tXrfKixwHMEmbzjSP40zVrsvNDsaDsJtD+iSq+d/wfO53YRaU07uCX2z+Q03997Bl
 0WTvyiZJe7yGytAwI2EH7ZC/bGcplFA=
Received: from localhost.localdomain (fttx-pool-80.245.74.150.bambit.de
 [80.245.74.150])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id 18F213604B2;
 Sun, 16 Jan 2022 12:49:22 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/3] dt-bindings: rockchip: Add BananaPi R2 Pro Board
Date: Sun, 16 Jan 2022 13:49:10 +0100
Message-Id: <20220116124911.65203-3-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220116124911.65203-1-linux@fw-web.de>
References: <20220116124911.65203-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: aa82c877-1a69-41ec-acbd-896dca2beb05
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220116_044924_189068_500716CC 
X-CRM114-Status: UNSURE (   8.21  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add Devicetree Binding for Bananapi R2 Pro Board based on rk3568 SoC

Co-developed-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4aed16176434..33d6423fe6c3 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -651,6 +651,11 @@ properties:
           - const: rockchip,rk3568-evb1-v10
           - const: rockchip,rk3568
 
+      - description: Rockchip RK3568 Banana Pi R2 Pro
+        items:
+          - const: rockchip,rk3568-bpi-r2pro
+          - const: rockchip,rk3568
+
 additionalProperties: true
 
 ...
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
