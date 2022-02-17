Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37AE8C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 08:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVbcITEu2OFUgjWvaDFWZypanqV+vSn5m5/L6f7KGto=; b=qwX7kl8uMgEdtg
	6lnZEf/EJqhJJv6bB6IqtWiUHRKEzqkJpRXRmyfgAy5pKmKjJtIoImxElp/VQA2d4EW18QboUq01W
	x9Rr9ipgbxDuGDpzx0Mwc0BOCbaWaKf6C0p2AH1k4JezpZ283PSxQKLAF5/ueUBqV6/Efj1/ngkhs
	YmsqffrNIfKPTXX5wN+OyTMzdyDrq4hw8So5LCBHtLR/M7Cd/Cl/cWECvkNyYV+676JLLkak/rCer
	cYcwc7BMXh1qY/GD/60Pthv0y+/tkr4VIhG+Y8T/Us+p842clp2mNNwjBZg/0MweYo+QC7lpXfOyP
	B4DzTLWuNdpok5Vv7FHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKcOB-009XU3-3d; Thu, 17 Feb 2022 08:43:47 +0000
Received: from desiato.infradead.org ([90.155.92.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKcBE-009QQc-EM
 for linux-rockchip@bombadil.infradead.org; Thu, 17 Feb 2022 08:30:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=bzqef1wkM3dqDBuSPIUL9kG7FL0RH9+tt68QgFQPtXE=; b=m4VFI7weuRewrvAch8B8KEYSfe
 b/mnAiKkFU6xNPIUu666bx8nQvCdMie3EixgB+0Fs+wRh7pePD+CA3d5d0pgowhsDYdMnwXiTx2f+
 LIVZ4A6LU3V5MEYOrsq87d4oOYg69/ZE0iKfSFLjag21QjEoQixSdFmgn0B2oxS0O3SFnl9ztVZjk
 Qx/18ZP8QqoYOup9oUlMiUHIYJPCfPLeukx/J3LU0+Zdi26QYRLkyB9OytTkaoSoipBT7xx36mb/d
 aKuo88vCBAdmCS2Txh8f+JARZdhz8qF7sh2JZxaGParEK7rp3urquflCrIYFGCPWkaNdk/r5hY4LX
 nCQ93j0Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKcBB-00AXwH-79
 for linux-rockchip@lists.infradead.org; Thu, 17 Feb 2022 08:30:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nKcAs-0002EL-CO; Thu, 17 Feb 2022 09:30:02 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nKcAq-00ClU6-BY; Thu, 17 Feb 2022 09:30:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v6 23/23] dt-bindings: display: rockchip: dw-hdmi: fix ports
 description
Date: Thu, 17 Feb 2022 09:29:54 +0100
Message-Id: <20220217082954.2967889-24-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220217082954.2967889-1-s.hauer@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_083021_308032_B2346BCC 
X-CRM114-Status: GOOD (  12.73  )
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

Current port description doesn't cover all possible cases. It currently
expects one single port with two endpoints.

When the HDMI connector is described in the device tree there can be two
ports, first one going to the VOP and the second one going to the connector.

Also on SoCs which only have a single VOP there will be only one
endpoint instead of two.

This patch addresses both issues. With this there can either be a single
port ("port") , or two of them ("port@0", "port@1") when the connector
is also in the device tree. Also the first or only port can either have
one endpoint ("endpoint") for single VOP SoCs or two ("endpoint@0",
"endpoint@1") for dual VOP SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v5:
    - new patch

 .../display/rockchip/rockchip,dw-hdmi.yaml    | 24 +++++++------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index 7dd753630b46a..fc26f1d4d001c 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -102,27 +102,21 @@ properties:
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
-    properties:
-      port:
-        $ref: /schemas/graph.yaml#/$defs/port-base
-        unevaluatedProperties: false
+    patternProperties:
+      "^port(@0)?$":
+        $ref: /schemas/graph.yaml#/properties/port
         description: Input of the DWC HDMI TX
-
         properties:
+          endpoint:
+            description: Connection to the VOP
           endpoint@0:
-            $ref: /schemas/graph.yaml#/properties/endpoint
             description: Connection to the VOPB
-
           endpoint@1:
-            $ref: /schemas/graph.yaml#/properties/endpoint
             description: Connection to the VOPL
-
-        required:
-          - endpoint@0
-          - endpoint@1
-
-    required:
-      - port
+    properties:
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output of the DWC HDMI TX
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
