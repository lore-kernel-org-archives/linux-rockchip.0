Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D4EAE7719A
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jan 2025 11:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klzpCAeGqaJbEZmzScTCFgPJLHuTr8IHEs87hntPA/E=; b=L8zzK6X5XUE3sY
	FE3r1tFqTx7qtSxR7DPg1LWT0azl/Oft7aML1tJp7jMH8b1My7Z/pylz1DMxoScepWdMeZLhqcSXL
	gmQ4/1mjXirPf6rh5TSpmKtAI4+H3+ALvTp9fufJPK/o3MiEjdE/pP7y+9zR+VuOAlgSVX6W2vsgN
	6R5foR0v4yX4GG8LS44q8PkAoIhNyKvZ+/fKdsUsdB7/ltNBsQQ9s1Fi9+zJze79lw7sFy+KcOuKa
	78XSMMgE8QqzCTBZvirw2I71VG9qrm4XLU3VxWPWzy6hnTFko4xiTqtoIT5VZxXY8pHBFUwSOv+nL
	b7IeWt7ivl4eWiPR83Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWZoq-00000000i8u-1AZE;
	Sat, 11 Jan 2025 11:38:20 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWZeO-00000000gRu-26FT;
	Sat, 11 Jan 2025 11:27:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=oT3+l
	QUlUtqK6wnvq3Muqk9KCni2Wv2r7XbwAAlne7U=; b=KffB+74kaQMLhww73Ha+8
	39HY2T0W98P9KHPLygZbnIprPWQ7xElYkdx28HYigDIDO1Khd5iqeLiKX1k2+KdG
	cgPD5d16Zvfk5oP68aBFJqOeG3Z2oYhFw3jQNswrbVPE8FprRDWRm06XdJubHX+P
	eo7Hgs+nh/VHBLVHMb7kHk=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-2 (Coremail) with SMTP id _____wDn36JYVYJnnIeyFQ--.42561S12;
	Sat, 11 Jan 2025 19:26:38 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	daniel@fooishbar.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v11 10/11] dt-bindings: display: vop2: Add rk3576 support
Date: Sat, 11 Jan 2025 19:26:08 +0800
Message-ID: <20250111112614.432247-11-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250111112614.432247-1-andyshrk@163.com>
References: <20250111112614.432247-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDn36JYVYJnnIeyFQ--.42561S12
X-Coremail-Antispam: 1Uf129KBjvJXoWxWr1kWFWUuF4UtFW5trWkZwb_yoWrAFykpa
	93Ca4DX3y8Gr1UWw4ktF1rCws5tFn3Aw43Crn7ta17KwsIqF4DGw4agr1DAr13Wr47ZayY
	9FsYk347GwnIvF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UG0PDUUUUU=
X-Originating-IP: [103.29.142.67]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQnRXmeCVFASugAAsm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250111_032732_969212_F9CEA101 
X-CRM114-Status: GOOD (  11.09  )
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

Add vop found on rk3576, the main difference between rk3576 and the
previous vop is that each VP has its own interrupt line.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v11:
- Remove redundant min/maxItems constraint

Changes in v10:
- Move interrupt-names back to top level
- Add constraint of interrupts for all platform
- Add constraint for all grf phandles
- Reorder some properties

Changes in v9:
- Drop 'vop-' prefix of interrupt-names.
- Add blank line between DT properties
- Remove list interrupt-names in top level

Changes in v8:
- Fix dt_binding_check errors
- ordered by soc name
- Link to the previous version:
  https://lore.kernel.org/linux-rockchip/6pn3qjxotdtpzucpul24yro7ppddezwuizneovqvmgdwyv2j7p@ztg4mqyiqmjf/T/#u

Changes in v4:
- describe constraint SOC by SOC, as interrupts of rk3576 is very
  different from others
- Drop Krzysztof's Reviewed-by, as this version changed a lot.

Changes in v3:
- ordered by soc name
- Add description for newly added interrupt

Changes in v2:
- Add dt bindings

 .../display/rockchip/rockchip-vop2.yaml       | 97 ++++++++++++++++---
 1 file changed, 83 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 2531726af306..a2a6369c7b6f 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -14,12 +14,14 @@ description:
 maintainers:
   - Sandy Huang <hjc@rock-chips.com>
   - Heiko Stuebner <heiko@sntech.de>
+  - Andy Yan <andyshrk@163.com>
 
 properties:
   compatible:
     enum:
       - rockchip,rk3566-vop
       - rockchip,rk3568-vop
+      - rockchip,rk3576-vop
       - rockchip,rk3588-vop
 
   reg:
@@ -37,10 +39,21 @@ properties:
       - const: gamma-lut
 
   interrupts:
-    maxItems: 1
+    minItems: 1
+    maxItems: 4
     description:
-      The VOP interrupt is shared by several interrupt sources, such as
-      frame start (VSYNC), line flag and other status interrupts.
+      For VOP version under rk3576, the interrupt is shared by several interrupt
+      sources, such as frame start (VSYNC), line flag and other interrupt status.
+      For VOP version from rk3576 there is a system interrupt for bus error, and
+      every video port has it's independent interrupts for vsync and other video
+      port related error interrupts.
+
+  interrupt-names:
+    items:
+      - const: sys
+      - const: vp0
+      - const: vp1
+      - const: vp2
 
   # See compatible-specific constraints below.
   clocks:
@@ -120,43 +133,98 @@ allOf:
       properties:
         compatible:
           contains:
-            const: rockchip,rk3588-vop
+            enum:
+              - rockchip,rk3566-vop
+              - rockchip,rk3568-vop
     then:
       properties:
         clocks:
-          minItems: 7
+          minItems: 5
+
         clock-names:
-          minItems: 7
+          minItems: 5
+
+        interrupts:
+          maxItems: 1
+
+        interrupt-names: false
 
         ports:
           required:
             - port@0
             - port@1
             - port@2
-            - port@3
+
+        rockchip,vo1-grf: false
+        rockchip,vop-grf: false
+        rockchip,pmu: false
 
       required:
         - rockchip,grf
-        - rockchip,vo1-grf
-        - rockchip,vop-grf
-        - rockchip,pmu
 
-    else:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3576-vop
+    then:
       properties:
+        clocks:
+          minItems: 5
+
+        clock-names:
+          minItems: 5
+
+        interrupts:
+          minItems: 4
+
+        interrupt-names:
+          minItems: 4
+
+        ports:
+          required:
+            - port@0
+            - port@1
+            - port@2
+
         rockchip,vo1-grf: false
         rockchip,vop-grf: false
-        rockchip,pmu: false
 
+      required:
+        - rockchip,grf
+        - rockchip,pmu
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-vop
+    then:
+      properties:
         clocks:
-          maxItems: 5
+          minItems: 7
+
         clock-names:
-          maxItems: 5
+          minItems: 7
+
+        interrupts:
+          maxItems: 1
+
+        interrupt-names: false
 
         ports:
           required:
             - port@0
             - port@1
             - port@2
+            - port@3
+
+      required:
+        - rockchip,grf
+        - rockchip,vo1-grf
+        - rockchip,vop-grf
+        - rockchip,pmu
 
 additionalProperties: false
 
@@ -184,6 +252,7 @@ examples:
                               "dclk_vp1",
                               "dclk_vp2";
                 power-domains = <&power RK3568_PD_VO>;
+                rockchip,grf = <&grf>;
                 iommus = <&vop_mmu>;
                 vop_out: ports {
                     #address-cells = <1>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
