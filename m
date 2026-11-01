Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6866F606A32E
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 08:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dLAb0sYD;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=FoSOPc50
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Kgyk7DOHDCoCpO/EsrYEZ5ibs3XiogXeNTaURpmPE2c=; b=dLAb0sYD1zV0IbfrzlS1VRcHdj
	Z4z4YTAHYW+FxzMibyD1IKeQb9rD2hxeCFVITDIoyPiEulgwjsC54NfdCJ27TQguQEchoBGoLdKQq
	dYE100/sKYr8SZ5fXTMSOZu/PrKKlDTxawlDrK6q3t4iupNsrp6xCpt6zHwwGq7+MBvkQ6tNCTx3F
	AJFLJ6WwS4P02TVSXQGi/lHFcgQcDAZdhYbBBAN0xJeudu8aztlinJfgdm7z9W8MbyNTVYDwUkw99
	bQnBeCFsFJwrNp5wr0JT0x5UJyKIgG/6EwyRnA6DFy2Ycofj87V0HEao4w1nFI1kJCa0AA0BLdwBG
	0fYMy0Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNQdN-0000000DxwT-24Z0;
	Sun, 01 Nov 2026 08:09:45 +0000
Received: from mail-dy1-x1329.google.com ([2607:f8b0:4864:20::1329])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNQdL-0000000Dxuu-0e9T
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Nov 2026 08:09:44 +0000
Received: by mail-dy1-x1329.google.com with SMTP id 5a478bee46e88-369f3e9e431so1449925eec.1
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Nov 2026 01:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793520582; x=1794125382; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=lVRiNu3CfSkNvXBK4ERxHrAsBNy8xruX8jtIU1B7VOM=;
        b=FoSOPc5032DEi8I2vJEmVj+NNtM2mXhYoKnRkncYL4U1xnRTAjxILDA4aqLsSRuVCd
         FeEVfozzTa/wxhR94WZbJGZUKGJheqKk3SWMAjXj7EzHnYcaIt7L8BXyi6p86+arckIU
         gGzBg7jvXmg+BCIVNIwkfy5JM76J0BRdyZ1HlwS7ogmqKqFqWQzIA5E1j3jjcfLA6G+h
         /+ULggteCrFRqncOeIsl0kGkByFVTrM4S6DJlK6wV1zeiFxSUCsu4b0hpgYKGwZDfuik
         fxA932fZRz7C3FzySWgsBms7KL5kJXiZ0uY9zbIh2sDEsLpKhOu9/BDglr+ZwfhiA+Pv
         oxDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793520582; x=1794125382;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=lVRiNu3CfSkNvXBK4ERxHrAsBNy8xruX8jtIU1B7VOM=;
        b=IB4tAFcTJv4qGM69iKeGgM4BorA/LdHAA+GI3wxts+ceTOAIiyIw+tNnI6uPUaQTcZ
         f4LdaRT89RfiUi1MlrzSQDADAmONL/XoJEOwduzkJdVn4T/N/qHie2wbWTngtBKGSYrF
         fpmQk2bkzlaobBG7+KH1797IdzaSohclAt5nxNDKSgiRSbOcFWL9k2RVncq+HkafQoM1
         5hcCVAHjYRol4VsUMolZuluqx8xr6c19YjuzPLehI+IyVn3hIYKpSR0ZTOt191UEhiRt
         8jk66Nc0CYoQBImhuPUhCZ1xtIXm+VyE7lnDJa7uqbSrpSgoq7RZK5R3r7sDMDTJ0qjm
         V+mg==
X-Forwarded-Encrypted: i=1; AKwUvBwBQPgjB4ClX8lFLDyHcAferZd3nqt9Xk61un8aGL2ht2BY76LLiuHPJvPwbe8vhaKdbTBOjDzB1nttzbPDRQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z9T9G429iX5Sup4cLrtPXtc8uLEri9MAZ9HhRvhPVeY04DWJPG4
	kqEZK0ZOJKfpS5num9AVWwloWsxsiQtKEFgzIu6LrTy28kXvRdkha7Za
X-Gm-Gg: AYBFou1GKcYdkwst+y8c+2sryUOxNaNMMjZeLVTR9Hl3lvrO/nf3yW7wrVXEuXBmy1O
	c0qlc1tO2PoeXt4QL7xzLzOhykOMB9jXHJciZ74M9Yqq57i2uDut19xCpYsVSMKylSf0U7HRpFn
	jKNFr+KKfIUwWdrWm78DCDmKSE/xF9b29Xf6GdTeNOerAfPy4xwk9DbCC98GQYdgAoW3prueYWc
	S8xXcMa2QCNCl1W/HXYmpwAnAMzUrLFe0drmC73zi3dzmMR7lbrjNT/Kki+TQipNM1Sbpvhfd6B
	tA6+sGjZbWCe5Yq/I6lo9of7xaaSRIBpHyDD4cGvcl+QV+5nux3fQyMFWe1Jo1tYsUmYZHrpjBO
	6g17m7yJ3g3bqmO57PyG0ZuefcnTt+rd4T5fWSLHkuCzvL8KX9yt+DMAJN1EPECKT5gQMcydCGh
	gmmOdXNjm8dL/29INPaYDC8Z5UbeiO2TDgGlxqX8Lhi0q+/pGZhcdD5xd5BVDN0IPKmzWDAFZ0A
	hN27ENTsWL3OqEe2Scxwgvj0OGawXdu430d/l/cR7fAG6sofJzRC3S/dXKdXuwPSkzYAT9x6JwY
	7cTAHTyGSq6AvHSB9sM2CCRdLoW8QgFP6rRIQ82Y
X-Received: by 2002:a05:693c:6304:b0:36a:60f:3e9c with SMTP id 5a478bee46e88-36a420595aemr10215792eec.0.1793520582159;
        Sun, 01 Nov 2026 01:09:42 -0700 (PDT)
Received: from arch.localdomain ([152.175.67.103])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42aa8999sm27611719eec.29.2026.11.01.01.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2026 01:09:41 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	jerrysteve1101@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 1/2] dt-bindings: sound: add Everest ES7202
Date: Sun,  1 Nov 2026 16:09:25 +0800
Message-ID: <20261101080926.267041-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261101080926.267041-1-jerrysteve1101@gmail.com>
References: <20261101080926.267041-1-jerrysteve1101@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_010943_243730_653AF9CC 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add the device-tree bindings for the Everest ES7202, a 2-channel PDM
analog-to-digital converter controlled over I2C.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/sound/everest,es7202.yaml        | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/everest,es7202.yaml

diff --git a/Documentation/devicetree/bindings/sound/everest,es7202.yaml b/Documentation/devicetree/bindings/sound/everest,es7202.yaml
new file mode 100644
index 000000000000..ce98d2d600d4
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es7202.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/everest,es7202.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Everest ES7202 2 channel PDM analog to digital converter
+
+maintainers:
+  - Jun Yan <jerrysteve1101@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - everest,es7202
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+    description: GPIO connected to the reset pin (active low)
+
+  vdd-supply:
+    description: Main power supply, 1.8 V or 3.3 V. Optional; defaults to 3.3 V
+
+  "#sound-dai-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+
+allOf:
+  - $ref: dai-common.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        es7202: codec@30 {
+            compatible = "everest,es7202";
+            reg = <0x30>;
+            #sound-dai-cells = <0>;
+            reset-gpios = <&gpio0 0 GPIO_ACTIVE_LOW>;
+            vdd-supply = <&vcc3v3_sys>;
+        };
+    };
+...
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
