Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE7FBC55189
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6tXm6k4ezk4lZW7YIE5Ots0C+X0zF3oy6p9ISKQUzg=; b=HZBu2FGPRevZRd
	xDn68hEF3ZIs0NUALM4CMNqaU68+dJA4GAfLeuyOGmPuzI/9BA3ahY4fbF0qFI2C1B7pRWRLxzoXL
	dcUAWLjhphsRkiCmonhlSZCPwCE7PS2rGdd+RsvjD2H5gI+2Uh55YP+DxLNkQLJlq+hIm+bt15roQ
	rKyxdOEclC7djo27U+f7u4iFIJpwJuUj6OU841266vV82nLBZ/yxyaD4CP33lljws6SG9YBtOmSnu
	nTe2JsD9KdNFmuImmmk/MpQ6At/KV7XlyeYXYRiHxK+Bx3zTI8voF1RehkVjIJBfcYWhU2ieL0/Pg
	jDhLSG9qyF5SdzgLTTYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1f-0000000GL61-0MN9;
	Mon, 03 Aug 2026 05:15:47 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1b-0000000GKxM-28YX
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:15:45 +0000
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-7ee37dc91f5so1801433a34.3
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734142; x=1786338942; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GTwjTV5MzEj5mt/lgWMCGvinpE29xZysk84NZ5krcS8=;
        b=PUKfbFss1ye71ZHl6fpbBU5xTpHY0/UY0NrYXaksZBCCaNqC1lonQe7GA2OXPGbV0/
         bU/E/wtOfTyjKrqJqEy9qTxT6KaAv23wdSlSTpW60mgHEtGN6Mcaz72v7+MyxqFgj1zK
         2jpKnv8lAVHBsppZXkE4Kh+e1Xd6ftv4HRszaRHvhqun9aYb2v1LqP+AJxXLETE4S3iJ
         MkPL3YOnQGniW0fJn8s036qxsuVYJFL6t/y2u287eQsVDuu4mPfGKNZEQXX0gUEFzRwp
         KFEzyws346X9LCqqlq9f4fbBYOQs08iRyGsw1aVghNe/oSKtVKSDEjIS4dnYbfgZOWEV
         fq7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734142; x=1786338942;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GTwjTV5MzEj5mt/lgWMCGvinpE29xZysk84NZ5krcS8=;
        b=COWHbJdGxEsx7/TXA6cIjChaLTLsmYuL5iFkCNHTGReCPj2j6zv5vBmOgFm2CfkOri
         Br14bqXuxvD01qJfXb8AfmG+VghRRydbLLJ7uhlPfORKbcPYnxG2OBkDo5M/qRgxN6O/
         XUGKmECg/1USIf36fCk6mRB9XBPFfhgacGFA0zU68CPY50IfKAYRk2k1G7LaShdkZ7dj
         9ak2UBrje4Mzqw5msIkcbQWrFym3Uq3k/y9mSYF6umtUBIoDYNXB/7t43E9yt58lSZ+D
         8XkSdfZrdWBaX7EOQ2WsTP+z6YgvTdZ4ftMGTqDsM+dbx0imzbSUFRRuFJT4YyNUUF02
         /Dow==
X-Forwarded-Encrypted: i=1; AHgh+Ro1z5Hydext6g+yzLgznhIhufKjnpJh7JS/SvludJgY0w1RNfBnIV2aebyIg4T1+GZ/gj5If4x4bVxKRngm/w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yytr6ubUfD7LoUtf/VVthVVfyudjCZBRPaKznDmLQAJ9LJFqRQM
	rz7zKPRY9IeIaDt6ei6QxxavVIIAe3suPRxCB8OJHRn7tJ2Nha2a+fp/
