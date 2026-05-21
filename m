Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D30A8CD5BAC
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 11:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPvapXSJ/Uy9lIIrwSe+M24F/rELXHl1z9f515CXk6k=; b=H8oyRfa8rL8phH
	j5wGh7zo3EOGM8FZIwzUWGDdgCNtXvZpDHksYLNGjiOBihr+wJ+7krrY902Y1UT6FzAOtCaGQSXRV
	NAyqdz6w3eqG52tImPexErAaBvGD9JpTCiQ0X7Hdf9eOGt4zq+izE5FRQIzA3jza24kPF56QvtbwP
	+Fp6FJij1s7YPXya/3fKOG/fvURyd1RfOfBp8Vzo9PNjEohb2gSCgtUMkHisMDS+jUe9AH5cQzxwG
	jMW+4glsk+19ltOWKasJ7HvmKWF8jDUmDmUcTnYZbPeHrY78y4848WS6d3gDZdzpA0vYw6lODVkkX
	Hp0481Gr18breMQG+zow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ1q8-00000007dZj-0Qjf;
	Thu, 21 May 2026 11:45:24 +0000
Received: from mail-m8221.xmail.ntesmail.com ([156.224.82.21])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ1q4-00000007dY1-3RoN;
	Thu, 21 May 2026 11:45:23 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3f5009432;
	Thu, 21 May 2026 19:45:13 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Subject: [PATCH v2 1/3] dt-bindings: display: bridge: analogix-dp: Add data-lanes support for endpoint
Date: Thu, 21 May 2026 19:44:57 +0800
Message-Id: <20260521114459.1394264-2-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260521114459.1394264-1-damon.ding@rock-chips.com>
References: <20260521114459.1394264-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9e4a5a9f7303a3kunmad9184e677768
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaGkJLVk1DSEkeGB4YTE1IS1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=hqdjcljGsxyTmfX06y3C3Se7JNYUa+1+U/AnCJYEDwzLTCpDOT65czKGEl1ajeT5UUJVHGeGEaCZOT8rG6eXZGp4wldTEtvfJpmFZiJWLK5rpYSJjz3ceQxw1sNTIjH3lYKxznkaWp+TX4cBZxcT70HqGZOwHTE7k97Tu7CU8O8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Xu79CGy7oXgHkId0a/dytBXCz0cn2ptJALLOPB88Bf8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_044521_264270_F5C4631D 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add data-lanes property support to the port@1 endpoint for physical
lane mapping configuration.

Lane mapping is mainly used for below scenarios:
1. Correct PCB lane swap and differential line routing crossover
   without hardware changes;
2. Adapt mismatched lane pin definitions between SoC and eDP panel;
3. Support multiple panel hardware variants on the same board
   by configuring data-lanes in device tree only.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v2:
- Add lane mapping application scenarios in commit message.
- Remove redundant deprecated property 'data-lanes' for eDP node.
- Update port@1 $ref to /schemas/graph.yaml#/$defs/port-base.
---
 .../bindings/display/bridge/analogix,dp.yaml    | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
index 62f0521b0924..e34fdb21adb4 100644
--- a/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
@@ -42,13 +42,20 @@ properties:
     properties:
       port@0:
         $ref: /schemas/graph.yaml#/properties/port
-        description:
-          Input node to receive pixel data.
+        description: Input node to receive pixel data.
 
       port@1:
-        $ref: /schemas/graph.yaml#/properties/port
-        description:
-          Port node with one endpoint connected to a dp-connector node.
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description: Port node with one endpoint connected to sink device node.
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+                items:
+                  enum: [ 0, 1, 2, 3 ]
 
     required:
       - port@0
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
