Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A87CC3DA7D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jan 2023 19:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlEeHObhnr8djHMQv+Gh/TwAX6JmHvVlVdzzrZ252iw=; b=aEWOgc9lCLSJLi
	devR95ylHSJuS71eopjlkzJ9iP7ymJOnZkpmZ4pqG94jdOItQpyZO350rcR2NvE8vWXvYHYF4oygs
	dNgoTm4ITIl4p7SOzf0cS6Kgd9mfxnnoz+Tem0VXn2yRiTJ5zE1ir+mMcYFGTH8dLbK7vDygWCsdd
	pcPEyRJ8OD7NPJ4i/9V+z6BhdtrdR0qPYZ1I22GgIJftfoQKRJLe01WWyHAjt/NbedW4Xlr1PSfRB
	2u4Y/JxxpXlKS/D/mWNYW2w3j2VHfiIaZwJFPy+rFsLFEsRUokbU5ayWlxC6FMiR9mxUoCYsDQqEJ
	mkn2uEvV6pYsQWq7JDtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCmtB-004Mon-O4; Tue, 03 Jan 2023 19:23:57 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCmd1-004Del-IS
	for linux-rockchip@lists.infradead.org; Tue, 03 Jan 2023 19:07:18 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-150b06cb1aeso8294678fac.11
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Jan 2023 11:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5MuYdw/TKmmfACRBxYwGpprkKtsguH2MTUAVNosMrsw=;
        b=kCw1vFAqU0vOuAxLd6aONFgPfYzmkCnXAWMT+lfy4TFXsBwNUTQJ1jYj1bIrUnyn2Y
         1aY1fpLXO74CXwF+7MkLee3dpJHfFxg+x5EKCrVJ9iICb1jpdzf0QCPIQNLoBZTlMKSX
         Tbc90nZFV2Uazha8Iw9dH2GDJ5oT3VOuOtO5+Vd8iXdCaDiFKt56NomcyuHtsZmX98Ts
         DB5X3b3QepmSUOpL+co467we//ClPMgSpRWwEskeHpN1cSdaEHrgwYgiGeBvz69BLOR5
         8/g0E5Sq5rU3WdgKf0hnBEu+9tTGuxryPOdzE89rn16ZYBYVcTsiafCdXOIkhD4dIGtt
         OOvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5MuYdw/TKmmfACRBxYwGpprkKtsguH2MTUAVNosMrsw=;
        b=i1+55NeJERQXwHE6s7IptWX2BKka2wkbeMqGBPdhRai3TjmLtWxL7igwz1rne/vRJQ
         /+HFz3vmcD6SCbryzqMr6LTf+CnyaMnVwMVXftU21ovQ7KDbXDVuBP9Z2HBooBZSR8eF
         3zQe5eNKOmyntNxzdi2BRhYVhopIHatpqJHXltxAaPRBbMaOImJJi2YLjpKI+YEHqRra
         qWqyLUt78446AG1RpJ1k64OgTg+c0ridN9UuV3q6a/M2zE7lZGhAYotB1O+6aLx1ZPaA
         SCYeJBUwcH2N8bmXW0zT1UHQQ5KmrevnhpuA1Z3+mIAJ7BmWNDUsZuURtqhddTexf2Rg
         v40w==
X-Gm-Message-State: AFqh2kpRc7pVX/rSD9pHAc9FXxuv/4RtqhgM4oIGQbp2ekRtly3Z3c2I
	Q9ocr/Md6Hc5GwX+1xtohf0=
X-Google-Smtp-Source: AMrXdXvoonL3R80H8i+/5RbEGmxtPYYCMHqfwWOtt9cFbwYpUqfQV7IVBHwhJz7jTfGfEKFkdFfm9Q==
X-Received: by 2002:a05:6870:889b:b0:143:e0d7:7427 with SMTP id m27-20020a056870889b00b00143e0d77427mr24294519oam.17.1672772833500;
        Tue, 03 Jan 2023 11:07:13 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s24-20020a056870ea9800b0014c7958c55bsm14752207oap.42.2023.01.03.11.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 11:07:13 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maccraft123mc@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	thierry.reding@gmail.com,
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V7 2/4] dt-bindings: display: panel: Add Samsung AMS495QA01
Date: Tue,  3 Jan 2023 13:07:05 -0600
Message-Id: <20230103190707.104595-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230103190707.104595-1-macroalpha82@gmail.com>
References: <20230103190707.104595-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_110716_046114_E1FA419B 
X-CRM114-Status: GOOD (  12.45  )
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

Add documentation for Samsung AMS495QA01 panel (with Magnachip
D53E6EA8966 controller IC).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../display/panel/samsung,ams495qa01.yaml     | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
new file mode 100644
index 000000000000..58fa073ce258
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,ams495qa01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung AMS495QA01 panel with Magnachip D53E6EA8966 controller
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: samsung,ams495qa01
+
+  reg: true
+  reset-gpios:
+    description: reset gpio, must be GPIO_ACTIVE_LOW
+  elvdd-supply:
+    description: regulator that supplies voltage to the panel display
+  enable-gpios: true
+  port: true
+  vdd-supply:
+    description: regulator that supplies voltage to panel logic
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "samsung,ams495qa01";
+            reg = <0>;
+            reset-gpios = <&gpio4 0 GPIO_ACTIVE_LOW>;
+            vdd-supply = <&vcc_3v3>;
+
+            port {
+                mipi_in_panel: endpoint {
+                  remote-endpoint = <&mipi_out_panel>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
