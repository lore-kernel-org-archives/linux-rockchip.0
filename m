Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1F1EC79F8C
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 09:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7LB7HwejQDQnfesMKnL5mhRbjg1Ldi4tgJEWQh2kb0=; b=TJtH3IQd4n6c6f
	VSF+0Hn5qhKyRoQshW3+vbpqSpv6cQVhtOYFaBrk2GE5xFAIjmMZs+2rAHXEqD7dpQLxa8EXi4w8E
	Q1VxNDpXlXf7Qf4qc5TQITBp3BAofKqAA0GJhF3u3A1QXhZvGr/qnE7BlGN3HfC/KMpM4nxyORp8E
	aAl+O97MYo2V9kdk+23ELlnoL7XARhToSKKC8Q09cZ75ECgxjqNCcM2h7bMWigGpmxTrEfxFdHzzO
	7CrkiBditoO1eFqUqjP3HKaL4kIfOIi9rTBlR5MlSQR59Wf1xkERbIqoXdK2yhcYVV/2Q4HwlewlL
	ErgYlreiz5znDR40lTiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Eb9-0000000BHlr-2WIB;
	Wed, 09 Sep 2026 09:28:07 +0000
Received: from mail-pz2-x10.google.com ([2607:f8b0:4864:3b::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Eb4-0000000BHj0-1Lya
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 09:28:04 +0000
Received: by mail-pz2-x10.google.com with SMTP id 41be03b00d2f7-cc1cea4bfd1so4399a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 02:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788946081; x=1789550881; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Nl/aBnK5PFHcg41MgSw1Z+yHeAR93xAdwKOpAL4NF7c=;
        b=dCtEu0a6+5lz0tsu0tW3eO7FbY2LEc3/bDS0PDePrrOvsRYhTmN0Vl/zI6+L7LXk0s
         /HgSA1rMyLkO4y7DGsXyad54SvQGPcmh9wExMvvZizzm7UK4Jzq4h/DKgg6zYi4gWwDg
         eHSKGiR0CilOTLsG7RKpXnmtgDhYFZlhUC8xF9KhCNaMbzF8HlRBohmiqbs8M1a1YAxh
         BgUENDrBpNk8QMqZ6chN/hp+Wgi4U+xcLc25M5SLD/le69Za8Q8U0Cyl6x/uDQNCT/05
         IszAwKxNnN5jqs8WDtlsxchqabfg4DcnumWD/FRot3SHHx7JJU4norg9gJnF1D79p6D2
         AIkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788946081; x=1789550881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Nl/aBnK5PFHcg41MgSw1Z+yHeAR93xAdwKOpAL4NF7c=;
        b=NaQyCXvwUqa63oj1Mm+3yhyIQlPzc8IfS/Qq5pPO14p6zy5hO6WiR7RR3rSITNIM7/
         Nh3Ir2gxTGPEKzB8+ZaftX/5jlWv9nThgSP9PoYvU6EgCjTIg/0XUHYaR83QNcZLzZbG
         Tth0e+eMxO5fVjbsxttfbRYFMAUAEyyefzkWpM9172L3UTPUb/INOSHNdh+tJXnUZo/H
         CZ8azTdt6nL8FbxB4XlOMlgVS0r0V5wFghCiJldxt+w1NfQaDK2rXLuFSqCf1vIUJYwa
         q9LLhKzAmIuPmxhvGiFdGtBbs20jaj5FCa0HC5fHKIagtD2lR3R9/MyTCGF0Z8UIzQm7
         AbFA==
X-Forwarded-Encrypted: i=1; AKwUvBz2sZvBcsBSFnf6W862+YVSxxMiQcPRj1pa2lt+yha/hsnS98oNRjb62j9dITck2cb1fjE1YoacSLh68NTOhw==@lists.infradead.org
X-Gm-Message-State: AFuF++mScY3y6ngmiPOMFrPuomZj8+fbQ/Y208yq/N/wJgQQ8JA6/gep
	GyGdm0Ahht6wCqIcupIHOKhRK6mMeRX0CXDRlor5iyk/V2kb1r7ZPBDT
X-Gm-Gg: AYBFou2o0z6tXIj/A/vrjrZzptYeCzPwBrx9J+R6H0MCg9A6JvP8tzzxizvEON1gT7K
	C51bUhzoD1HEOxXKb2ZT7UXsWI+exKqXe15u5xdm2a4J/U24ggtOBSoZ7vfb4l2v2g0PZOTx972
	JU+eJFQ8GGEmgS/b5gywYElv+ilNS5QTSSYzwivPlUqW3yYAMtfdAyj2lt4EwTWM3GSDdJrW9wI
	GedDLuDpsM2yt3KcFDk3Pp1GC8cEPwo2/wYf9yDca6vE864UHflu4qwRzceTS9gkeiuZ254xrls
	W7TAB7+W0E5bGQV8EUCbLLrh6yM99UsgwbD34TPYFckOzYxX51MObDWzuUGkNNYGXBC936fN/oF
	Cba+uSiJkCdOHEKzAf9SI5S/aLYBRpq74UBPe/JV7mQJpnhSlYt5nyBXCnvUAIsM4YMug4U6ZsC
	9rXHPShVBiLAT4c56bPikWmBMdmR1ukRM5ZuAM0yEgUf5w1HvjJcMVBW473jUdIGfIXlZFCymlx
	iJ6JTtiBaPK
X-Received: by 2002:a05:6a00:b82:b0:857:4dea:e20e with SMTP id d2e1a72fcca58-86942f3f103mr305995b3a.0.1788946081268;
        Wed, 09 Sep 2026 02:28:01 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-868e3aaab85sm484904b3a.22.2026.09.09.02.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 02:28:00 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>
Cc: mfd@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [RFC PATCH 1/3] dt-bindings: mfd: rk808: add board level power hold GPIOs
Date: Wed,  9 Sep 2026 17:27:26 +0800
Message-ID: <20260909092728.1859-2-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260909092728.1859-1-yaozhonguwl@gmail.com>
References: <20260909092728.1859-1-yaozhonguwl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_022802_686714_16E1C1D8 
X-CRM114-Status: GOOD (  10.73  )
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

Some boards route "power hold" lines from the SoC into the board's power
circuitry. Those lines have to be held asserted while the system is
running and released before the PMIC shutdown request is written; with any
of them left asserted the rails drop and then come back up.

Add power-hold-gpios to describe those lines and power-hold-delay-ms for
the settle time.

Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
 .../bindings/mfd/rockchip,rk808.yaml          | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
index 50dfffa..00cbb27 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
@@ -43,6 +43,23 @@ properties:
 
   system-power-controller: true
 
+  power-hold-gpios:
+    minItems: 1
+    maxItems: 2
+    description:
+      Board level power hold lines driven by the SoC. They have to be held
+      asserted while the system is running and released before the PMIC
+      shutdown request is written; with any of them left asserted the rails
+      drop and then come back up. A line left asserted by another consumer
+      therefore defeats the sequence, so every line involved must be listed
+      here.
+
+  power-hold-delay-ms:
+    default: 0
+    description:
+      Time to wait after releasing power-hold-gpios before the shutdown
+      request is written, to let the lines settle.
+
   wakeup-source:
     type: boolean
     description:
@@ -113,6 +130,9 @@ properties:
         unevaluatedProperties: false
     unevaluatedProperties: false
 
+dependencies:
+  power-hold-delay-ms: [ power-hold-gpios ]
+
 required:
   - compatible
   - reg
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
