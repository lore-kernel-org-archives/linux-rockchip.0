Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E00B8C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 13:41:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C7A5224BD
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 13:41:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C7A5224BD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=misNJlQzKMYX+PPsVsWA54FCgR2HIUjSoo+O4gk/Hgo=; b=F1PxHXFOGcGqyGrLph/vo9lY2
	Igc/IciNW1mhu5LgtRXc+HWEp7ZLTWcx0yAlWgDu76fCNor95V6itps2ly5Wos5/MH+ZktePZAHpD
	LHRhWc7Aas24x5uN6XzRo5ZeKW0pZmLPDFcqkNOHnAy+P7rZhiV8iIFYZc9fM9EptWCuEiA95G9Gu
	ilXWhhFwB8P8LqlYzUuO6pxPBmWhVcx4T5qjTzalrHJp4GwsWMg/ChlX+4CBcMnnt0O8WIugSJDEo
	kkzAntpjfmvtqREXAVJD6y4Yn7jLG5J2e1GLFyM3P2bmuMresd3MVTR1EMUivweLboQ/1807hFD/v
	UXf7Mm6eg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxVXk-0003Ss-Re; Thu, 07 Jan 2021 13:41:36 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxVXT-0003Nr-PZ; Thu, 07 Jan 2021 13:41:21 +0000
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id AA1DCC0016;
 Thu,  7 Jan 2021 13:41:17 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] dt-bindings: media: rockchip-vpu: Add PX30 compatible
Date: Thu,  7 Jan 2021 14:40:59 +0100
Message-Id: <20210107134101.195426-4-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
References: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_084119_961236_30154B51 
X-CRM114-Status: GOOD (  11.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jacob Chen <jacob-chen@iotwrt.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Rockchip PX30 SoC has a Hantro VPU that features a decoder (VDPU2)
and an encoder (VEPU2). It is similar to the RK3399's VPU but takes an
extra clock (SCLK).

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 .../bindings/media/rockchip-vpu.yaml          | 25 +++++++++++++------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index c81dbc3e8960..c446b9ead21b 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -15,10 +15,13 @@ description:
 
 properties:
   compatible:
-    enum:
-      - rockchip,rk3288-vpu
-      - rockchip,rk3328-vpu
-      - rockchip,rk3399-vpu
+    oneOf:
+      - const: rockchip,rk3288-vpu
+      - const: rockchip,rk3328-vpu
+      - const: rockchip,rk3399-vpu
+      - items:
+        - const: rockchip,px30-vpu
+        - const: rockchip,rk3399-vpu
 
   reg:
     maxItems: 1
@@ -35,12 +38,18 @@ properties:
           - const: vdpu
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
-    items:
-      - const: aclk
-      - const: hclk
+    oneOf:
+      - items:
+        - const: aclk
+        - const: hclk
+      - items:
+        - const: aclk
+        - const: hclk
+        - const: sclk
 
   power-domains:
     maxItems: 1
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
