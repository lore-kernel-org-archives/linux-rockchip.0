Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71212CD6E79
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 17:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNN6ynIMAYcRJcKXYxQxnEzb8h+Tr5CBdnkXqbXWtnA=; b=oGGv3uVelYpRfY
	KN3qRyBlN/Xjh+HHKv4c3bRzyNwMRdgr0ZfSamsVvYfv8Gk9DpxwCbXHtdMEtDvh+UiQAbmVu55tW
	gGFcXSqwYT7ruDH7mb8pryj3erPPzHSm8zaJJkYVbL1bCH8xO3OJ4/OAGIP/MEvoRMrq1m6Fe5nY0
	pvt+GcODMjWZijPeKtWYFs6pxcp58Ef0wlnd8G+q/tL2SRfUdv+tZhS3Jh4MROZX5V//9Eaz7XtLg
	reEOeeO2dC8yWYvWpLsTyMdijYn0y2gp8Idl3HmEa/vmaXY419uUOl8LI3DwUStNFy/pzkBgQ7o5c
	HJQIa4YYPMr8CI9tGeow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeEG-00000004ERW-1PP1;
	Mon, 08 Jun 2026 17:57:40 +0000
Received: from mail-oa1-f45.google.com ([209.85.160.45])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeED-00000004EQL-2sLh
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 17:57:39 +0000
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-43b7e186a0cso1743287fac.0
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 10:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780941456; x=1781546256; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=30zAwmg3oIaQnbQVRTHeWC2+fYihHaBtueim4W7iSKM=;
        b=KKc/hFoNyclz9HbahNodngdiRAEqkr84vTWRDBCSoq/vIW9xWDA3AN1PuwXePo3VRg
         B1mR5cdoA3WNSJk7JirrJ0A+Mg7yl82TRh0GklkZKsAF0Wr2nploiQohtrA0H5XlCXNk
         yptf87/BCEijPTiR6nrP9DhA0RGWKC0+rTODLBEUJWLW00nEMZtQ7Q1nwt27vceYmVvT
         9gvD2p+7j61o47BhWjZai1+DfHb10D+5C6I77hMOVLdhZqNudetchN5HDk3AEb6ZEKYt
         L/+6AOwU8Mr8fEWp/jMfRCfjo/9VytfJIhgE0cX5IEsaMs72/c/zmDVyfNnvoaXO1d6W
         iVrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780941456; x=1781546256;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=30zAwmg3oIaQnbQVRTHeWC2+fYihHaBtueim4W7iSKM=;
        b=EtgUX395awWv0MZTluHqVJ+W6fZnVM9ViXe4OLiHXXkEVNkbCTcMCn3tDi1AlmuW6j
         eA7yi33P+wcEGc97zUhCL0+tPSwsh7Q+3JBRpk4AEccP5dz4kuV9MLolv7NhLMJzPoGX
         oujx2miOIYSWR9eyA1FZzNPGUJ8VJhvttgmMZOLFGOcCFuOhcclsulgt7IBwmwobsAgX
         EMVPY95vcJAy2avIp5CegwIyIKuL5QLNPBZxxmEDugHFKusEiYxnInVMPm+9RuXxDK7+
         9+gHUatTFdyVB4oBQFzERUlsHI0nZtKwg/ifyAh5RX5aoH+8kcwm4V6smRtrMWC0JY4q
         D2YQ==
X-Gm-Message-State: AOJu0YxmXpwt636g+qwRAEXdTZzv+PyM7Kr+ClDxkEehMM4UmdJxH2ga
	0X5Tk1isgb8K+wq/REWdWpoVibm1LNfuXWgYp3VGnNe576Yew8JsmZtC5q4kN2cQ
X-Gm-Gg: Acq92OHzazzf3A6YgTgQ07A3FOWR/J1rBpon4/N3fvTqcNaXX+xJEhgn3aE3mBxJdX2
	+YmlNXMm4kWe7G9byMCL3VamU3/OeC9FRxgKlXHOgu6kFhmPsyRPygSs2pHj2/X9Ba4Qi9xrK7k
	EJ/Kaf7v32Mh+8nM8z9QNqZpD5Hjnr0qjwP4lR3UCoHjMTUNBj0BcmuRKxtRbFpaprmXT8pm96p
	l3NUWHG3LhonCOvyPSB0CDNblfGO/sAralneFXu2qGxkCAdEHq4WvgrzwZfOPgtuzLRglQvIwBH
	JRznIksBU6inpS0v8DdAQgRSW+iHhJ4NNZWwO/M60jrzZjo2GBgZi4H2Qf6uXBaPvX1KDmFxLDb
	TjDrXACzyjma/0sgXHmC5PyinIJUnqKg8iOm75AzbK0SbKKwflqk20OS8y1ea1cpT0eG/RU3xDQ
	ZSla7F+YYeP16gjei8as3IiD8KZDG16clZgDNfcuyxAw==
X-Received: by 2002:a05:6871:2306:b0:43b:9922:9df2 with SMTP id 586e51a60fabf-4413da47a99mr9050381fac.21.1780941456353;
        Mon, 08 Jun 2026 10:57:36 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d8297395sm15214316fac.11.2026.06.08.10.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 10:57:35 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V6 3/6] dt-bindings: display: panel: Add Anbernic TD4310 panel
Date: Mon,  8 Jun 2026 12:55:18 -0500
Message-ID: <20260608175521.67449-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608175521.67449-1-macroalpha82@gmail.com>
References: <20260608175521.67449-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_105737_731009_A2A7AE0E 
X-CRM114-Status: GOOD (  11.64  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The panel used by Anbernic in the RG Vita-Pro is a DSI panel based
on the TD4310 controller IC. It measures approximately 5.5 inches
diagonally and is 1080x1920 in resolution.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../display/panel/anbernic,td4310.yaml        | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
new file mode 100644
index 000000000000..f820dc2f732b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/anbernic,td4310.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Anbernic TD4310 Based Panels
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+description:
+  Anbernic TD4310 Based Panels, such as the RG-Vita-Pro panel
+  (a 1080x1920 5.5 inch panel).
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - anbernic,panel-vita-pro
+      - const: anbernic,td4310
+
+  reg:
+    maxItems: 1
+
+  vdd-supply:
+    description: Panel power supply
+
+required:
+  - compatible
+  - port
+  - reg
+  - reset-gpios
+  - vdd-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "anbernic,panel-vita-pro", "anbernic,td4310";
+            reg = <0>;
+            backlight = <&backlight>;
+            enable-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
+            rotation = <270>;
+            vdd-supply = <&vdd_lcd>;
+
+            port {
+                endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
