Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A95CDCD4F48
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 22:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXx3MtYBDU3jeUwLiZcC6/7C6xQBXe+MQjMwB+6vj1c=; b=DxTjTtM2mQIO/4
	9Wg/ZPUJvP2vYcJqzXtCR6uj3Ggf12bW8jxeGiMUp+JnW9evtN4P84Jvi9kDDyo8PlVA1nFTYZ+Fl
	olaKpCK7ugrUn5al+ZkF0HwISqchcbNfuYr+AgwC1oH9eIxdA4zllRh32qDfojifp3z/uKzYwdsyl
	EBtBw/ZgrEGsDOh5s+22HGLNGW3NH/V1TutrThoB+ZraYM7QN+Ib6Gm6qqdrR7moQefMA8Zx76HHb
	niN8kc0MU8W7d90xQ9FT4EOh4h97fCdmjdklbyMUOhz29ryRk7Q9XiOFAqCwfO16ClXYadDxIfrsu
	s8WJ9YYHkKCGJNjQ74oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wO0vE-00000009cV8-3nCs;
	Fri, 15 May 2026 22:22:20 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wO0vB-00000009cSx-49j3
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 22:22:19 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7dcdd23fcdfso180980a34.3
        for <linux-rockchip@lists.infradead.org>; Fri, 15 May 2026 15:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778883737; x=1779488537; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vksn7Gv7ZyAP1o/PWJvqV/RwhuiEZ2klCh9+NbtllHk=;
        b=dBJnNu83p61WRHtBtOXyg6eiIQXOBRFyaAUPqepSA5LsyO6dMMw6vovbcS3JuzfGRz
         aDF3bLbyBmqBQLrpvu6uXT/K2OJQtzXopNkEmcb8IpRurVWC920/euELdIWsw+Ry8BGo
         mJ81OXgri+qUfVb2StA+3b42NcA6ssZQ094csMJkojF+v/8QXArC55W2QA2yELCmAFcH
         ZCXErJd3q7MC8yMDeZMmGn4njU+ZxqlYyM02ZJ1Hmf3KHlcwFCC4SzeBXbmGo1QYDy+x
         rH2Hyj/J7aomGdmE4Nasjn5r17Qv6U+xUJA8jHzQZsDFjMhokQtotJitTBkgKC2UNBer
         UeoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778883737; x=1779488537;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vksn7Gv7ZyAP1o/PWJvqV/RwhuiEZ2klCh9+NbtllHk=;
        b=TQTvnW+mfGFwvPodWibwbaSdQ95wv00rwF0Thbb2wnQNu+utAl7y7057PSuRJXbYuv
         HDlgT1Wkmqm3soOZSAisviTv7L73n0SCRJrjLZIOQEDMTuE7wrQwbdMegy9VxED2KOxF
         jAD7W48Ur3sqWZsmEq+MIoD7VQyUfOKl/V0NgU3xgmQOPrxghyzLjaOOEwsVZhe0+F2n
         NcQpSDkNxoybnVrGol2JebueriUHeMHcoxrLdRlfg31WPoAQ9ROjx++0hzLju57zuUNk
         pzrbY7EJdyQVdU7dPTZtWY0e2LYhJxgHTcfkpqCO7Bwp/FscnWJiF8YjX3tLC9Zy5iOi
         o8JQ==
X-Gm-Message-State: AOJu0YyQCzalxvnwz0utHTg6y1UBTWEAXM3gn21EVQ+7vlSizOZKH81a
	7333OwMIo+1gMZH1lo3fX+xmIjXEHoX2Fuzg3OAiggyzEfSE///9LgBGKwEGpdQ8
X-Gm-Gg: Acq92OE78L6uCOXz2He8SChMK35YoZF0NwQGjhNj+pHteVjHnE1RMJqy3SWLQXzvh3C
	FiZAokC2AHUakoEDpo6bFEWKgeowF67OiXb04rQpHaSa9CAuL/P00Nd2mlya6t2qrhFMo2Scd1m
	BRJ+Sa8yG300I56DpcwDETTZalxXkoQnbRLe+vEVXZNek5CdU2UptWglWjxhYfwIJYGEqDXigdg
	M2OxEDVxqnWDi7bhf8K3WmrLV2Ef4NpgKN9UTP7JZbFZt4n1nNRp3JXXNe8dN10sU72DUtcmu70
	ZqKA+H9guQ4NsYjF6ORcoOqCVIsOExl38LVY5qp7l665LVdOFvuH4akHi0GIe3SkKJ8zAur7CV2
	OFhjWeO1lw3UhuxkLXqgvuJ0xp5KZH7SS3dRR/woUwi+09r+AuK4V+12sZ3ElttFTgusCKpku9c
	+xHDbXma0wgnNZioxbHU+X2kJBQtCIRoJWQS9KLOpspA==
X-Received: by 2002:a05:6830:4c04:b0:7de:60fa:6203 with SMTP id 46e09a7af769-7e4fa0a2e7dmr4121976a34.26.1778883736877;
        Fri, 15 May 2026 15:22:16 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:8c2e:6a8e:445a:9169])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e568c0d889sm980764a34.9.2026.05.15.15.22.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 15:22:16 -0700 (PDT)
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/6] dt-bindings: display: panel: document Anbernic TD4310 panel
Date: Fri, 15 May 2026 17:19:44 -0500
Message-ID: <20260515221947.299229-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260515221947.299229-1-macroalpha82@gmail.com>
References: <20260515221947.299229-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_152218_039455_2BF551E8 
X-CRM114-Status: GOOD (  11.50  )
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
 .../display/panel/anbernic,td4310.yaml        | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
new file mode 100644
index 000000000000..5068dd6b2d52
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
@@ -0,0 +1,64 @@
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
