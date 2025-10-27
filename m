Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B85A6CCF9EA
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 22:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qSQqEfiIAkhg+Qr01XP1TYz3BYtPttC+VKt1SAJUq8M=; b=WJwEAE7BOpz4tP
	24iI5CIXAAHVZgI6+T+sGKpev8KV40lE1rdLfIQG+e2YBPDJ8qaUMJfTAbKYvDOHVZV14/LQBvyiG
	jIrU62/Op0LsV7vmszQiZ6ELyMjmpZmpfwW96zMwETONZCo+m/Y0m/2pEXgKNiyzPWYPyxXyiA879
	LkvAVj+LwZgNOfXkPDSmAmpUa5M29iiSkj4L3cCIUl7IlcI/djxQt9aXf6xlT6jJVo0i3U1SXzZmd
	Z4xagBys4O9Lq7Axt5asw0kqttvO7dcA780SU/0e70fetQT28k3oM2JFsIVvL8L6eMp63obtVi6pC
	Pp6lrZLJl4lkSUGbF3rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVgA-0000000ErvK-3X5B;
	Mon, 27 Oct 2025 22:27:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDVg3-0000000Err2-16Do;
	Mon, 27 Oct 2025 22:27:00 +0000
Received: from pendragon.ideasonboard.com (82-203-161-16.bb.dnainternet.fi [82.203.161.16])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id D038B1787;
	Mon, 27 Oct 2025 23:25:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1761603909;
	bh=wvr1vKMUZPjj0dzmUyfZ+fuKpCrMsRq3g94+kTspoWI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LOIJ6W5Nu4B4dDmw0gf6PCuSe8B4A0dlqNCsCt7TQQoTX3jx0DpzXvfiHn2M2Yk2Q
	 RcTH359X92BqzoyvghvpeIq2Et7Oc6/2Hha/Xmsdx3TRBUwA7WQ/NMTgiVuv1Ezy9M
	 V7lCIAYZuQ5OXA+Kz3w3YCsFJ/pjDXNCQZ1PNkOk=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 1/2] dt-bindings: display: rk3588-dw-hdmi-qp: Add frl-enable-gpios property
Date: Tue, 28 Oct 2025 00:26:40 +0200
Message-ID: <20251027222641.25066-2-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>
References: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_152659_440216_89800CF3 
X-CRM114-Status: GOOD (  12.23  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Add an optional property to RK3588 HDMI TX Controller binding describing
a GPIO line to be asserted when operating in HDMI 2.1 FRL mode and
deasserted for HDMI 1.4/2.0 TMDS.

This is used to control an external voltage bias for HDMI data lines.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Co-developed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v2:

- Rename tmds-enable to frl-enable
- Replace "level shifter" with "voltage bias"
- Describe the behaviour when the property is absent
---
 .../display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
index 96b4b088eebe..d649808c59da 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -113,6 +113,14 @@ properties:
     description:
       Additional HDMI QP related data is accessed through VO GRF regs.
 
+  frl-enable-gpios:
+    description:
+      Optional GPIO line to be asserted when operating in HDMI 2.1 FRL mode and
+      deasserted for HDMI 1.4/2.0 TMDS. It can be used to control external
+      voltage bias for HDMI data lines. When not present the HDMI encoder will
+      operate in TMDS mode only.
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -132,8 +140,10 @@ unevaluatedProperties: false
 examples:
   - |
     #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
     #include <dt-bindings/power/rk3588-power.h>
     #include <dt-bindings/reset/rockchip,rk3588-cru.h>
 
@@ -164,6 +174,7 @@ examples:
         rockchip,grf = <&sys_grf>;
         rockchip,vo-grf = <&vo1_grf>;
         #sound-dai-cells = <0>;
+        frl-enable-gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_LOW>;
 
         ports {
           #address-cells = <1>;
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
