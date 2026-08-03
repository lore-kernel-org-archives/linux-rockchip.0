Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9C6AC55182
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6U+afxs6raRmON0djLiLodja5dAxy2Hp6DkYasjhFDM=; b=1OX4qweh9XUymV
	02m4dwSy1Rbk6ZxD9b8uqZrSkMqdKrkutsUAqw2DqYeOARLrrzh+g/j1lMUP/+r2pYGwkOPXfQnxZ
	KO7PZnambg6Q7IbqK1P/2Dw63oHJG/u0OcREQUmYjncX0L9wvqe5t52e66mzKHeAYeopw+hlQa/iY
	ZRFBuMM65rgCodaTrzXP+Hq5eJZueGqQRk3H/7oqefsc3pgG7oGoBFY7J+mOCbFRDxPbCdJdmxmiP
	+Oj5eyVC6EQnqpCxY2QjDSph4R4kTo23RfMy4khpSNKCmBdj4p5F1nPKwKxPwskmt6GFzfEzh87PB
	dAnfTy+MY1FyuTMR8qyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1U-0000000GKhb-0j4c;
	Mon, 03 Aug 2026 05:15:36 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1P-0000000GKY0-2ahj
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:15:33 +0000
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-7eb4d532e65so1138645a34.0
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734130; x=1786338930; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ufELgsZA/AuhdmDVFD2N+JzOSgNytpSBYv7TBEiLCKU=;
        b=NFxHxg9xwCwTOJPJ9Dm+9C6q/m22GtY8RjcQxMMl3Jka0VftJ1SJKbUnry6PDBdWGL
         R9ru4dcyWXPczYA4F+RKuqQIN8iPi+krNdUg2G5LtoOcHuAFYKSTdPYsGDRVA50OZaPr
         olVNGAR7mtHAQpu6X+HY5CA94oYT09teJhcHsQXqKoxQJRr76nclIMwbBz3qBpMpJNT0
         LQOPIimQLWOtJ/S+KLRIDjqt4anmn0gfdZQTj7cx8hBC9xVAHjarQQhEyVA0IayAQ5GW
         l9Aq8/h/A1hgN/MdQG4Ai5JOPJkZjEHbeIwTnt7sYb26w412zLGA8bfUSAtaLsYSt3bf
         7+zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734130; x=1786338930;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ufELgsZA/AuhdmDVFD2N+JzOSgNytpSBYv7TBEiLCKU=;
        b=UAdZX+8D7W6JRUL0CUBXWsk7zksSlgibCWXlX1lMXTQB+H2fAsqlxOrDT1pmqqAZSG
         QowOlIz8RK8q4/gFpcjtdyZek6yfmPE8TtpKey6OfoD+gvjI25R4RYu5as47xs14zrU4
         CxgHk3XEkEhvE7igFx+QcNyHOiyX/q0l8O1kwsT5pwkmJKbhLyiNvMC8O6VaOSeRtHH5
         HQHTtS0dOi7oZZzvJtxTIUNDzEtzyFlkelnhPUwkoUQhWw7MoEH/IdtIDoYaOuvJcZGw
         KTc5sw0pDOqleCubEz2wCyryIqgo+Ht+vWhTvXvtE9VXuAOYHvdy49+nWObiwVpgqKE2
         p7xQ==
X-Forwarded-Encrypted: i=1; AHgh+RoTuBJFUUR3aXBZ/k487OHKcL2Vs4Y7WbqkF2D4+MlRgazE3KzKa3P7OVW1xAVpmqtPrYczfyn1iWfCCznAMg==@lists.infradead.org
X-Gm-Message-State: AOJu0YypBl9VNlRtKzoZo2yBjj+G9/W/Le8qpHjAqFxVfpAdycpkNdBI
	dbT2fuepibZm/ZVjzOpwW9gSl88T1NIRxfV8dyPGzUxOFrSBGqvLEtWz
