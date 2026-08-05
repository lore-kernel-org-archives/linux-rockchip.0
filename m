Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AC0BC55838
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 02:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/poGZgOJJzFIDZyVTcTQicqiPdF/9y2e/XPCplWizH0=; b=hGENHrUkz8gAPf
	E3T5aCy/0azJBj7AToPszQ5Px6/TQYpsYPLFYE/Ja/vReWmEFT2Yck+LC8E8w0zXlzmIXDq4cjzh1
	Qrw5W9IKlfc/tZ783Gpo24X3xFo+WDDfG31ZTh2Ce2PsrLA2z1Zwh/wS3Vd9rEAt8CkKjQLsB9Ag7
	sRURvUCEoBPYKFV1wzrSxqPpNY5od6oEHePk7FwB6A3p07Wp15hLn/KnT9VCvG9a+bHQhuH4qkJup
	CI4wkFbTFzwLYZ8QwXdDABj4a4AIre/6rwYuv+oR5E85PTkQUJHdbwSFnOSts58yW7ek4543e1SFp
	owARbFPxpXs3TJ7XSK7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrRN0-000000037Se-1QJk;
	Wed, 05 Aug 2026 02:28:38 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrRMv-000000037Kp-0mUb
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 02:28:35 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-6aae3e18607so236839eaf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Aug 2026 19:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785896912; x=1786501712; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YY4CB5Vy00/NtteUzUzKZor/e0ptbflg+HuPiVWnSpQ=;
        b=YxKrB6FdPpI162oxP1duFT5h5jaqESbJqmVS02d3cLlt2p4Iz9kaegowcgnl/YgJ2O
         NI9SrmfucJIiAU+SiiXlsrTEBZbWeB3f3lO9B5Ui6rzrKO1YxFsp7+pHCNbLu1QPS3uw
         nve5s55DWjKq6ZQiVH8VzUpluMVGyVUVQBFT0Fk48Cz3/i7qXwE96T6AswO9CuItL021
         PWwqwAC6M+nFAbYsZB2CvO8nTDFEPmKnj3C2cvtwYl1w2i8C911JmFJPAkcJB5/Nu1+N
         5zj6Lf6+tiu9n6GKRrD+Fn7xLxkFFcOt9SPPhiGbb5LUdgmW1DfpmVhD2nyC8JwR996t
         eG6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785896912; x=1786501712;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YY4CB5Vy00/NtteUzUzKZor/e0ptbflg+HuPiVWnSpQ=;
        b=IZWI2Kvq40IGtg9KmTp670+TMmp/fiUR0pApbVZwpgrOc7iSb/lSCcv03N5z1wcoSI
         APAMrGZozUTJfQSe3bcw8+BZIdwx0dC4YCpXYFwK5DtHwFJMNKvy2OTfBYWJ1CTNPaDd
         Rn+qY6msGCOT9XAWJnfrM3Exg2gQbTt8pG84vfiTzuxCsQQFfK/YtLNXA3/lFD+CmzPf
         4WV6yywXZdxYhtKtPgmVcssSaH4GKAE7WsPAlEb6h5uI84YJ14Se5rQ8Qm0GgsWjBdxu
         hSb4XFwH+6Zjq2oBGHjJseNVCPP4DD1eDyHYQIvqUp1Uz42o01TvGePUsydStO+rjI+q
         xb2A==
X-Forwarded-Encrypted: i=1; AHgh+RoJ1Z5jGEKINBUzR1tMSVvuHjG6aOg+0LpKpi3cHPdYGUyCjHy1adST+fYI+z/EaG2DPFgNS/Wufwgtuwk78w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxnEbWGFRAw8FIBF6cvDzwN5ITS1uiwnAep3VcMX5XkQz81jwN7
	kJ69G6KBAfcLP44EMRcxUOwPzZRxy6GTqFw+WBbnpVUr6q8EQdgUpkE+
X-Gm-Gg: AR+sD12puoe2nb6/hOzzkjuh9GdVwVszZmQa2D+/2Zk3Xi57wh92SYxJ6mwV64tFjPH
	/pia7CKuAQj1Ube9ckjCPXdErNr5q1rporesWybFHVJrmTH6m2JI4qoXfA9ywe5NtMc+Mxfdwj7
	IqoCvWbJ0U6F6jWqPLZi6/j7BErDO2GRerYtLhL9fu7U4NEdiJX4dJISmlXSBQdAi+5B+jwpq5C
	wBxpR0RtWaiDHX7PDx/xMF94e037AHJga5h0TdVqRgqcGxPIO+YuHoifYLaSC7uTqqqRhRoiDjb
	nLvVweYmluIKoqlRvCs0N79o2CksYsmQ0SvSuGeYJjGGxBvS5BrbPPeIq9hnEwWWMdQmIS8pgPH
	1deLqQoNNlUkroT9UwgqtRQMMQ3wOAauJF1E4QPBfGnCBWpyC3wFkhijXgSGS/dLVXVbtH7ujCf
	tTgP8iz78VD8fN3dab3QoAZEMPXfSBgHYyUexwCRhvEhyZn2Tis43iF1LucIATokNcB5CDfff96
	alE4uOTWEGuR/9+e5CQZU/BcqVxJocfdDx48ZY9JfFzLg+SmpbjL6QxSDSabDtJnPbDOSOVFrF5
	/NdhJGXAF0sdYdhTZkHG0v+mALRH9tnM7jAaLYqlfdDcgLPWCJg4vgxY7Ifpl5B+vQOcRoUNdqN
	GzZHZUQnQJMKxfKhD
X-Received: by 2002:a4a:ee12:0:b0:6a0:a791:6885 with SMTP id 006d021491bc7-6ae96ed36f7mr2063730eaf.23.1785896910119;
        Tue, 04 Aug 2026 19:28:30 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f1df565d37sm2078153a34.16.2026.08.04.19.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 19:28:29 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Tue, 04 Aug 2026 20:27:00 -0600
Subject: [PATCH net-next v2 2/8] dt-bindings: mfd: x-powers: add AC200
MIME-Version: 1.0
Message-Id: <20260804-submit-acx00-of-dynamic-v1-v2-2-3eef49ff1d8c@gmail.com>
References: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
In-Reply-To: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_192833_284842_8B3F4F0A 
X-CRM114-Status: GOOD (  13.14  )
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

Describe the parent device, its input clock, the four package supplies
and its optional Ethernet PHY control child. The input clock must run at
24 or 27 MHz when the Ethernet PHY is used, matching the rates encoded by
the documented EPHY clock selector.

Interrupt-controller and TV-encoder calibration properties can be added
with the child functions which consume them; the initial binding covers
only the common core and Ethernet control child implemented here.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 .../devicetree/bindings/mfd/x-powers,ac200.yaml    | 77 ++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/x-powers,ac200.yaml b/Documentation/devicetree/bindings/mfd/x-powers,ac200.yaml
new file mode 100644
index 000000000000..4ea56e99c370
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/x-powers,ac200.yaml
@@ -0,0 +1,77 @@
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
+additionalProperties: false
+
+examples:
+  - |
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
+            ethernet-phy-control {
+                compatible = "x-powers,ac200-ephy-ctl";
+                nvmem-cells = <&ephy_calibration>;
+                nvmem-cell-names = "calibration";
+            };
+        };
+    };
+...

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
