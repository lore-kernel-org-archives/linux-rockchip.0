Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAE3AC55184
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/cgt2I7uQhVGuNAkAN8xpNOGDgVJL+ijp47ZoWPNLE=; b=1/VC3yHooZqw8T
	bNBpgczO6yGSHMJ3zRHMkVFLt2bDZZilWrSnziY4HrObl8nJkrL0wH1nFi2CAecQ7Zldm+uK/zJXU
	2gOVxKiqrhiVZ3BrwvhkSpB3AVLLW0HMyGXROJAiiQ3uVJKi2kqWDpmUSIt4iu+PPWmVSTIBnBIqA
	wtLpqFbHxJyCHl8hzWsBlEPowd027/mhaX6h2ZfLfF5srK7W0gDiyiMZCl8BdtmO0ihCtqvVtBnoj
	wR/CURdH2fr4MrlbsxEr3YpY6Enfb/QVhEpCFIRHleK9BYrbllO12byt4xhC26FKTLmDaMtHJPqpV
	8lV85Kqv3BCQ7kCYRycQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1Z-0000000GKtq-2LLJ;
	Mon, 03 Aug 2026 05:15:41 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1W-0000000GKkU-1Hks
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:15:39 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-7eb787dec99so1981841a34.0
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734137; x=1786338937; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ws0LFhZuUjZTnhwPoD3ztO16rIL3gtosandi83LBFNY=;
        b=bGmVoFueaxslaPhXnreOMpPY/YW6iHf8znY204pJUXjsMvwbdHx6AbYVb3zy3nzWeu
         BKQqgaicAMVUX2BIjc2nzl5J1Y3ot5urEUU/rleJ4f/wRUSy0INvpbM5s05am5SfMucx
         4j8vc1tlFIHroq+bJD/jvWXyG8qytfuORfwUn3yoxnihlV7PkG0hdBJ5XrgztCKlKds4
         6lT/YV7nhAHC7Lz9soD/aGdOghGYlvxR7EYQjIywhOXZiGAcQHl8aykqkeAlONcKuJC9
         Dsj8HKUpvtf+qCcwI7SDDrKPyjH5lDsQPJEgJH/2SZMKMUjTp2B0+QKW/b1tjYa+A0zK
         Ddog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734137; x=1786338937;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ws0LFhZuUjZTnhwPoD3ztO16rIL3gtosandi83LBFNY=;
        b=p+5iS7aaZ0j51sef3HseVDlT7qkGPX/9Tyto+diXZnxSCRkTOKfPG7+55V0LEqnNta
         MoFdvy1JIdaQmPcVC153LF5JQGMmgNbMRCBmeBnoYjFtcNOJGx5UqRdEL4+k5rAMFt6R
         flk005qrhRN8uicoGhySbcjinVaoMF1OHGAe9RZ6zX9fDc+37DQ8mXypkuRwe7ZRyPQz
         JtIzAcwQcPS4zGrN/+wmkG6h7i6Tzh/zaRO587uNUCdfMOMjtInkI891L4o1TxjcX5c8
         GuLFkuqtK0NCSbPqHdYAFTO7uWX2RomHNk7WsHZBB0d4Rq5z5rY+BWUksTOpSv0hxXsM
         ulzQ==
X-Forwarded-Encrypted: i=1; AHgh+RpE2bHTt1ylkv1HDmHOLDP7FB/M8Z4PKo+Mqgh5+YKqy/ci9BHssdyshsyNwZeZAjQrDdh+c5JS0zSVKfbDoA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxmAjpCutfp9abvvc5oRaJPs9SjeyK6O7OO7BE6oMX123eZFmfY
	x96a2mcGwvEUn/ikFKukKw5+pGymsRclmjF6bUeCyYkGMMquQt2v0vFo
X-Gm-Gg: AR+sD10QBa2IOjvtUfcj7U/LiYS7+YIycQTMTrGm7juDCyvxNvaT0fe1aGoJGpTihIs
	IdZCo0CDkmmHUu60k23a7WQHGQ8FfEf77u6ir/bhFjFPjpuc35d3YfnCnRaj8Hv6mNoC2PD3sdp
	gmw1SRMLXi5u4EYoBjuxt1dbxzZWqa6NGn1KFS5qXpDqrxbpK54W8a2OaqZl3ZLwkTy3l9G7dh9
	+24OTHk3VbhJzXKTjKu4eC9BY+0unfkISauwxEuwFMMNd3TbUf85LEVsp92RCuBeexZj1xFvmAH
	4Q2a4ogqTkGbaGlikxeasoTOz5XmaDUfUJgZkECed9n36mTmbL4TbGPpP5s3ptvwcw9iDm0InhU
	dzSmr4lg0B3mhYiKymKE5nQe4d3tMApkxEVIJDyTf7WnaVoazv9D2y3VTUsssz3+fm0yXRGMSbT
	Ce9RcL/GpJPrrGIpP1Wg5UqSt/Jiqr8yuYMdmFi0zPMepXdbuWsW0dkR6qk4i312LI+UkyB9wVh
	lckV0Rp5ZzD/i/LSlWDyKpu2ZCpcz4f4MW6e1FjDxbyZQUIIGQS9GSfeo2zSWX5z8RYNqap3OpW
	ORkxBrqYlzboNVKFqS3+mSZ6WNYlpIGY9DDfK91T6PaAkcqXsol3XGZ+lOV9/kiav3SISitZsE4
	zbCZDCT6ctB2cHh9U
