Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96BE7C61D97
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 12:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fA/Ug1IFwzkECW7MTXs4kX8i0TQOvao1dUT7WLvPXk=; b=JLkBs16b2NQKyd
	KPpi/kvWsGtDfZ025Bv9HzT0z162yXgFDx7sX1ilPTLjDrYMnDaAMGtShtT5h6K5HPOrzFvTdkqaY
	2QZkfBVqQR1JbrKqHIk3qF5N49TlegV1HLDAn/dumOoQXsDYfI1HkyU+l7aMg704xj2SKiI8YU6zz
	QIwJeqv5PuV21fySPPiPMbH4jnhP4INgTBs9V/cnq5KuXyzOuSsn86eBar2OGjp7SHjrJi+ElC9EX
	xD0m+4VFgQHSD/zgb+ZNUzRHK+nkwNOOfcHUIzIgzuwh218w8UeZYYa0sMXMcxyn8lPELAPjwM9wz
	SNt7Unlc122IEZZJJiZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mlf-001sW3-1v;
	Wed, 22 Nov 2023 12:55:47 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mlb-001sU3-1d
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Nov 2023 12:55:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=xHZcH
	nUWCgGoIT8dFdu6cImkI1GzZO+m/2tSo8tzkIM=; b=hudgzrCbZuT2bhueDLOxH
	hbJC4zhzUFXT/ZvxfvOjQtoFJB6ZIcdNOQKV0tfCfxaM4A5T5O4bHAT6hQR7iImm
	lua2NeP7JjZBNoS7F0xcX3Y9/NDYW9mYY8KAABrcsT1SA7P6zLoMdmkTMDoKClWd
	JrJOtbzP4hAyKEstE284/Q=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-1 (Coremail) with SMTP id _____wC3P7s3+l1l+dXuDg--.53227S2;
	Wed, 22 Nov 2023 20:55:23 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	s.hauer@pengutronix.de,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 08/12] dt-bindings: display: vop2: Add rk3588 support
Date: Wed, 22 Nov 2023 20:55:18 +0800
Message-Id: <20231122125518.3454796-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231122125316.3454268-1-andyshrk@163.com>
References: <20231122125316.3454268-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wC3P7s3+l1l+dXuDg--.53227S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7uFW3uw15XFy7JrWfArW7twb_yoW8Kw43pa
	s3C3W8JryfGry7Xr1ktwn5Cw4agF1kuw4UtrsrXrZxta4aqw40qF4akwn8WayUGFn7Za42
	9FWUua4xGF17Zr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jzBTOUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiEB4wXl8YMqa2bQAAso
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_045543_908143_35D1A4DD 
X-CRM114-Status: UNSURE (   8.81  )
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

From: Andy Yan <andy.yan@rock-chips.com>

The vop2 on rk3588 is similar to which on rk356x
but with 4 video ports and need to reference
more grf modules.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2:
- fix errors when running 'make DT_CHECKER_FLAGS=-m dt_binding_check'

 .../display/rockchip/rockchip-vop2.yaml       | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index b60b90472d42..24148d9b3b14 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -20,6 +20,7 @@ properties:
     enum:
       - rockchip,rk3566-vop
       - rockchip,rk3568-vop
+      - rockchip,rk3588-vop
 
   reg:
     items:
@@ -42,26 +43,47 @@ properties:
       frame start (VSYNC), line flag and other status interrupts.
 
   clocks:
+    minItems: 3
     items:
       - description: Clock for ddr buffer transfer.
       - description: Clock for the ahb bus to R/W the phy regs.
       - description: Pixel clock for video port 0.
       - description: Pixel clock for video port 1.
       - description: Pixel clock for video port 2.
+      - description: Pixel clock for video port 4.
+      - description: Peripheral clock for vop on rk3588.
 
   clock-names:
+    minItems: 3
     items:
       - const: aclk
       - const: hclk
       - const: dclk_vp0
       - const: dclk_vp1
       - const: dclk_vp2
+      - const: dclk_vp3
+      - const: pclk_vop
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
       Phandle to GRF regs used for misc control
 
+  rockchip,vo-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to VO GRF regs used for misc control, required for rk3588
+
+  rockchip,vop-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to VOP GRF regs used for misc control, required for rk3588
+
+  rockchip,pmu:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU regs used for misc control, required for rk3588
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -81,6 +103,11 @@ properties:
         description:
           Output endpoint of VP2
 
+      port@3:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Output endpoint of VP3
+
   iommus:
     maxItems: 1
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
