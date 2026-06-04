Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA97FCD6E7C
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 22:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90PKYp+c9iw+Aa6OT+op+vDXCQ8ljvdlAIqvK0fqK4k=; b=3DLRaRKywaT8HI
	aViiZU4RB7Hs22YANb+5IgxfaD/nRDx1/t1JDYNU1NHwuTjMr1MLhAyZFl1FcOfQy70XH6jtEBeWz
	oqHDpKPSJ5uGL+JhorFCHelFU2tWas5s1Bf0+L/lsvmGw7/Rv9AdFNSAJecGZQWRjQkMTZlu4NtPs
	qu8JkjCjUIwSInQQMFiC16w+l3FN4o2UM00eii63UgpzbmtvW60hL8derE4MMG+hGZP/MhoBC28S0
	4Ukz/coAsiIKYhl6Q8Zhrn5bo4srwGN1rA/h0aVkhdafVD/TEwT0KKcOqVeX6ahxrGh0pmwc99Gop
	NGOS+6vOmu0vULEwBPxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVGGl-0000000HO2K-3X6e;
	Thu, 04 Jun 2026 22:10:31 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVGGj-0000000HO03-0KTJ
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 22:10:30 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-69d60694c9bso742503eaf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 15:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780611027; x=1781215827; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FI9ZQ9CgMmpb7a0bvB8JNCWm0010rqvUn1D/bvnZnqE=;
        b=cS/bwMY/08tDo+0V3c9RyNDd/2xQSorF86fIbLcrSFyHkP2eWLQNKU8qkn1qBY3+qo
         6ewALfTSWE7c+TE/fV2J+ySoCSbwuSnIySu2H9rv1wTNqUcOqwKwBy2IajGVeJN6CNQT
         USx6NnHVKPkgpE3kB75ub0wfighhqpfq6dUYDhV1eTnn1Rr4l6jSZWIeQulxQOAJCtbT
         Be8Tn+NXAHHuDtDrM7MGWT9/2CHzTHfWlSjDuJVU9hS27XlGul0hzhzypw8FTLPoOAqY
         yUUDH+ib9jYT7dt5M3ekBZQsbSMlaKOhGUBNPojUddKYtFU1hkzn07WvxWYo6SyMkHKo
         qvlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780611027; x=1781215827;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FI9ZQ9CgMmpb7a0bvB8JNCWm0010rqvUn1D/bvnZnqE=;
        b=JShJNRYoFJwuirousqa96kiiz8h5nbDpLsSVcf1wFhl4L+6KFnikjggvpFFD3YXVXd
         g2oaIJoHn8sQjX9LqnQcI0m0EKr2J20sFlwZmuNK7K5X2mwmVopsKX4UnChhzIxCL2cX
         QcXxX243d1WNugId3/x1gJ77t0uLvMc/06WvhXtd2hhDs8UbuZJ+cw8BYyHdywbCGd3r
         iw02OyPAWkj9G3ghyQE7WNGm/cCGYgEpGtL7tdlFVcg/fpLwR6Uk4BBNrbvX7SBIEZBA
         x4EGImAathhdzpFOiKTPiJbQoizfPbl6lcDqxhR2zy9q4HKHAwrF9lj8bj/BnL8tfTyp
         rAzg==
X-Gm-Message-State: AOJu0YxBa1LjwPbMBltsv9xcy9bPkJy4M0Or0gtpvzBR8Tn1XHwdPjty
	pcUAv7O16/Ypfz2a4pSMKn0Wcfdwq+ElZmLbPSze0zcv1bl38EYO1vMpahYrbAYU
X-Gm-Gg: Acq92OGi7Or7PUbfio9Wr0ijMejfEKcPBFsW+u/hgdvL5uIrg+34KHOHRqjZsme5AVT
	ZYBQzi/gCJsCDfSigp2p9cN/48vTglkMiM6v62G84HVCotJtbsAttlKkr8NBx1VIBbUjteWRn0S
	95ENI7ZHUHzI6ldE0vHm5Ty44mI/RkjgVQJEE6SBKLLNJyggbmNMJh8axY5RdMatO4PSNQSJymu
	HydDax7fRWdQibWTFNGuPesw/8M/SFQnjTZZ8JGdjZh3zD4T4BXpgdyQRDswA6MQypQ9B0E2AGF
	AWJv1AXHPrnZdD4kuevYhl4ZbcKEvvJdLzfjIXMvG49Kc2cPRvb3WS+ohsQbBQ1n3JHhTfcB144
	SRRfjto3ueGrPDZwcd7/VhIPf+zNqwxvo7E4xSuDO3TbtNlksOW0k0kT8eaHCNknHGWRsdwX2CF
	OT/rAfo+Go37nQpZamBm3ZbcOgSt1rR10=
X-Received: by 2002:a05:6820:1844:b0:69d:ff30:172f with SMTP id 006d021491bc7-69e68b5f811mr585576eaf.21.1780611027662;
        Thu, 04 Jun 2026 15:10:27 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d84c0ce2sm6802987fac.16.2026.06.04.15.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 15:10:27 -0700 (PDT)
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
Subject: [PATCH V5 3/6] dt-bindings: display: panel: Add Anbernic TD4310 panel
Date: Thu,  4 Jun 2026 17:07:58 -0500
Message-ID: <20260604220802.119107-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604220802.119107-1-macroalpha82@gmail.com>
References: <20260604220802.119107-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_151029_144295_A419638D 
X-CRM114-Status: GOOD (  11.76  )
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
