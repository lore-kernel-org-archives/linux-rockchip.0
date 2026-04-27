Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5AE7FF886B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 17:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJST+daaGswGx/QriOf1l/QjyRz/QTjRouO2bvIKxd8=; b=Q0YniPGHIol6fb
	aFZZRVFZnM/UWDJTRVMk3kAJmdYhkYP0dRaA2Hz8lW386YGaj6MTMJbtIGVuTPqH3Oura47O+373D
	xsehzN8XqhiRfTAZxDozfwWlb8XqO3zXWJiPWS3pdvVw9LgyFAl5wveZ6bcxrYbi7MzGX1GHz5gww
	OGDNEBVwtO5m3053R6qne9oLw4MPh1MAmtu6F2DBKDHBl5xHngBJsKl3hnpUDtM0QeLgPVtvo/6JL
	dGqeGq3NgrYvgFRJxBbUZl9ZtqpDO/aQGnIPskjRjmqBw2OGBNt9E9qLYijinmSGcD0jegiR7S7vQ
	bmVkj1Q2Dy7jkpLbxhWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHPUr-0000000HPiP-1zCY;
	Mon, 27 Apr 2026 17:11:49 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHPUo-0000000HPgP-4887
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Apr 2026 17:11:48 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-4779b2497b4so6010905b6e.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 10:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777309905; x=1777914705; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qm0WgPLRhpaE+/n98mlMN9+6F5W+8cs8HRYLALKl0Vo=;
        b=EF4HoI42rd3JCf72z+otdpGtuzJZcuXcbhcHRpSBIDQlo6nbXfH7Srkf2nvgW0J2tK
         PXepeeVUvLZMm0w6brRYOevcG/TmHTzxSIN2Cz60bvyDr672OoJgamY5n5GPBdIlKoWC
         47dnLB2M6pWBhjEtVN5wfSwW4/XlsBGdAOF+gsJQYA398e6zj8dxAfRMqfnqy2RlYDWL
         Gnn4iPGsjiNvXSxNIIeXx82wRkqq/wE/ZeZqS+aaAP9Z21BYXTtYBGmmzJK6MNMy6bVv
         +Z3V/r8TA1LcrNz4i54fLh5sAJlQ34rS/7u2NbyyBhMlMrcFJI4/pwIPta+dz/eHm/yF
         epEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777309905; x=1777914705;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qm0WgPLRhpaE+/n98mlMN9+6F5W+8cs8HRYLALKl0Vo=;
        b=h9Kl1l1rBZju6of300KRogKrON+f5AEGVDUekWNKmPjP216yRtMvBfkEhSnNYB4Byv
         hr/uPXy2/mcSbx3sXBnwkNJO9TD5uVxK2ovmgPgkHYT3l6j3TIPYbczT8mwtaewCbnd2
         i/Ic6wNI87RfKRjiVNBEzAeR59hlutBvcgT7bF7SOJ/vawENwlYP9mhxqFRKMGS3YTtw
         +1d9zsUNSSCFLqhfl+MGGI76D9VKX8XYOwZ8gzfokMV+ncVP6YOaOY3QrH7lVlldZdl6
         JMSHBb1/FiKDc4uJbTdjqUI+sFnfixxEN6ftxDYXRAfc3hqIF8ovh/AOP2VdzwmMh0wt
         CVSw==
X-Gm-Message-State: AOJu0YzED9aFvCpLjLwVDYlPj6iHbFC6wM4sPlLlXycZi8Fb1jx93IUu
	fwSKtKvyqGK1edCARUGA04lzzi2mZARbpFwNyeOTL3SIxj/ADVVq3UGWbm4+iQ==
X-Gm-Gg: AeBDiesqRcjcrHJp5YMwBKww6dpK/AUn9wFJi3k4QMxA35fQB/AtseS/DWqOJSPUWM5
	nwMF9AvoDq52bZXGUwICBb5VrdSf2CYkDPBV8pwOf931lDA/nQoOBdt7oNt6weW4dQZCl/qiR2z
	3VI3LDemmQUgbLBuu+P022u0VWtM9QsMASHNV1UNO91J09ER/ru13CcbCB7Ixs6+Kxbis0Sfc+b
	sgP75FeJxc+3lomDinGoRCWJZDCjnqaLrGuikIfgwKwq6aAFw12gDgBwas1pbaQRkTBdZWv2UEM
	uM0E9Hv6hKTBK/uQccksWyq5q3tUK7X4goG511Ae6AptfxnnGEXynqDLAlZ3u3NP1PkIuVvHVTB
	BSanEnQhlkQW0XA4ngGiJEfAl/E0/NNbBGDDfWvu5q/jKUvkO/PtRl7/m1O5UtV7y8aT7NMtsPa
	/zYLuqeyHFcmNanJY4crcic6bQz54AgF0=
X-Received: by 2002:a05:6820:1996:b0:696:1dbd:9827 with SMTP id 006d021491bc7-6961dbda16cmr10887373eaf.12.1777309905398;
        Mon, 27 Apr 2026 10:11:45 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6955036558esm10261236eaf.14.2026.04.27.10.11.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 10:11:44 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/6] dt-bindings: display: panel: document Anbernic TD4310 panel
Date: Mon, 27 Apr 2026 12:09:11 -0500
Message-ID: <20260427170914.5062-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260427170914.5062-1-macroalpha82@gmail.com>
References: <20260427170914.5062-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_101147_028758_45764A0B 
X-CRM114-Status: GOOD (  11.88  )
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
---
 .../display/panel/anbernic,td4310.yaml        | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
new file mode 100644
index 000000000000..2da957cd5d49
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
@@ -0,0 +1,63 @@
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
+  Bindings for Anbernic TD4310 Based Panels, such as the RG-Vita-Pro
+  panel (a 1080x1920 5.5 inch panel).
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: anbernic,panel-vita-pro
+
+  reg:
+    maxItems: 1
+
+  vdd-supply:
+    description: Panel power supply
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - port
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
+            compatible = "anbernic,panel-vita-pro";
+            reg = <0>;
+            backlight = <&backlight>;
+            enable-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
+            rotation = <270>;
+            vdd-supply = <&vdd_lcd>;
+
+            port {
+                panel_in: endpoint {
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
