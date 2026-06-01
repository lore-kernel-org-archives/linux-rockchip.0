Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AF45CD5BD1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 16:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90PKYp+c9iw+Aa6OT+op+vDXCQ8ljvdlAIqvK0fqK4k=; b=sytP+mLSmV9cfS
	X9rE5YoVDcn9ryT+9LTzHXYIvXAh4wEYnI6MtKU9MwIDJcmnS3ltVG66WNxbMgrkYtTRx0NhStqLC
	M5auP1SBbGo7mL3i6FA+MBcvU7T4oynn8VPU3iutbuseLMy9k00yfN6cwtzVP9nGlrK6dryAugZqV
	EtQfGoThyo2ZotS/g0i+I12tgYcAOzyivNLQ421+n07P9/PDUhvgCAHcJ2eZgmRwyrESeHXPyRBgT
	+Jz55RaiCr5cSZJBXtBeN9mDw1MYJYr55k3bWwUPTAMMDwCM/JZLU3ag8txNRi38ZpxCnUQMOE0B6
	Q3UWj2yVx+ie0DMJmw/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5Ye-0000000BUdo-2bHu;
	Mon, 01 Jun 2026 16:32:08 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5Yc-0000000BUbg-04v4
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 16:32:07 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7e6cfdc8382so183840a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 09:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780331525; x=1780936325; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FI9ZQ9CgMmpb7a0bvB8JNCWm0010rqvUn1D/bvnZnqE=;
        b=LPqOVsqDqSDgMhDQpoVG3t8s6fX69iY6oeWZuIWVMpZVGbagYT5MwNAhs4nhbtSkdC
         MnnH1P9yXEAJ5HxfrRHWKItvN4obyZNgg3btPi9GcWRu+C/67Wg3dwV400zTJIxmlzER
         QGKID3HCJlGD3CbkaQbK3bOjVwKx+eR7UybmOldtCD0eSeR1WnbC22ZPipwME82UQUPv
         oyl2WQNRZYAR4/O+tMt4SFP95hCQ2HcbKm7G7xIVVRweBIuBR17gdh/KF3Q9jnIDZ8ZS
         2ZUGhZ0C9UzGmIk4ZhChVDn0YCVhyoPOdDHvCy46yXtMpA3Zl8pDNsR6wEcDXO5P9nR/
         CcRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780331525; x=1780936325;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FI9ZQ9CgMmpb7a0bvB8JNCWm0010rqvUn1D/bvnZnqE=;
        b=LkdzOtxCDrW+P8cTT/YzNY5YytEE0NVi8j9nzxTJNlHWM4g1ekcEF8h3NK+YCX5Fnj
         qQ5ossEgzJQkum+fIfFUQ5vUGbbz4VmxihKnBAzHuCyYSTBS6Y64RXaAZmbAqhoog5pT
         c6/81DVMirHzZ/svmsyXH84yCJPiakCB1oFMJ8116bnmcl4HITvQL3cLlHWdDMtkRDqj
         RrtMTjD+R6mSCWvqLrlMlFGzq4tdbHUCdPQsXmRRRmrIfPv2+5ByCbQGiTzRPJWQgcMD
         WrlmDbOo5fm+lUSF+B4mGjwtP0AIJsDjwqIZgtnsQk4g2kuyJr1KoBrF9qEgQ7xtDKZ8
         XQvg==
X-Gm-Message-State: AOJu0YwxegGIlmrO08/7PV4cRi07ZXbihVoM7BmTkrbSjYVNThmH7kLH
	msu/ORcM7I1X1ZW0IZqdFwtMVbmxcSnPkg0vBQ73DhsyC4xtxQYqIEgAVrVtDud3
X-Gm-Gg: Acq92OHy4/uF9zeSyXQaAji1wOZAJ7O3dzqPlH/CLJfUVTmooR4nO+G8u0iejDFK1s9
	6ciFMHFc1tfpAa0trbndTUC7O9UlJ4gLaEUHndl5E/0oDoGYp84tTRvFAaC/aJkkE305xr4ABYX
	KTTK8qOq0SnucTNPoAFOgmu8/hazswSrhvVrhrjupJIGXhhzXQHJGACvXQw+ccE5oTh9x2NZFw5
	wB4Av0wk15MdvK9JY3uZOgBP/KYHMA1L3UIt+qRCfCA2VobxCFsQIGx46YkaVxI5HNXM9mTbIJk
	/y3DQ9kWmYYAMBkeLEhNeRIX23fCk0NNedUbWEbVaZR7YEziaAeCtELMag4whjDAP4iEedhCHk0
	cHprlcWOL/QSjt+Q52DNExvteyCB7ZsmuZK6YPZnBqqSh7KR0rLLgWUSUjVpQUGwOiM+fUUg6KE
	gK7TxshDU1UZSzYVJ4zX387Lyd3X2tciA=
X-Received: by 2002:a05:6830:6611:b0:7e1:e832:c8a2 with SMTP id 46e09a7af769-7e6a1eb2fa5mr7513680a34.19.1780331524980;
        Mon, 01 Jun 2026 09:32:04 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e695d69b20sm8024928a34.22.2026.06.01.09.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 09:32:04 -0700 (PDT)
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
Subject: [PATCH V3 3/6] dt-bindings: display: panel: document Anbernic TD4310 panel
Date: Mon,  1 Jun 2026 11:29:48 -0500
Message-ID: <20260601162951.254968-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260601162951.254968-1-macroalpha82@gmail.com>
References: <20260601162951.254968-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_093206_064461_FA7C0F7A 
X-CRM114-Status: GOOD (  12.11  )
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
 .../display/panel/anbernic,td4310.yaml        | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
new file mode 100644
index 000000000000..6f7f92b9c860
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
