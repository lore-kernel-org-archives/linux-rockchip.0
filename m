Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F764F54ABA
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 13:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5P2udQGTLRmU6ABS6pZMnygTR4B1lxAKc9W5h0LBBvQ=; b=V75gZwj1NG4T2t
	Rso9TF0rjd3YytYK08uMs29zczeNPpSbMFjAOMEQ/ZExZos8cKzSg79v6l6vkW7XltrIwK0iCNLmu
	eCbG2figRfFtQua1rqr9DoPQwlsXpK2IDwdkapjb6oVXAlDGtkrigliPYGYCGm28DIxpye4Vvj/Qr
	EL/mzYm1nP/G5g8+kvmnxM+YtWAjETZNuWBDfjoD9FENsrdNUwDtwaNKh77myXNAencir0nZD1abC
	VTqwqUwnkudj1KSHO7udfm7TjmWwt6jhRjsFtlcKhRr39XP/QJaPxPbL2T3QRQLMBwdEE2297bU4q
	M67v3a2XEvl01EHp/wcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w52EE-00000001alL-1f0G;
	Tue, 24 Mar 2026 13:55:30 +0000
Received: from mail-vk1-xa2b.google.com ([2607:f8b0:4864:20::a2b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w52EA-00000001ai9-1pvV
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Mar 2026 13:55:28 +0000
Received: by mail-vk1-xa2b.google.com with SMTP id 71dfb90a1353d-56ce15c6898so1224998e0c.1
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Mar 2026 06:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774360525; x=1774965325; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5nh37Pt3GbzjBTjgr+edrZlsjGKmow/H+jwHdw9iYPc=;
        b=KKhTTFOtDZXjifRilnumeQYFdyCt5Xq0YrD8EshgEPhUzq8UZSpD0xTJk00jB+CUAc
         KTlKcEud0hAx3+8x9nbVsdcZYr8lOKsbg6/cUZsH21f9viwb5R6ynR4ySkPntWsDYpiF
         RB6Qd10ZrHFw6+Mikev9D7tjJYdF/Er1F3AePCRv2Vzwu3uQoDGeQCrIMBNCPSkkCaOI
         qlw26Z92RYeTiQBZsVS/lIL9TcpGTyv+Pd3k0S/Zembc+kWNdha5z5FczDWGd9ubMUli
         Htc5mKP8QzJufCrSGmHvH1FDk1xpa5fGEFWqlKKCPZ8iUvfJm7JJZCJwyVtRUNMdhMW6
         WjyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774360525; x=1774965325;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5nh37Pt3GbzjBTjgr+edrZlsjGKmow/H+jwHdw9iYPc=;
        b=SnTLJTBnIG3gjHtG5zeQF8ON1aOOvP+21KCjseowrDNsIkuW73nmlZPXx20bosVNqw
         a1CwfyyHcAmTECJ5xVy+gD340eMFsnUfu4d6yMZnInKQIYKgFRIKfVuy0ALHxz1XtMbE
         ewAdaMRuJkU44D0zo0ZwLPTLpxZFKXuWqUIUQkMYroPlKpFA+G6VL+3CmGpnkJEgdlwB
         PQkqw7IWrOSoERpO/y892jHymJoaTQpO94Nac8np3hCEYFzCcORSsCyI0NtSZhLxeAdI
         /QUHEnZMoC4lU9OWGkl5bBMo7wOrE/PfDM6U6kyRM1jsj1Tpb1rzm4rn+DB5hJcT9VtE
         x3gg==
X-Forwarded-Encrypted: i=1; AJvYcCU9kN+rbDnufbLkP8pU1dvxm/ReXfn3x4caNuCI0Q3kP8R0MjJaXQe1jiQql7V7quix5XHv/2AOaWDoOZBT5g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxyfSXBiGF2BmFwcytIXwrhwDTFgF5mZ0gGV9vOr6QsneZQKk31
	s9c3fe04T2Tn3Ki5eW1XDn6W0Ma5F0XNofdSjQTxnvb+EuNFsYbCswyH
X-Gm-Gg: ATEYQzxM/62kCN1TZ7tgkCtvw3I9e8+Q/ENLX02ghuj9W8eXH8w4FpY9tdTxivR8FCd
	BT5ZYzxfutEyetP0OEyfJ0pNljK4nLw7ob87PnEYfe6OhMcD7y5gzuZma6VYltGU4RbIBaMW1W+
	F7T/ygNsMXIJ2zVAGfGAbVXl9wyAvZjSZIujasdn/MM34DvwPEhV2+ZFXlf7OULax2GcP3JNjio
	LPeou4FIxnMDkLWX2fLchVzMfSqzMqFFtZrLgBjmazpjJYHuuhSAtvpDKwqbKarMNkTMEHZ81SD
	2xwmG7oqeY4Z0xO7l7BtaW1zaK+Wu2oqCchL42yn5/oWzkGI34lm2PS+WN9ozqVoQUUpDwq3xX3
	VzUJo6mK8G1fFkSgD26vb77oRYEof4mKG8pT0nRJaJ02ZCvYZTyZ59Buv6V1e+8/Y//WHO2PHDI
	uNaaNslRAFOLfswexLjnBkoEM+f55ZF3FmAjpyvmxyBObM8JJLsbvdNqMC+ZcDj+axVErcjg==
X-Received: by 2002:a05:6122:3a0e:b0:56c:da22:6921 with SMTP id 71dfb90a1353d-56cde35a597mr7936243e0c.5.1774360524552;
        Tue, 24 Mar 2026 06:55:24 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:91c4:cdb6:8a02:47ca:2dca])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56cddc7f882sm15529418e0c.9.2026.03.24.06.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 06:55:23 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: broonie@kernel.org
