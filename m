Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C41CCCA473
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NnpOY0RyOpBzgDhbARZrKrJk2wRQbKfJLj3RqQ3yvak=; b=C+YHu6qT3JMIgC
	31nHhWPkkMu2nABsLHj+PkHFqrdue8baiWsIHRWOKsk50+whwBy1JPJ51J4BT9QjTsNPJD0yEGkM/
	mz88E+/6k/BFWGbwou7j5EOrVYPgBvXkzRennTim3Rw2CuZBBhL63ZpJ46ZoN+p9rCYIC4cP9leLs
	nh+EZMX2AiTS1/Jm/u1cYeXSyUlqP/n0xlNxTX74FlX4OuEUDyBN9StE0hZMsBmB4A+drVaFmj82G
	JynJ91g6fF5AQk1tocwpSlUxBzJJ+O3MjP3ty4d9twH0tH/BmorfoGFMQoBPrmvycR11PXsY8AyT0
	GvF2Kq5JclwqhJBHW67g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73HR-0021VF-PM; Thu, 30 Jun 2022 23:09:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73H3-0020qq-6X
	for linux-rockchip@bombadil.infradead.org; Thu, 30 Jun 2022 23:08:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/22saFUi++8u36xnKKnWsw/0OWZjnmgs6BtjRqeliTk=; b=a270SkpRq17z2uIynR+brcotx/
	YTE3YgrLgx3ff59dGNyU+grDJKdJpOpA74wOtFTn7lfDV5HyAoAopBHZTFngXwibJU6qY9ljYJEYn
	EHmr3lcug6QK1ro14ss3TNq26R0lG3Z+Z9qoAf1wLVbfjc9TrITsULqGTogVTl7ffoiwGMCqWK5xG
	xWOaMF5LS/FaSuZligxiN2VUE3I2umEKHzOhx3W7IB2cf938XTgmDq4bB9EyAII/hChHHcQF2S5lj
	JvpJl/+KMphEmhQ+NRE7rjKmrs6vp6PTKxduzMXOvUFWKI4Ci3FHmeCodJTkTc+U3iOEDLV0swCzK
	Yyi7RoIQ==;
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73Gk-00FRLX-RQ
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:30 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 59ADCD24;
	Fri,  1 Jul 2022 01:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630484;
	bh=UO6yiqlbKWLK2QZVfa94bRYu5Tm4S6nvLjYgFBUA5io=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DANhgPIOXJeWsadSLN68WkSa7k+Q2amqpyTR190WXqMkPEHqwnIHNN8vxgZcgG1F9
	 Q+YPFYmg+kJcgXPjayOA0fbwPG3vriZ1bWJ4su8aT7AZxb14zvqnfMsQkiy5tVtJhd
	 VWjP0EQkSkePqrR8/C086jSKvuKrQX7ATJ1I16r4=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 42/55] dt-bindings: media: rkisp1: Add port for parallel interface
Date: Fri,  1 Jul 2022 02:07:00 +0300
Message-Id: <20220630230713.10580-43-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_000820_990032_50CC41E0 
X-CRM114-Status: UNSURE (   8.64  )
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
