Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AECD5EB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 06:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0VqEx/fp+WEk+lFi0A1kjge0Nd52mZ2pHW2n1Paea8=; b=FNmg6Ixwn5JSU8
	H5XTxZsYPsYUEOBa16RUp2zhVGzacrOMe2UcNTXk+UVi65JTfahhULOy0bmbOVDJLksv++H1K4t+B
	jIQF8yG4b9zRLI82IU6cqDihl9K6CIC5tMOiOCtB4T/i6v56u4Hr8JmEwRFyRw3+REKMnSLHiG+pH
	KkWBRlnuBjLLZBnwIGGBjr7XLitUu/x2PCaEQ1VFSFpIe6ft2zihoPyts1hU5UnqvGeaWVGrP2goa
	oQ+t7igHJrg0Q/c/zYE4kGxeyVM6yuidm1TqxUDH6YR/8MQ2uG3YmLdudTL5bBLYTjqQCLTUwd5i2
	aQI85uXySQSV9bKcXglQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2rg-00H0pG-0f;
	Fri, 16 Jun 2023 06:23:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2qg-00Gzu3-1i
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Jun 2023 06:22:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8J9kAfn/SfMLadwgsuGRCFTWXkuJ/JX8HGxRp8U2RGA=; b=as6OvhPkKbFYtuMwCcg+An1dTy
	iwyR5moi19vRSRyu+EOwg9EYvz++1plLcwk/FM1vRSAT1r4/YH/jl1gB0+rpoEcUWgWpy6QOF75XY
	h/k+rVm2xgeqsbmYkdxHi2AR4wedcveYxGzuMD05NPq5cH0fgPNyUGVUnVQhe4vn/ZyGiHJ3yLGMJ
	7um2cPp5V4G8v5Zzu0BDwwuBC5ktrpWn3IwgvVgDsQOiVrcLFRnazMdJ0mCv4nMHYTyRf6OZg5jtF
	UKI+IY8OGRdgT9i91sPIC5HAbtW54FLVRfl8Mrx3LFWuDvKPimWqhgYPlPR2wF/VydQHrj/+dVbLl
	n0fMweLg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA2qH-00Cord-2k
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 06:22:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q9-0006q4-BB; Fri, 16 Jun 2023 08:21:45 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q8-007ky6-CY; Fri, 16 Jun 2023 08:21:44 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qA2q5-003FVW-I5; Fri, 16 Jun 2023 08:21:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 21/26] dt-bindings: devfreq: event: rockchip,dfi: Add rk3568 support
Date: Fri, 16 Jun 2023 08:20:56 +0200
Message-Id: <20230616062101.601837-22-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230616062101.601837-1-s.hauer@pengutronix.de>
References: <20230616062101.601837-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_072203_573367_99484106 
X-CRM114-Status: GOOD (  11.51  )
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

This adds the rockchip,rk3568-dfi compatible to the binding. Make clocks
optional for this SoC as the RK3568 doesn't have a kernel controllable
PCLK.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Link: https://lore.kernel.org/r/20230524083153.2046084-22-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../bindings/devfreq/event/rockchip,dfi.yaml      | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
index 7a82f6ae0701e..e8b64494ee8bd 100644
--- a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
+++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
@@ -13,6 +13,7 @@ properties:
   compatible:
     enum:
       - rockchip,rk3399-dfi
+      - rockchip,rk3568-dfi
 
   clocks:
     maxItems: 1
@@ -34,11 +35,21 @@ properties:
 
 required:
   - compatible
-  - clocks
-  - clock-names
   - interrupts
   - reg
 
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - rockchip,rk3399-dfi
+
+then:
+  required:
+    - clocks
+    - clock-names
+
 additionalProperties: false
 
 examples:
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
