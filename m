Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84015C10F07
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 11:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kk5YhPKfmz+u+caY6vz93D15TjovBmanc06s2CBUp/w=; b=ySorEc1iTmOUv7
	zQjgLJHfZOKbUZpOPcRFYOxBaZR+Z47upswHcL9wptw7J2hd43ILzUudV7yPw6vOwAdN8C9x11mHy
	xG7w0B6kicGpn05UP5kBLyyQwDIKfNAiLY/MsNzTv7spaLBHiNQF0QNkjpnraEeiGhXylLlaVnYMg
	DHMEhI0wTgWHYJAhhcgOvWT4LtAtYRL+VVwzhF3J/FoXHTAhzVJMy8/r60dgakuX9s5aCAjpheGkp
	dO3K8ff21CczRvLOpeFGtjHWC+zfXZGULB7CoNKoHn8QfaYjaGJVqF1k4QcmyXLa3jbbPMS3fKOuD
	MGu5kzyQf/nlpoMyzYaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCeww-004mN1-2V;
	Mon, 11 Dec 2023 11:59:51 +0000
Received: from m12.mail.163.com ([220.181.12.197])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCewT-004mDz-1S
	for linux-rockchip@lists.infradead.org;
	Mon, 11 Dec 2023 11:59:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=RAY85
	vW0eZ067YcH3KySYDrKU07gygVkucbXL81kK7Q=; b=NQoceVUXnczOA5LnD0Yir
	7rKlDs74rEl+EqdMaL9Ty5NVnmMiWvM8I9OxEdwWyzR6nHJ9vCSE5fYI9BAScrbg
	NnVSl/G1WxGAjPNgFqILDt1uHWt2u5EOfETv/Rbt41g/hPtfWnrjd4PdcSfWzwQR
	aUaD7k7LxGiyw3x4QlwnKs=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g3-3 (Coremail) with SMTP id _____wCnd+N7+XZlVD6+Dw--.13391S2;
	Mon, 11 Dec 2023 19:58:55 +0800 (CST)
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
	Andy Yan <andy.yan@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 10/16] dt-bindings: display: vop2: Add rk3588 support
Date: Mon, 11 Dec 2023 19:58:50 +0800
Message-Id: <20231211115850.1785311-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211115547.1784587-1-andyshrk@163.com>
References: <20231211115547.1784587-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wCnd+N7+XZlVD6+Dw--.13391S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxAF1DWF13uw13XFWxCw47XFb_yoWrKFyxpa
	s3C3W8JrZ7Gr13Xr4kt3WrCw4SgFn5Aw4jyrs7Jr43ta1aqFW0vF4akwn8XayUCFn7Zay2
	9FWUua4xJ3W7ZF7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jw4SOUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnARDXlghl75eowAAso
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_035921_896031_55A5C1B0 
X-CRM114-Status: GOOD (  12.34  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v4)

Changes in v4:
- drop redundant description.
- use full stop at all the description's end.
- address Krzysztof's review in v3

Changes in v3:
- constrain properties in allOf:if:then
- some description updates

Changes in v2:
- fix errors when running 'make DT_CHECKER_FLAGS=-m dt_binding_check'

 .../display/rockchip/rockchip-vop2.yaml       | 100 ++++++++++++++----
 1 file changed, 81 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index b60b90472d42..2531726af306 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -8,8 +8,8 @@ title: Rockchip SoC display controller (VOP2)
 
 description:
   VOP2 (Video Output Processor v2) is the display controller for the Rockchip
-  series of SoCs which transfers the image data from a video memory
-  buffer to an external LCD interface.
+  series of SoCs which transfers the image data from a video memory buffer to
+  an external LCD interface.
 
 maintainers:
   - Sandy Huang <hjc@rock-chips.com>
@@ -20,6 +20,7 @@ properties:
     enum:
       - rockchip,rk3566-vop
       - rockchip,rk3568-vop
+      - rockchip,rk3588-vop
 
   reg:
     items:
@@ -27,8 +28,8 @@ properties:
           Must contain one entry corresponding to the base address and length
           of the register space.
       - description:
-          Can optionally contain a second entry corresponding to
-          the CRTC gamma LUT address.
+          Can optionally contain a second entry corresponding to the CRTC gamma
+          LUT address.
 
   reg-names:
     items:
@@ -41,45 +42,63 @@ properties:
       The VOP interrupt is shared by several interrupt sources, such as
       frame start (VSYNC), line flag and other status interrupts.
 
+  # See compatible-specific constraints below.
   clocks:
+    minItems: 5
     items:
-      - description: Clock for ddr buffer transfer.
-      - description: Clock for the ahb bus to R/W the phy regs.
+      - description: Clock for ddr buffer transfer via axi.
+      - description: Clock for the ahb bus to R/W the regs.
       - description: Pixel clock for video port 0.
       - description: Pixel clock for video port 1.
       - description: Pixel clock for video port 2.
+      - description: Pixel clock for video port 3.
+      - description: Peripheral(vop grf/dsi) clock.
 
   clock-names:
+    minItems: 5
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
-      Phandle to GRF regs used for misc control
+      Phandle to GRF regs used for control the polarity of dclk/hsync/vsync of DPI,
+      also used for query vop memory bisr enable status, etc.
+
+  rockchip,vo1-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to VO GRF regs used for control the polarity of dclk/hsync/vsync of hdmi
+      on rk3588.
+
+  rockchip,vop-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to VOP GRF regs used for control data path between vopr and hdmi/edp.
+
+  rockchip,pmu:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU GRF used for query vop memory bisr status on rk3588.
 
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
-    properties:
-      port@0:
+    patternProperties:
+      "^port@[0-3]$":
         $ref: /schemas/graph.yaml#/properties/port
-        description:
-          Output endpoint of VP0
+        description: Output endpoint of VP0/1/2/3.
 
-      port@1:
-        $ref: /schemas/graph.yaml#/properties/port
-        description:
-          Output endpoint of VP1
+    required:
+      - port@0
 
-      port@2:
-        $ref: /schemas/graph.yaml#/properties/port
-        description:
-          Output endpoint of VP2
+    unevaluatedProperties: false
 
   iommus:
     maxItems: 1
@@ -96,6 +115,49 @@ required:
   - clock-names
   - ports
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-vop
+    then:
+      properties:
+        clocks:
+          minItems: 7
+        clock-names:
+          minItems: 7
+
+        ports:
+          required:
+            - port@0
+            - port@1
+            - port@2
+            - port@3
+
+      required:
+        - rockchip,grf
+        - rockchip,vo1-grf
+        - rockchip,vop-grf
+        - rockchip,pmu
+
+    else:
+      properties:
+        rockchip,vo1-grf: false
+        rockchip,vop-grf: false
+        rockchip,pmu: false
+
+        clocks:
+          maxItems: 5
+        clock-names:
+          maxItems: 5
+
+        ports:
+          required:
+            - port@0
+            - port@1
+            - port@2
+
 additionalProperties: false
 
 examples:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