X-Gm-Gg: AR+sD12Dqzk5HIQXS4jHjGWGe6uc51+ajJRHbf8rhuipQuM3G7CJtVP/j5RYWmiC9LH
	kAKX6SrfVt9CyoiadgT1kFtqI5lJSAmdqib84FMeC45kRHmvlr3rNMXPx6No4dRdkHDKdwQQ/ZS
	J6JzCXKeM78kf/pFaYIlPYZ4ww/+xAXUVK+mF9P9gvfHH6+QEBXUmUr4Rk9ExiOx7URo08w49MT
	G028hdPty08fVa4BQPLE2PGWoGhaMFjRJ/PmxXoQL6AxuskAOneTn4PVh4UBiafjosO5aRSw/HN
	NUcC4WpPersyAc/sH+bMavSKlJqC7tSonhcvMfYHta6cGD/kjLfCGPeOmUEZxGEVkuzbfTkUVFS
	F7euP6rn5dJPTVsZ+SNTlRN1dHdaVD8Vncoi52LOdkN/3b5/M+xxKZT8ycGncvf0JobhN1BjKvz
	Boe2d/M+CvtiGFccqPJYFbXi+Byy2AzQuSVUImszuhnKnKMxfUF1v5H4r5RhP+pXajBLnn5G/LD
	B/cOldAwIvnvvkIVWqZPPtKknNvu3hTmfO2zUw5Q7R0JDK2WvckvvZgKgDTYoblOL/W4sANmAhG
	NjZRTc6H4JpwODXcnsCpWokSM69bDZq+AFgnAkghXDj1Od9vIIHaXGm5Gimx+lc+BqtrIhCkUC/
	Y7/M0aV0b+pint7JG
X-Received: by 2002:a05:6830:4489:b0:7e9:cddb:142a with SMTP id 46e09a7af769-7f196bd63a9mr15354948a34.7.1785734137863;
        Sun, 02 Aug 2026 22:15:37 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:37 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:21 -0600
Subject: [PATCH 11/21] dt-bindings: net: x-powers: add AC300 EPHY control
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-11-0a53cd9e21cc@gmail.com>
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
X-CRM114-CacheID: sfid-20260802_221543_589866_FC0A00E9 
X-CRM114-Status: GOOD (  13.03  )
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

The AC300 companion IC exposes the Fast Ethernet PHY control registers
through a separate non-PHY Clause 22 address. The manual defines the
control address as the link-PHY address plus 16, giving address ranges
of 16-23 and 0-7 respectively.

Describe the control endpoint, its required VCC1 supply, its 24, 25 or
27 MHz input clock, interface mode and calibration cell.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 .../bindings/net/x-powers,ac300-ephy-ctl.yaml      | 77 ++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/x-powers,ac300-ephy-ctl.yaml b/Documentation/devicetree/bindings/net/x-powers,ac300-ephy-ctl.yaml
new file mode 100644
index 000000000000..a6634fcfafd4
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/x-powers,ac300-ephy-ctl.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/x-powers,ac300-ephy-ctl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: X-Powers AC300 Ethernet PHY control interface
+
+maintainers:
+  - James Hilliard <james.hilliard1@gmail.com>
+
+description:
+  The AC300 Fast Ethernet PHY has a separate control interface accessed as a
+  non-PHY Clause 22 device. Its address is 16 plus the address of the link PHY.
+
+properties:
+  compatible:
+    const: x-powers,ac300-ephy-ctl
+
+  reg:
+    minimum: 16
+    maximum: 23
+
+  clocks:
+    maxItems: 1
+    description:
+      AC300 input clock. Its configured rate must be 24, 25, or 27 MHz and
+      determines the corresponding EPHY_CLK_SEL value.
+
+  vcc1-supply:
+    description:
+      3.3 V supply for the AC300 I/O, bandgap, Ethernet PHY analog front end,
+      and internal digital LDO
+
+  nvmem-cells:
+    maxItems: 1
+    description:
+      SoC SID cell containing the Ethernet PHY calibration value written to
+      the AC300 BGS_EFFUSE field after adding 3 modulo 16, as prescribed by
+      the vendor initialization sequence.
+
+  nvmem-cell-names:
+    const: calibration
+
+  phy-mode:
+    enum:
+      - mii
+      - rmii
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - vcc1-supply
+  - nvmem-cells
+  - nvmem-cell-names
+  - phy-mode
+
+additionalProperties: false
+
+examples:
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-phy-control@10 {
+            compatible = "x-powers,ac300-ephy-ctl";
+            reg = <0x10>;
+            clocks = <&pwm 5>;
+            vcc1-supply = <&reg_3v3>;
+            nvmem-cells = <&ephy_calibration>;
+            nvmem-cell-names = "calibration";
+            phy-mode = "rmii";
+        };
+    };
+...

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