X-Received: by 2002:a05:6830:6737:b0:7dc:df37:844b with SMTP id 46e09a7af769-7f196baee6fmr14985696a34.4.1785734132204;
        Sun, 02 Aug 2026 22:15:32 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:31 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:18 -0600
Subject: [PATCH 08/21] dt-bindings: mfd: x-powers: add AC200
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-8-0a53cd9e21cc@gmail.com>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
In-Reply-To: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Andre Przywara <andre.przywara@arm.com>, 
 Richard Genoud <richard.genoud@bootlin.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 mfd@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_221538_375734_18BC118F 
X-CRM114-Status: GOOD (  15.36  )
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

The AC200 is an I2C-controlled mixed-signal companion IC containing
audio, video, RTC and Fast Ethernet PHY functions.

Describe the parent device, its input clock, required function supplies,
the optional SID bandgap calibration cell used by the vendor initialization
sequence, and its optional Ethernet PHY control child. Document the 24 and
27 MHz rates encoded by the public EPHY clock selector.

Also describe the optional open-drain, level-triggered INTB output and the
nested interrupt controller which exposes the TV encoder, Ethernet PHY and
RTC sources. Define the interrupt source numbers for child consumers.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 .../devicetree/bindings/mfd/x-powers,ac200.yaml    | 118 +++++++++++++++++++++
 include/dt-bindings/mfd/x-powers,ac200.h           |  13 +++
 2 files changed, 131 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/x-powers,ac200.yaml b/Documentation/devicetree/bindings/mfd/x-powers,ac200.yaml
new file mode 100644
index 000000000000..017629cca73c
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/x-powers,ac200.yaml
@@ -0,0 +1,118 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/x-powers,ac200.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: X-Powers AC200 mixed-signal IC
+
+maintainers:
+  - James Hilliard <james.hilliard1@gmail.com>
+
+description:
+  The AC200 is a mixed-signal companion IC containing audio, video, RTC and
+  Fast Ethernet PHY functions. Its control registers are accessed over I2C.
+
+properties:
+  compatible:
+    const: x-powers,ac200
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description:
+      AC200 input clock. When using the Ethernet PHY, its configured rate must
+      be 24 or 27 MHz, matching the rates encoded by the documented EPHY clock
+      selector.
+
+  interrupts:
+    maxItems: 1
+    description:
+      The INTB pin, which is a shared open-drain, level-triggered output for
+      the TV encoder, Ethernet PHY and RTC interrupt sources.
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 1
+    description:
+      The interrupt number, as defined in
+      include/dt-bindings/mfd/x-powers,ac200.h.
+
+  ac-ldoin-supply:
+    description: 3.3 V supply for the audio-codec LDO input
+
+  ephy-vcc-supply:
+    description: 3.3 V supply for the Ethernet PHY analog front end
+
+  rtc-vcc-supply:
+    description: 3.3 V supply for the RTC
+
+  tv-vcc-supply:
+    description: 3.3 V supply for the TV encoder DAC
+
+  nvmem-cells:
+    maxItems: 1
+    description:
+      Optional SoC SID cell containing the AC200 bandgap calibration value.
+      The trim is used by the TV encoder; the public AC200 datasheet does not
+      document the corresponding register fields.
+
+  nvmem-cell-names:
+    const: bandgap
+
+  ethernet-phy-control:
+    $ref: /schemas/net/x-powers,ac200-ephy-ctl.yaml#
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - ac-ldoin-supply
+  - ephy-vcc-supply
+  - rtc-vcc-supply
+  - tv-vcc-supply
+
+dependencies:
+  interrupts: [ interrupt-controller ]
+  interrupt-controller: [ '#interrupt-cells', interrupts ]
+  '#interrupt-cells': [ interrupt-controller ]
+  nvmem-cells: [ nvmem-cell-names ]
+  nvmem-cell-names: [ nvmem-cells ]
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        mixed-signal@10 {
+            compatible = "x-powers,ac200";
+            reg = <0x10>;
+            clocks = <&pwm 5>;
+            ac-ldoin-supply = <&reg_3v3>;
+            ephy-vcc-supply = <&reg_3v3>;
+            rtc-vcc-supply = <&reg_3v3>;
+            tv-vcc-supply = <&reg_3v3>;
+            interrupt-parent = <&pio>;
+            interrupts = <1 20 IRQ_TYPE_LEVEL_LOW>;
+            interrupt-controller;
+            #interrupt-cells = <1>;
+            nvmem-cells = <&ac200_bandgap>;
+            nvmem-cell-names = "bandgap";
+
+            ethernet-phy-control {
+                compatible = "x-powers,ac200-ephy-ctl";
+                nvmem-cells = <&ephy_calibration>;
+                nvmem-cell-names = "calibration";
+                phy-mode = "rmii";
+            };
+        };
+    };
+...
diff --git a/include/dt-bindings/mfd/x-powers,ac200.h b/include/dt-bindings/mfd/x-powers,ac200.h
new file mode 100644
index 000000000000..cc59e2ab4912
--- /dev/null
+++ b/include/dt-bindings/mfd/x-powers,ac200.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Interrupt numbers of the X-Powers AC200 interrupt controller.
+ */
+
+#ifndef _DT_BINDINGS_MFD_X_POWERS_AC200_H
+#define _DT_BINDINGS_MFD_X_POWERS_AC200_H
+
+#define AC200_IRQ_TVE			0
+#define AC200_IRQ_EPHY			1
+#define AC200_IRQ_RTC			2
+
+#endif /* _DT_BINDINGS_MFD_X_POWERS_AC200_H */

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
