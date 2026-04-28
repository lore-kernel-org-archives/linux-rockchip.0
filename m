Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10BDAFF8876
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 16:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6afLPda/213E8eQgv0S91URMQZdDY+L30eDD84ABVY=; b=o+vXjHn0QxH8YR
	BZQAfCf24U5vHgufbIOBLUohMvDMo31quLStCXWsmCkKfenlJeLcG15jwn559KRQVLaXHANMIKa2U
	VnYSQGLjpH/utNF+oG/1jbfO9sPzf0jl+H4D94szww/4Zgw2vrMrSJ1348kM812r51k7vRdEM2PsY
	18Iv3J8j+gikvBgJug1V0fqoVMxkKR54KVnDqaEfrPz4q6uajbpjJgdGxnVuO2d5chc7EVsll3zwx
	VkyS99JwyNf5OkciOvXdwWDJSv8PB+9JuQcBCvPnfMbgNJQQ3OMqMr6u+VhN1C2Wq/oYokuLaLTIX
	rbuWTc6Q5iu1HS7W7rlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHl4b-00000001skO-4BXd;
	Tue, 28 Apr 2026 16:14:10 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHl4X-00000001sfD-2Ev5;
	Tue, 28 Apr 2026 16:14:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777392841;
	bh=ZjzLsdPJD79HFPyUgKrqEvktCEnIt410bUBn0SzDAG0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=SAvdxOSK3lY36U6FdIKtJlJAk9Ct7CxzQ0TCgAIDYfSkFWSVHKDPBo6WPRyw1lS9j
	 S5+SNaBIky7/gloDjixH6N0qCwcl8CiJc64D+6ZeMP1ToQNNlkb+Kl64gTH8dhLqoY
	 EDybd8QxegFpo0zxV80UwzaadhlcI3sNhWTcXK/XOHpbV54doQLKatMRVWk+7TFwS6
	 AjSqtEPFoMjGsIpgTh2hOxmZKHB4CafzNEYiVPyoOkvEngHvcTlUMNTCM7uOLX+rNJ
	 w3Aqh64jWfnHdvw87k/tRnRKmrBF8Pb4+zoxmZzip5ICpQtDyo0f0+8WGO9e9Bgshg
	 ee/Zdz3a6P4/g==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C7A5817E1428;
	Tue, 28 Apr 2026 18:14:01 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 7FCD8480028; Tue, 28 Apr 2026 18:14:01 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 28 Apr 2026 18:13:40 +0200
Subject: [PATCH v4 01/16] dt-bindings: phy: rockchip-usbdp: add improved
 ports scheme
MIME-Version: 1.0
Message-Id: <20260428-rockchip-usbdp-cleanup-v4-1-7775671ece22@collabora.com>
References: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
In-Reply-To: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2240;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=ZjzLsdPJD79HFPyUgKrqEvktCEnIt410bUBn0SzDAG0=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGnw3MiW06eF2CJ3YxlsW4XbRigkSDGw5Wbt2
 Seox4GHVkt9OokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJp8NzIAAoJENju1/PI
 O/qaN0MP/1IgQDrZ4gaz6GsDh0Fuj+WpZJLRmOqaYHg78eAD+OtsD/JEoX13NS660PzV+qgGspS
 QmcICbjUJZlHo4LUBjy9OtV+0Q+03nEdpLn2KNNLsAM8v4ViyyoIlgw/U19Wk0SC3zXLC4aSTTH
 MvwfCLhYxQQ5N7qL9rXAaCYCL9sWL9JBE8w9vl/lf+MZp4ezYN+1jhovjHGnEm0uDnDEtsylp06
 LrPcthUFc73xs01d5MyegVS9McSi6YcN9g+99514ryLBDKfHYpKA/rXfu0QslPqN4BsUXuUgaMV
 bLxUKTiqdXt7CqNgbaJarJ0yA7V7T8vCzYfnkWqLQn3v42EK8sHy1T8kszFE+/f8y2bnRme0Frv
 BWc0bXkgyKyC9e2WuTYJ2i4au/97RbnVLSFq9FaP+TYzy2JOaUVTlnpP3NXknasN21q5o2noBmQ
 JQgcTD+4ndUHEMMmgrYzGxmFnhN+IIHFVcbxDcNmBMbHouUaKvExUrz5w7GzAr/HiKXThPVpdF7
 4+Tm0QH/pR8YIDuHKzYWCLREC4U7Bb5Q1n947mehzkvI+jyx2bNgeuyQVpyEIl3o/M+q6qBxQPy
 Wv7SXuicO3tQyGzZyKwKE5K//uC3A4anMDdrcl0nZ4wGmzz9MnP2vFOBNNnOuvrvH3H2L7kmJ42
 Pa/cY4ee1CC/RuJOTU0837Q==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_091405_727883_F7D53D0A 
X-CRM114-Status: GOOD (  12.73  )
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

Currently the Rockchip USBDP PHY is missing a documented port scheme.
Meanwhile upstream RK3588 DTS files are a bit messy and use different
port schemes. The upstream USBDP PHY Linux kernel driver does not yet
parse the ports at all and thus does not create any implicit ABI either.

But with the current mess it is not possible to properly support USB-C
DP AltMode. Thus this introduces a proper port scheme following roughly
the ports design of the Qualcomm QMP USB4-USB3-DP PHY controller binding
with a slight difference that there is an additional port for the
USB-C SBU port as the Rockchip USB-DP PHY also contains the SBU mux.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/phy/phy-rockchip-usbdp.yaml           | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
index 8b7059d5b182..f728acf057e4 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
@@ -114,6 +114,29 @@ properties:
       A port node to link the PHY to a TypeC controller for the purpose of
       handling orientation switching.
 
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Output endpoint of the PHY for USB (or DP when configured into 4 lane
+          mode), which should point to the superspeed port of a USB connector.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Incoming endpoint from the USB controller
+
+      port@2:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Incoming endpoint from the DisplayPort controller
+
+      port@3:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Output endpoint of the PHY for DP, which should either point to the
+          SBU port of a USB-C connector or a DisplayPort connector input port.
+
 required:
   - compatible
   - reg

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