X-Gm-Gg: AR+sD132XfYyjNbKXZtyjrFC3SeSW5/LAmEdTmXNkEgRDsGY63bGelZU0tdDe8nbwCZ
	hN9Ax0f8ROxDWQp5OeM6R7EbJgBGiHe6oWUgRgxCawvndoWlbwZKvFSh+18agJmTdA8vrzZrPMn
	qqc3Yl/AXf0guHXuKea0IzDelMKiRu99PMTajsVVnOUQKTScm+wdAzJ9ScQXuzoi/E2C0U61MyE
	5TPC2PywI4LEhTkIgNozL0bHAO2M+2ViIhG/itZ6BFhQuc1vZ/+adUdkgKlJDmeqH4rDCJjd+B/
	EgmCt/sdd1AhU+yqiofwHM1mHt6DiYLRmkTLGsFAoQXykKIRyIiVoyNdHtUR+qfrQtEfRGBQvvZ
	ZudAAFVEIJSSgUdX3PGizXoRfJdDkPLQoXAWbMJDcGSDMKWvIHmyt+TNjOzXnIFvkPARTydC1f4
	tZD8AdP5loGIfpsoK3R5XGeWj4LJIucMP+tvikTXKZmg6wUICa+Otg3jg8/Y6mMu0fMfJtnTwlO
	ftY/pSauN9Ott06+DSLhpP0IKYNCTgiWYgFVrSx3YhqsQwVeTgqD8w+w8p7xKG831+SPrrXGuNb
	9i2+fZ3FEUk6p53tc7sz7frRIdgDw08UOE9hTT3yr2VSof+Lp9AC8LzKET+QDqGsy43zou7EKZo
	jQs9JyJvx4yod//vH5H8oXsJoaM0G
X-Received: by 2002:a05:6830:81f0:b0:7e9:cad9:4bd0 with SMTP id 46e09a7af769-7f196b1550cmr14686937a34.3.1785734130353;
        Sun, 02 Aug 2026 22:15:30 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:29 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:17 -0600
Subject: [PATCH 07/21] dt-bindings: net: x-powers: add AC200 EPHY control
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-7-0a53cd9e21cc@gmail.com>
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
X-CRM114-CacheID: sfid-20260802_221531_705943_4EE5D53A 
X-CRM114-Status: GOOD (  13.21  )
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

The AC200 companion IC contains a Fast Ethernet PHY controlled through
the parent AC200 I2C regmap.

Describe its control function, including the interface mode and optional
SoC SID calibration cell. The vendor sequence adds three to the calibration
value modulo 16 before writing the BPS_EFFUSE field. If the SID cell is
omitted, the driver can use the AC200's internal copy of the calibration
eFuse. The link-PHY driver supplies its Clause 22 address when enabling the
control function.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 .../bindings/net/x-powers,ac200-ephy-ctl.yaml      | 46 ++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/x-powers,ac200-ephy-ctl.yaml b/Documentation/devicetree/bindings/net/x-powers,ac200-ephy-ctl.yaml
new file mode 100644
index 000000000000..b3337c3aa62a
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/x-powers,ac200-ephy-ctl.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/x-powers,ac200-ephy-ctl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: X-Powers AC200 Ethernet PHY control
+
+maintainers:
+  - James Hilliard <james.hilliard1@gmail.com>
+
+description:
+  The AC200 Ethernet PHY control function configures and powers the Fast
+  Ethernet PHY in the AC200. Its registers are accessed through the parent
+  AC200 I2C regmap.
+
+properties:
+  compatible:
+    const: x-powers,ac200-ephy-ctl
+
+  nvmem-cells:
+    maxItems: 1
+    description:
+      Optional SoC SID cell containing the Ethernet PHY calibration value
+      written to the AC200 BPS_EFFUSE field after adding 3 modulo 16, as
+      prescribed by the vendor initialization sequence. If omitted, the
+      driver reads the AC200's internal copy of the calibration eFuse.
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
+  - phy-mode
+
+dependentRequired:
+  nvmem-cells: [ nvmem-cell-names ]
+  nvmem-cell-names: [ nvmem-cells ]
+
+additionalProperties: false
+...

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
