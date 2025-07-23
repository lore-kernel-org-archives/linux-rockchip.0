Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E54EFC83F17
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 12:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HcdRYHvU6bFX544nhxw63McFdG4yieLgpzvFWZUe0s=; b=tnqk+xg7v1IjMX
	vsXubZRCpzg8Nvzkv02s4RDdRkr+QM0ceuWlIh/STvJSTa+8gJ5qUxwmcC9hou/0DvDW4qSKa07SG
	aUmOFOw4dVZ0xd9Ai+ys2NaPrAEdM/VkGC2PC1j9vH1SkUipUbsnjveZl7GbarD1meTEPes/bvc+q
	Nh/fPRhnH+3dHkKfYsczY6l1EfSwXBDe7uITV5jiNGE9zuRO34AiwnTWoDi0Ht95eRCmPqIP5b5B0
	u5SQtrd2wVsCQz2sjTZwvcw9cRAN0RH079B9PQffLk0tQOhLmNhi/7Dt+bn1Xb2dXcuQMfLwb76gu
	oIah9DVRdQ34zvNXWPDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYcv-00000004uuW-2quW;
	Wed, 23 Jul 2025 12:31:17 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYVh-00000004tkS-083J
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Jul 2025 12:23:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753273428; bh=pMeef0fMgt0XkMUkuWS4WfbRrZLUJjrcEoP7+ycSlXU=;
 b=gt3mjeeNQhvs7R6Dc3ljoBVnzdrRELWUXh5yD/E8bdAbug3XmOopMH3IGVv8RnHca3YfWpv6s
 YUeMqniI40+gd7jTm4ByGDi1gJAfAn3pX7FcKX/mCPZlUGQm07X8W4ORpRMYBmmH3Ajchyb1+Hj
 /vmauz8zHX1p6IcQmZEXba/tbix7TUbkq27vefw2iNGmQT0HFtmi8QK3rwZqdfwKg/4lXTkSpQY
 j2CD67NFNZP8TPs4DVAD3qupWj+ZU0McBE8mlszqr2SVzkgkC1t9LCak3w/6vNf4yw5a+muNJfd
 Ws3pd8QZmgnUiTKX/HSgY61DPOqUeTz/A7mElZO5P1sg==
X-Forward-Email-ID: 6880d44ecb0ee86f9731a087
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 03/11] dt-bindings: phy: rockchip,inno-usb2phy: Add compatible for RK3528
Date: Wed, 23 Jul 2025 12:23:01 +0000
Message-ID: <20250723122323.2344916-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723122323.2344916-1-jonas@kwiboo.se>
References: <20250723122323.2344916-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_052349_111289_4A371BB8 
X-CRM114-Status: UNSURE (   8.90  )
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

The embedded USB2 PHY on RK3528 is very similar to the one in RK3568,
the main difference being that it only uses two clocks instead of three.

Add compatible to support the USB2 PHY in RK3528.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../bindings/phy/rockchip,inno-usb2phy.yaml   | 30 ++++++++++++++++---
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index b95c9e3e44fe..f50fc69fbbe4 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -20,6 +20,7 @@ properties:
       - rockchip,rk3328-usb2phy
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
+      - rockchip,rk3528-usb2phy
       - rockchip,rk3562-usb2phy
       - rockchip,rk3568-usb2phy
       - rockchip,rk3576-usb2phy
@@ -41,11 +42,15 @@ properties:
     maxItems: 3
 
   clock-names:
-    minItems: 1
-    items:
+    oneOf:
       - const: phyclk
-      - const: aclk
-      - const: aclk_slv
+      - items:
+          - const: phyclk
+          - const: pclk
+      - items:
+          - const: phyclk
+          - const: aclk
+          - const: aclk_slv
 
   assigned-clocks:
     description:
@@ -65,6 +70,9 @@ properties:
     description: Muxed interrupt for both ports
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 2
 
@@ -150,6 +158,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3528-usb2phy
               - rockchip,rk3568-usb2phy
               - rockchip,rv1108-usb2phy
     then:
@@ -218,6 +227,19 @@ allOf:
         clock-names:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3528-usb2phy
+    then:
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          minItems: 2
+
   - if:
       properties:
         compatible:
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
