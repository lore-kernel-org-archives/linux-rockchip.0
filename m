Return-Path: <SRS0=P5PH=D3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76F87C5517F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 19:39:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E1CD22225F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 19:39:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qhKNdQ48"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E1CD22225F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kBvLpUEypM9isptfJqhg+gYNJ01U0zFti7ccOhMATvI=; b=qhKNdQ48hoKLh5pP+1dJSAVF/
	HO/PvM7mQCZWVuIEnk4J7YFt7a/StA7o+NLYba/3hPEs0KFBABV4Cm/L6R/b7be1qGYba7yVYJiod
	80JmabA2O4ghhgbY8CdpbC/Q3KI2eqMHKWGFK6DLJ1TvWE3cbT+IlvVoIK9uZbuMsJL4DGCgnFHfe
	8PuEOYjAWacvtuWkMLvpVwA6jVps9oR5S7EcvtGiolpTXAoL3cIYZlq+UwemCwjLvr1EssGAQwlgR
	3y2pnyFC0BGKih3B0JUxFdiCXYwQCEKfkCVwAHz5HHXehpNqok2gW1VEz74tGT+o8pm+xkwxYpKV9
	qkLfvFD3A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUxTg-00015F-Ss; Tue, 20 Oct 2020 19:39:24 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUxTY-00011R-QA
 for linux-rockchip@lists.infradead.org; Tue, 20 Oct 2020 19:39:17 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id EDA591F44D9D
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v6 3/9] media: staging: dt-bindings: rkisp1: re-order
 properties
Date: Tue, 20 Oct 2020 16:38:44 -0300
Message-Id: <20201020193850.1460644-4-helen.koike@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020193850.1460644-1-helen.koike@collabora.com>
References: <20201020193850.1460644-1-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201020_153916_973094_72E4D9B9 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 eddie.cai.linux@gmail.com, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org, karthik.poduval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, mark.rutland@arm.com, kernel@collabora.com,
 zhengsq@rock-chips.com, jbx6244@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Organize properties order in dt-bindings to move it out of staging.

On top: compatible, reg and interrupts.
Then alphabetical order, then properties starting with '#'.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Tomasz Figa <tfiga@chromium.org>
---
 .../bindings/media/rockchip-isp1.yaml         | 32 +++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index 4c31cfaee2709..79ebacab83cf3 100644
--- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -23,19 +23,6 @@ properties:
   interrupts:
     maxItems: 1
 
-  iommus:
-    maxItems: 1
-
-  power-domains:
-    maxItems: 1
-
-  phys:
-    maxItems: 1
-    description: phandle for the PHY port
-
-  phy-names:
-    const: dphy
-
   clocks:
     items:
       - description: ISP clock
@@ -52,6 +39,19 @@ properties:
       - const: hclk_isp
       - const: hclk_isp_wrap
 
+  iommus:
+    maxItems: 1
+
+  phys:
+    maxItems: 1
+    description: phandle for the PHY port
+
+  phy-names:
+    const: dphy
+
+  power-domains:
+    maxItems: 1
+
   # See ./video-interfaces.txt for details
   ports:
     type: object
@@ -110,10 +110,10 @@ required:
   - interrupts
   - clocks
   - clock-names
-  - power-domains
   - iommus
   - phys
   - phy-names
+  - power-domains
   - ports
 
 additionalProperties: false
@@ -139,19 +139,19 @@ examples:
             clock-names = "clk_isp",
                           "aclk_isp", "aclk_isp_wrap",
                           "hclk_isp", "hclk_isp_wrap";
-            power-domains = <&power RK3399_PD_ISP0>;
             iommus = <&isp0_mmu>;
             phys = <&dphy>;
             phy-names = "dphy";
+            power-domains = <&power RK3399_PD_ISP0>;
 
             ports {
                 #address-cells = <1>;
                 #size-cells = <0>;
 
                 port@0 {
+                    reg = <0>;
                     #address-cells = <1>;
                     #size-cells = <0>;
-                    reg = <0>;
 
                     mipi_in_wcam: endpoint@0 {
                         reg = <0>;
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
