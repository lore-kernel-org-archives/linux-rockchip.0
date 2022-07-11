Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0969AC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlRVUSORSTsJOV6pXvkki1FgBODNZFoeDK+xQ9ecGHw=; b=25vmkpFyraS+k1
	oe6zla/E/rwdn3b1C/Gkl/GGLFMCB/AFUwpWW9sFsRZOTlyqTFcpZ6Us15xLJJPQw7kap0xvHiJy2
	WxNDp+J9o5pmU+9ZPglPDMagBZ1VIttYYEY8GHRtPGKjl9jkK2hiHuNYwBB1O6lWAgOk43aybHbsW
	JIzsvwT0gzDBiLTi9phyiOKjZQospA2Ee+ZGx9/29w7onOYHhD+942VykrcDF6R7m1iLN26DfrRZb
	98AKXsUjFhtWedTpNJhJDn1AbEuKiIRApTaTF7nR7HAVOJn6ttJ+oJ+9uR4ehuQQJ2BNK7owEBDgR
	xYsgf1x9H+rS+X7S+E3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAszd-001h2D-LP; Mon, 11 Jul 2022 12:58:29 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAslO-001YLW-Tj
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:48 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id F00473076;
	Mon, 11 Jul 2022 14:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543425;
	bh=9O9qm/GG0TdsuX8AYtGx5SWfGCLxUcmP14qduepqjKI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GroFzjH/VCZ+ABkRZHr6JhKOudG184Yd/WrxUEjvoalZGadjXnpVlvoVzmGzg0/NN
	 VwK8h1wS9KjT6MPAn7Ns8PT8k8fbSlMUqCEM1Hq97NJsv3CSsiCqvJm/eow47ZIGmR
	 XcofZTJ7f0BQDAVMEaDwcjjVys3iuaNYiv/5AUrI=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 42/46] dt-bindings: media: rkisp1: Add port for parallel interface
Date: Mon, 11 Jul 2022 15:42:44 +0300
Message-Id: <20220711124248.2683-43-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054347_178980_B1217DD3 
X-CRM114-Status: UNSURE (   8.59  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Paul Elder <paul.elder@ideasonboard.com>

The rkisp1 can take an input on the parallel interface. Add a port for
it, and update the required field. At least one port is required, and
both may be specified.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/media/rockchip-isp1.yaml         | 23 +++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index d1489b177331..b3661d7d4357 100644
--- a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -84,8 +84,27 @@ properties:
                 minItems: 1
                 maxItems: 4
 
-    required:
-      - port@0
+      port@1:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+        description: connection point for input on the parallel interface
+
+        properties:
+          bus-type:
+            enum: [5, 6]
+
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+        required:
+          - bus-type
+
+    anyOf:
+      - required:
+          - port@0
+      - required:
+          - port@1
 
 required:
   - compatible
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
