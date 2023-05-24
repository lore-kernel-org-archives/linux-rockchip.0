Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F4F1C77B73
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 08:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FTfnY08BPyZqFYQQjsjaPqdJuOziq91SibLaC/F1cI=; b=dpcKEaFBs9FhcT
	Kezlik6/brkO3KN88OyR0HotSZmUePFpRRtHPJyUe2A7IsplpQlZ+UxwoPVRPP7iklXs91X8afQtn
	VxRX1P9uusSkH8eL9L1M+aj263la5jIIbG1iejMZ7n2btuJmVD9maFBfxpMwbfnJDi09bsUbJHzDO
	O+F8Qs5kPekKvJ9Zk2xeSOVXLJiJy8k8Co7TroXVwDbnBRT2xVU+72iCFJm5YYPRlbgjr/idgDtca
	bNzXHccfdt1cO09pJ84sAV7vGOIith1Ht1Gps1W+Pw9YBMColGt5sx5qa3Ekb6acRi/VxoAEX6+Pf
	AbTZbUa4hLRRnDXPzteQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1jwo-00CntC-1s;
	Wed, 24 May 2023 08:34:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1jwn-00Cnsi-27
	for linux-rockchip@bombadil.infradead.org;
	Wed, 24 May 2023 08:34:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=h3u6W5ifTRcSkzb70SmO7dN8fuyKBymvi++MnaV1qtE=; b=bUATCQxABjNX4fA33S3tGxGvM5
	9kgp01a7aDJB7QthfYk/bnrqU7T4p7dKeUtT/4FHadxyjYq4eNRTzbQS8mrrtNLRNlKk9bM2ajQYg
	BajA1qAIfxVC24bIsoMqczZiBhaiPcsoYZ1KxqKW/VSsBUCdQZque/3zH2Qq04c4/fJ9btdzE5GuY
	gkdJfy8eazKMzRNAXmb9DHlav+uY+aSG6IEyfX0jVhJfDFHpmNQ/Y7oJJgkSQ36ts1mfi12pPtCQf
	d9BkWLMwsWnCZOMYq2SniVPFce8JE8Fm8Q+uXs1jg3MA1eO6EO61fNZxM4UrF2No/v4ElbyqTIxGn
	q+/27xIg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1jui-004wTi-2c
	for linux-rockchip@lists.infradead.org;
	Wed, 24 May 2023 08:34:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1jua-0002nC-9A; Wed, 24 May 2023 10:32:00 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juZ-002RaB-FS; Wed, 24 May 2023 10:31:59 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juX-009jMa-Mg; Wed, 24 May 2023 10:31:57 +0200
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
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v5 22/25] dt-bindings: devfreq: event: rockchip,dfi: Add rk3588 support
Date: Wed, 24 May 2023 10:31:50 +0200
Message-Id: <20230524083153.2046084-23-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230524083153.2046084-1-s.hauer@pengutronix.de>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_093410_148123_CCF157B4 
X-CRM114-Status: GOOD (  11.63  )
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

This adds rockchip,rk3588-dfi to the list of compatibles. Unlike ealier
SoCs the rk3588 has four interrupts (one for each channel) instead of
only one, so increase the number of allowed interrupts to four and also
add interrupt-names.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v4:
    - new patch

 .../bindings/devfreq/event/rockchip,dfi.yaml       | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
index e8b64494ee8bd..4e647a9560560 100644
--- a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
+++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
@@ -14,6 +14,7 @@ properties:
     enum:
       - rockchip,rk3399-dfi
       - rockchip,rk3568-dfi
+      - rockchip,rk3588-dfi
 
   clocks:
     maxItems: 1
@@ -23,7 +24,18 @@ properties:
       - const: pclk_ddr_mon
 
   interrupts:
-    maxItems: 1
+    minItems: 1
+    maxItems: 4
+
+  interrupt-names:
+    oneOf:
+      - items:
+          - const: ch0
+      - items:
+          - const: ch0
+          - const: ch1
+          - const: ch2
+          - const: ch3
 
   reg:
     maxItems: 1
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