Cc: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] ASoC: dt-bindings: rockchip: Convert rockchip-max98090.txt to yaml
Date: Tue, 24 Mar 2026 10:55:08 -0300
Message-ID: <20260324135508.839142-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_065526_516157_E1BC35F9 
X-CRM114-Status: GOOD (  14.13  )
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

Convert rockchip-max98090.txt to yaml to allow dt-schema validation.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../rockchip,rockchip-audio-max98090.yaml     | 59 +++++++++++++++++++
 .../bindings/sound/rockchip-max98090.txt      | 42 -------------
 2 files changed, 59 insertions(+), 42 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rockchip-audio-max98090.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/rockchip-max98090.txt

diff --git a/Documentation/devicetree/bindings/sound/rockchip,rockchip-audio-max98090.yaml b/Documentation/devicetree/bindings/sound/rockchip,rockchip-audio-max98090.yaml
new file mode 100644
index 000000000000..5630652aa4c2
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip,rockchip-audio-max98090.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip,rockchip-audio-max98090.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip audio complex with MAX98090 codec
+
+maintainers:
+  - Fabio Estevam <festevam@gmail.com>
+
+properties:
+  compatible:
+    const: rockchip,rockchip-audio-max98090
+
+  rockchip,model:
+    $ref: /schemas/types.yaml#/definitions/string
+    description: The user-visible name of this sound complex.
+
+  rockchip,i2s-controller:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the Rockchip I2S controller.
+
+  rockchip,audio-codec:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the MAX98090 audio codec.
+
+  rockchip,headset-codec:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the external chip for jack detection.
+
+  rockchip,hdmi-codec:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the HDMI device for HDMI codec.
+
+required:
+  - compatible
+  - rockchip,model
+  - rockchip,i2s-controller
+
+allOf:
+  - if:
+      required:
+        - rockchip,audio-codec
+    then:
+      required:
+        - rockchip,headset-codec
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    sound {
+        compatible = "rockchip,rockchip-audio-max98090";
+        rockchip,model = "ROCKCHIP-I2S";
+        rockchip,i2s-controller = <&i2s>;
+        rockchip,audio-codec = <&max98090>;
+        rockchip,headset-codec = <&headsetcodec>;
+    };
diff --git a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
deleted file mode 100644
index e9c58b204399..000000000000
--- a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-ROCKCHIP with MAX98090 CODEC
-
-Required properties:
-- compatible: "rockchip,rockchip-audio-max98090"
-- rockchip,model: The user-visible name of this sound complex
-- rockchip,i2s-controller: The phandle of the Rockchip I2S controller that's
-  connected to the CODEC
-
-Optional properties:
-- rockchip,audio-codec: The phandle of the MAX98090 audio codec.
-- rockchip,headset-codec: The phandle of Ext chip for jack detection. This is
-                          required if there is rockchip,audio-codec.
-- rockchip,hdmi-codec: The phandle of HDMI device for HDMI codec.
-
-Example:
-
-/* For max98090-only board. */
-sound {
-	compatible = "rockchip,rockchip-audio-max98090";
-	rockchip,model = "ROCKCHIP-I2S";
-	rockchip,i2s-controller = <&i2s>;
-	rockchip,audio-codec = <&max98090>;
-	rockchip,headset-codec = <&headsetcodec>;
-};
-
-/* For HDMI-only board. */
-sound {
-	compatible = "rockchip,rockchip-audio-max98090";
-	rockchip,model = "ROCKCHIP-I2S";
-	rockchip,i2s-controller = <&i2s>;
-	rockchip,hdmi-codec = <&hdmi>;
-};
-
-/* For max98090 plus HDMI board. */
-sound {
-	compatible = "rockchip,rockchip-audio-max98090";
-	rockchip,model = "ROCKCHIP-I2S";
-	rockchip,i2s-controller = <&i2s>;
-	rockchip,audio-codec = <&max98090>;
-	rockchip,headset-codec = <&headsetcodec>;
-	rockchip,hdmi-codec = <&hdmi>;
-};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
