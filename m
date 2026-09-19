Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FFA2C982CC
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 12:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0ocwEVYZrfVUc22Ri6SzcBQwj9dhsdOfiaPDwPkJew=; b=LjRS2EArRFeBpK
	ld5Fw+aOy/1ChOF0Fw/3YOqx2GXB55Y5w/8N1IjNZnuN5TSBdew/s04ynY2IuTXnonlUexaLpbAhd
	NSM+nkjuBfpISzp3DYyIFEQptrBx+9efuBP8PtHWY9ZqMmxFEU8Ai/gQO8XCVD+9AWwt417NwOsLg
	5TyPhgkHlyAeXh31VaHG6rRwoSgGi2Z5xktCuXDUIgl38pveXwgA7WXfHbP+OOMVXznLWCH5z69Sf
	iTrflPX3XVprI/XIFyWxaXD8z1HLAudAwG7EIXFyKZcdF098eWpRlYfH52+fyJ2QgxOdf07XWs4Fc
	UCArbwAoDk81a2Eroalw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uCi-0000000GF4w-0ZAL;
	Sat, 19 Sep 2026 12:30:04 +0000
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uCV-0000000GExj-1N6O
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 12:29:53 +0000
Received: by mail-pj2-x11.google.com with SMTP id d9443c01a7336-2d747ec6188so10074205ad.3
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 05:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789820991; x=1790425791; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8MmcjKlyf4A3stJwDXl+4IDRDF8eUG006ktFMDeykK4=;
        b=Kb4wGBrPdoUtiZHzFyynEzq0bQnL/OvtWOP/jBIiklAjqnot6ZU9D4erjuUWWCdpm1
         bX0DuPWkUP7QoInt7Wz6uGKau19kJygVTygbITk4ORCUan7fhQ25CT2J40JpuZjByjg6
         p46LWrtUEFZlpm+5K4aAf9tBC+oceLPIMeh/yt/UhHvX+vmcruemSWYpuXsMl/beKvvd
         XSfdkhzVnKh0lDnb9BjCvXsPz+2Xc8uc6vgnw5//nLh1l0VKkxl8CF+7e2aH8P+CJ2v6
         C4uaKJzIBTR++fvyTDEhnWW6mewCSAKviGMjhlO9FBcXWczDyEp6rtUWJ4wc2S5dx+zd
         ScUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789820991; x=1790425791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8MmcjKlyf4A3stJwDXl+4IDRDF8eUG006ktFMDeykK4=;
        b=OGrUAKbY/upn39Dg+PHe66rMDN1vvZDezL0pA7FOcStzb1IGrDbJGqQvE2nK8/NTpa
         lColgw3+AdoPWorIJR+moJFOr3sggDlyxDto6I/z4PYtOyVsDRE9VJo4tQsz3dYhsUvl
         K1LT1ryynMiGchIwEMLIi939RFEyNFJ/JF9ftwtXYYYeiWQRA1W/jjLiljw2w5Aqf5lU
         NlNl/u6vmHKBXmqOqVQ4rZvnMea2f0tPvj+FZRikcn/HxJ0li9Nk5lhKSj0L9W1kdI0E
         eIc3CVPsfssJvaHGYfC+zPYjIzvgyyCfoFZ6JdTsInIhWLiaXSRlny2p3Z0g9Xmz49TA
         U2SA==
X-Forwarded-Encrypted: i=1; AKwUvByIp2NL8p3afC5w9ud8VN38aYNqHbXWCCGeNBk1wT7D1pZBVbY2d94osVHulTIf1Vc/koPn3oT5PhQMwc4dng==@lists.infradead.org
X-Gm-Message-State: AFuF++nnDSfm8GVDnFQmdVa37CQvuW1H1kaRObsiPh8jNcRqzmlb3Co0
	wsiCO/YKMHCdlkvv2pj+Y6I73tBs1IIGQXKjV/ZxTb+4Rgh+7VVkNBPx
X-Gm-Gg: AYBFou3kxGNAprBOwFPo1bbwWvnmUvzByy93cYmVfUzMkrbSRsyh32U59/mt0RAFlV+
	EbTpvJlxCJTmsryadA0Tj+94XqE2bfZP6CAguPklG4fcCzmm6F6HIAsGAJ0R26nStxVXpUQOM9r
	9HAjNi9orDV05k9mDetHUeicfL6OvcLD3d1NiR9Td/agVbISCXvzfnwdle6slwlrdL752fWqGBr
	FaD5m7/cixje6+wxabq2KyiLbqm2RcSa1Hf1eSIFoovE+saFfIDZ4gOFeCFTQfp2RVHumojozwT
	nnNx6fBFCsuVtSjbS3FEJaMm1AlU0X9Kg+oHEtV9NilFHNsvJYel1RSu4IcMPJiDwk/8ECQI5wT
	XdAayxg+vfJJ6HKaTBLWidxKzBaTPtB14TYS85JcobHIPqHnuX9AS+oATz/Zvlr+eIUOurL1Z6b
	6F624PRPoQ84ayJSuGddpdJxu414G6MesMnVGF0JqfSzp3x2idv1vyFp356X+EJx/7iMv8Lc3oU
	jVLHGkdLX4=
X-Received: by 2002:a17:902:d48e:b0:2dd:ad74:ac2e with SMTP id d9443c01a7336-2ddb1b9a0edmr96579045ad.23.1789820990640;
        Sat, 19 Sep 2026 05:29:50 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ddc17d7115sm9552155ad.66.2026.09.19.05.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:29:49 -0700 (PDT)
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
Subject: [RFC PATCH v2 1/3] dt-bindings: mfd: rk808: add board level power hold GPIOs
Date: Sat, 19 Sep 2026 20:29:28 +0800
Message-ID: <20260919122930.1418-2-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260909092728.1859-1-yaozhonguwl@gmail.com>
References: <20260909092728.1859-1-yaozhonguwl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_052951_379186_2DD5F372 
X-CRM114-Status: GOOD (  11.18  )
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
 .../bindings/mfd/rockchip,rk808.yaml          | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
index 50dfffa..d59f6ba 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
@@ -43,6 +43,24 @@ properties:
 
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
+      here. Only meaningful together with system-power-controller, as the
+      lines are released as part of the PMIC's power-off path.
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
@@ -113,6 +131,9 @@ properties:
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
