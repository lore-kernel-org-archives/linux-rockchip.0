Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE580EB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jul 2023 09:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fP8E6YJB9BGshL+CB1J0nh7B1lYBKD/9JYsx9DqqIVs=; b=4t1tJz9HkC1ERJ
	zeqyCrQD3dyPJYx+Ri6BBp2v1mxBmfpKHq/BYEW4YIZAKo+4bTrYQ6aID/O/LhAYn1pTxTbH4tH/o
	LtRNv0EGDKmzUTXJw+PfFpyE4f1uybwfBPR0KtlM3OnQLuEteT4rb+cc11FVmrPTVdLbdfnwv3fP5
	jIAVdmEI61d6NhVEAsaarkpj9Alu24H9aTyQrorWJVE+tyRKUXHM2qQKAguHhcLzOeoJpHH31H7/X
	t4N5BANJ+dw1wNVeclTRmrkQeelDFAtprTJtDxNAwOIim5ksKPwesW9ZAXwyNBRdnzLTRvT9QNqfW
	a+k0+a8zL4yrIjIgwawA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcQ8-00Ck6a-33;
	Tue, 04 Jul 2023 09:34:04 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcPa-00CjUz-00
	for linux-rockchip@bombadil.infradead.org;
	Tue, 04 Jul 2023 09:33:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qNbiYijIA4gzdOnoTywQySk1L3vJHrzmSM4GRfGJIVM=; b=VBkCFmDGf0GYzoe1SbaBCSYOlL
	VukyDSukGoEyjZr1ZXOgGI1yu9NPNh9kIcaqf9g4Xqflzt2cExQ6rpC+z1Oyj6JMqawyrEBdgijK3
	G8Scb/B8RVUv2O4wn9DtkAyI0mPEZxR7/ckHrVfBCWxkNzBX+zLDDUJ3DUFW2P0paCI0f0DXn9qez
	C5NSJylsadsZ0ti9DHYnn1eeRzsUR0bUO7OTBg5XVuRL9iIp6DA7Q9VX0YVK+78Be45+V6TvZ2+8F
	dD7T75eFt99kCM91TJVoUHg84SwShaOkRnM6ldVSbZOpEWbYNTR+pR/nmvEd9CSllygnobcRceyPW
	/SMVV2XA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcP5-00Apem-1O
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Jul 2023 09:33:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOw-0006vB-Pq; Tue, 04 Jul 2023 11:32:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOv-00C0AG-O9; Tue, 04 Jul 2023 11:32:49 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOr-002Tyw-EU; Tue, 04 Jul 2023 11:32:45 +0200
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
Subject: [PATCH v7 21/26] dt-bindings: devfreq: event: rockchip,dfi: Add rk3568 support
Date: Tue,  4 Jul 2023 11:32:37 +0200
Message-Id: <20230704093242.583575-22-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230704093242.583575-1-s.hauer@pengutronix.de>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_103326_388849_032B9906 
X-CRM114-Status: GOOD (  11.95  )
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
