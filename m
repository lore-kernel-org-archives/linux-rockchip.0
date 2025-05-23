Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 111C0C3DA6D
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 May 2025 08:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HBAhmFJm5I80FxcDJgkcytb0YsEAQ62GlHfqEgZf3K4=; b=cC/yFOAcPqeIJK
	T1aQJ0S8Fjud3W2xnOWCKQRu3hkCtHnN9svI6VqJvndjf2/JiRA1U1G7Ix4blLeU/G4TgsqvLmZIT
	MXL2jjFmqkRLUsbWx2m3l92khBbDP9+ly6ah32PgMEusu2iLnf/R1GS6H1mXU0tsGRoLdsZBeFhd/
	KVytwhj6rpo6Fqykg2CqUbbX5xfdKK8v3jGT8QDW/gu+/6IcKjuN5UOsGvkdnCenGpBVstAZ+x9Ya
	h39ZF+pAxrMhbsOdzf3jWsPKUoFoYk+5qDU268hjeyRxTXWwGfszVMH32uDt5Viq5dLRF5inwa9ek
	rmnXEQ5VRE2GK95irvtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uINMX-00000003Fmj-1PTG;
	Fri, 23 May 2025 08:02:41 +0000
Received: from mail-m19731110.qiye.163.com ([220.197.31.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uINEk-00000003EZX-0H2K;
	Fri, 23 May 2025 07:54:39 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1628045cb;
	Fri, 23 May 2025 15:54:25 +0800 (GMT+08:00)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: zhangqing@rock-chips.com,
	mkl@pengutronix.de,
	kernel@pengutronix.de,
	mailhol.vincent@wanadoo.fr,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	cl@rock-chips.com,
	kever.yang@rock-chips.com
Cc: linux-can@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 1/4] dt-bindings: can: rockchip_canfd: add rk3576 CAN-FD controller
Date: Fri, 23 May 2025 15:54:19 +0800
Message-Id: <20250523075422.4010083-2-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250523075422.4010083-1-zhangqing@rock-chips.com>
References: <20250523075422.4010083-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR5NSlZKSEhJTB1CQx5CSUNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96fc22df3003a3kunm893a9d4d11dad6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OiI6Nio6OjE3KhUVEh9LDihC
	TQ5PC05VSlVKTE9MQkNNQ01MTUhPVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlOSUI3Bg++
DKIM-Signature: a=rsa-sha256;
	b=fhxsDPqDmyusPeEvA2QgLAU3lNNOfwIHpFA2l7M3CowNzau62ci9E+z4ZnE3Y4eYvC/9uvHXk8vDS12xFTP3R9ggakF8GPpARpsTj57ID/eTRZ+bdU+oZu7u7zj3yuJvgF35fzpe97vQBeotN4bEaMhMUDncd0eNnm121v008D0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=+khz/o7a5PPghtgkY2ZXtUUFn068QElniJYEgmUtOrI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_005438_279978_069A152C 
X-CRM114-Status: UNSURE (   7.32  )
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

Add documentation for the rockchip rk3576 CAN-FD controller.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 .../net/can/rockchip,rk3568v2-canfd.yaml      | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml b/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
index a077c0330013..e5dfce382061 100644
--- a/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/rockchip,rk3568v2-canfd.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     oneOf:
       - const: rockchip,rk3568v2-canfd
+      - const: rockchip,rk3576-canfd
       - items:
           - const: rockchip,rk3568v3-canfd
           - const: rockchip,rk3568v2-canfd
@@ -43,6 +44,13 @@ properties:
       - const: core
       - const: apb
 
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    items:
+      - const: rx
+
 required:
   - compatible
   - reg
@@ -72,3 +80,19 @@ examples:
             reset-names = "core", "apb";
         };
     };
+
+  - |
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        can@2ac00000 {
+            compatible = "rockchip,rk3576-canfd";
+            reg = <0x0 0x2ac00000 0x0 0x1000>;
+            interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&cru CLK_CAN0>, <&cru PCLK_CAN0>;
+            clock-names = "baud", "pclk";
+            resets = <&cru SRST_CAN0>, <&cru SRST_P_CAN0>;
+            reset-names = "core", "apb";
+        };
+    };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
