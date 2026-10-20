Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31446606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 14:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ASxWhhxW;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=ANalTGz+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0zQ2Skw59v4UkAgNPqtweCwzXWpmBYKa7TUKBv/yGk=; b=ASxWhhxWvNooB5
	YguD8bT8iIlJueHGRBkAUrGFe/j2aouCE+skSwsw+KuRqxC9WQhIYxmpJvKdGEFvxZrKlmYLSh92X
	leu0h6jiLImBEmSktavukYJtgaIJxbP0QhfKxDiGDnl61LQRGdoJj9XfDGYgUe0ql/28sutROZr8k
	H8J2opg4HRjKpaVUrjGwARphaG9y+nlNykhgoJrCYVi00on0aRNK/BwhH/1mVHkYNfCI1n92KixI1
	5v/8lgKJ0mk8d7rq1obVFtcSu1oPPIESBCyouIVG3yw4ltgQidyCiGr/JDDXC3c3C1wHBjsvWRHDs
	BduWi6xyvg+9dzhBs8og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAsb-00000009x6C-2m5n;
	Tue, 20 Oct 2026 14:31:53 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAsY-00000009x3m-0Cx3
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 14:31:52 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-886e61fa30fso1067214b3a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2026 07:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792506709; x=1793111509; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WwZtUrdYtW8MtDYG2yC3ydbDQlF/r6XHSO1vV5BkgeA=;
        b=ANalTGz+rjlj9TFn9Ecd3d/KUEmkNYO0wQUvxtjxXMLeetxDuDlj3+m2jp2a8SNXEZ
         IrSKInLwQKMuuv+iDpWNSpwkxVgqUepiOqImq6vQ8xBvUCgdUIgG/hGnXxTtd7GdvuQm
         OL5fWZShuS1FdjQExIEUUFv7KvOhzyvLWoDOEbklAlzdc3NiDedMO0jem9RVHm5eS5UH
         UlYmAzDzJCB0l2hsItdWfWDdjV/vAKxeDBOx1IO2VTTK6kYcoiTm11SWmmgEFnEmBXFd
         eYsJ9ly45vOpz6rY/Rh34xlRNpmObW9GZ7TMrmMYO20FE5S+GtH+sFN39qV35fnAxl+w
         Lh6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792506709; x=1793111509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=WwZtUrdYtW8MtDYG2yC3ydbDQlF/r6XHSO1vV5BkgeA=;
        b=r8a0vYaJggjv6S1K7m19dwg/T1VfUsrKY6P/JHF1zsGu67MjpRDve63Cx7h7bmiLmp
         aMZ0zzU473sZktS30ZoY7vwfNFROAU52IcmtkGooXAXbzCqc9BPC80cM3IG0pxm8C33G
         vrR5xscySnBxxfpROgzlf06lQ5r+VMz5H9sqPCBB79Tk6Gj7jzpRWCk5Jh8Szh3+xXFL
         yOPoFssbQwHg4qjxFbM07Hcj6A0Z+v+OxmR/wEZ16tEkXMAwos/DW4kAk9O0JQEoGpLW
         sCTCN7czWgoTTdhxnkn8YvUgw3rtQfH5Ov2xKpZ2xG2elIkqnF6u8p8I5O4L8mM03kDs
         3wJw==
X-Forwarded-Encrypted: i=1; AKwUvByUUXZ7YyVL5fLtMwGiMLLVC7CNxpiWnYEKAFN+gW49QwgqX67Hx2mlMxx0H+2Tz8+eNV46dRHbP2zjxybfqg==@lists.infradead.org
X-Gm-Message-State: AFq9FYIG8y8VeRpp1ZEB+ZFHSxsPaGz9gQtF6+T/YXz0mhELc15ShRl9
	SxNZ+KgIbWhxUm4JFZ7ThLLTiXwERwaGtDmXyA92iqeLrZj0LI6Iy6YE
X-Gm-Gg: AYBFou0gG442i10M4YtZPxjEN4umHUFIIkzF0DxE7Q0Z3pWtPlmM+hpr3kuTDtVfLe4
	znBoqQyxFgiEgjRRvj3wsrXtEN/GzKRNnkyLEprJfj9nJewqxcPcvx4fXHbqz/xuEEEW5lX3RIq
	lXCh4RKtiMUyKSTByC4U7yUJc2FlhizFTxIOU7A5SWSHM+aIBJjwwSKSyJb32GENQasHFW6Ak7y
	ICm5soN130mmV1GZZady96MXvicaLsij5LaH3rTqjG8gzQIMMyfheZlpb8sKH0pfWaG+dZOF+PM
	dB+f9uXDmKD4X5QjAgPcCAFfKBw72ebnL3tjfr9fev9YT0XrFQIDd0BRlTre61kUVaNQhg9ovkn
	u0kpG+kfwU3XWZXdr9Z47tLYtpEuFKWN89xzNc1ACf6SK7fIPAj3HyguixL23uGaEc/9TfucLag
	mLu8D3aeSIS4xeJr6WMxCWYfCo/ofHBdnmWDWWm3iimsSfyzYSZYokhlt5IvN4OUBoTPHu83KkH
	CrceqJ481dk6Ssu/i5BB6MeMpzhbiHz2g==
X-Received: by 2002:a05:6a00:4f91:b0:874:705d:f63e with SMTP id d2e1a72fcca58-8a04be20ccfmr8218788b3a.32.1792506709197;
        Tue, 20 Oct 2026 07:31:49 -0700 (PDT)
Received: from arch.localdomain (123202092053.ctinets.com. [123.202.92.53])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89f580173efsm4789001b3a.50.2026.10.20.07.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2026 07:31:48 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	heiko@sntech.de,
	Jun Yan <jerrysteve1101@gmail.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: sound: add Everest ES7202
Date: Tue, 20 Oct 2026 22:31:31 +0800
Message-ID: <20261020143135.623897-2-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261020143135.623897-1-jerrysteve1101@gmail.com>
References: <20261020143135.623897-1-jerrysteve1101@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_073150_114676_1B14F141 
X-CRM114-Status: GOOD (  12.57  )
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
