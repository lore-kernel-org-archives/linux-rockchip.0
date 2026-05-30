Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7D9ECD5BD0
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 16:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSN1obT6lAYh/c2TEYIBkSZhbsh7zp2od0aIl95n3dg=; b=scrvciyr2dECwx
	/9aoErgnZfkw1tyEHkMTy5qpplfKAmAK5BK7UGd0XGzCWDH1CfU0e4/PfBbAWFuoPfsGctQkaQ+wg
	BQfADRIk9mbnmxWeZC6NVgWHVvmlaZJsrN6gb3DUI07PugLEwRmqWdqInjI2QbnLV4AmjVeRWJBaO
	B6GcJ7Db+CmCEFGkdYIYFJe/KHKvL4X2DIW9IYtCZm4f6fe/T5irG0NEInbNMrXXB5zD6bq0DQYHo
	FpOm5kq5JycbrWLYhdkRdnI+uJFj35uR2v+HJITNbm+wnNkGQIwGnZV5FVAjjmsFQ/BeThaCa5pqk
	TaPkeHQUICIDdQm91vQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTMDk-00000008uKY-35U8;
	Sat, 30 May 2026 16:07:32 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTMDb-00000008uBv-1mj2
	for linux-rockchip@lists.infradead.org;
	Sat, 30 May 2026 16:07:24 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-441209fb77eso9127076f8f.1
        for <linux-rockchip@lists.infradead.org>; Sat, 30 May 2026 09:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780157242; x=1780762042; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G5lAYdQwlZ0T0Ie+aG3ceFs/5DSYUa18LTgq9dN2ugk=;
        b=cypWlQ/W1B5kqflMmteJVXq6g9NCJWVk/ZKBmcDURIeIriSwEea7Zli2ZyDZu/M1fz
         wU76+fXeeSUIxOFpS00lKMTiIEK97KYsdyhiMCYhcvad4DHptDJbl0CM3/m3SaWWHj6S
         x+d3ZAF7ri/DnxMNgxSIl4lWEFku+V9OHuajh6Gp0s62g4bk9FiYsqCQH1S2SbUxavsc
         BjjBuRGLIi1uJvFXoPagO3JeT4CWJD2lL+FEUBzAJO89B88uNAHYO6nkOddN+yTHMLq+
         6ZFk1tjclfL5pIwAcQOoLy6hQIWdpYjzWnjxIT/N9A6sfJ16lUk6Y9hyCRAphrdj13fq
         MQ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780157242; x=1780762042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=G5lAYdQwlZ0T0Ie+aG3ceFs/5DSYUa18LTgq9dN2ugk=;
        b=Fm8vmVUdw5Lf7uFUXiZxtZ1/PJErRoCbeIj4jLVwmMne5YgnrdJ+NqHYzn4q/6ArxP
         AF4hJ09Kmyw9qmnoW4fNPCxHdv+qSh2QchPzjDF4HBKFidqeuZSRyiysc702Gbu9F+Qu
         m9fWT9VuQOMTAvO/sd3B4CVcE/0B6ZxQU9x3Qu444LQs/TggCigB6Y0BPEytboZ0SGRE
         A04ATbYNnSd1Yis0Bn0JLjg2pboUGThUzonAXvJc98cM2xRdmokZuexii6kuMZT4z3P8
         ce8lKh4rEpLxKg236u1D+251GNjSCUYyscKekO1VlYsnHXdA+LzzxijdzRffbTTc2L7P
         IMwg==
X-Forwarded-Encrypted: i=1; AFNElJ8wGUE0sOClgwy9KDPHsxkr+eV6L1T17F9q+Vg+Ahup5mvOwJNvYKnQZO/z6XJV69ZYuT1CbypZOz9J/xXM3A==@lists.infradead.org
X-Gm-Message-State: AOJu0YyjiIjMnLpIHi4V5LdIYXMcYR894LOuTZLDVszQ1NjUfG6WP3R9
	ZPtRxFy+qVaA8T5HD6uoT0NLl6aDejtzDF3wJg/yJ8/F6kkLd95OMLZP
X-Gm-Gg: Acq92OFdUNaMnK6FYvpDsgTD46P9MwImxuxp069zMx7/XM1ZGU8J8nRSE1zOJy0Q+Ds
	V5uppE+GjWNukX+XHu6rhmK+7Dy48r7yv+9sm/Vo5PLw12iaGyNxmXe5sWMFKxf0wY3y2omdX6u
	BZjbCjgJ8hCvS0RXXe7naEWmEAax2Sh4s/AN2yiEXXpwKpNy/7nv4wIRopdgg4CmnjSkMqGTJHK
	7k4ak1vKNlCVUarM5/ChvqSAqXh6NzXcSsl0Nh+ghG25qwQLjZT3L/Fu+8fjDJhteuNWsvqwqLc
	CDlMvj1Nf8QefI1QXZtTznv/T1Uww2Hnzc22NtDz0yWA6A5Gdp2QFt0qt80trfDswKu8MvPHToB
	AVEiW2WfXSTpF8SNxgVMomPoMUNBK49QiPZKLzpmu6469Nb+T7P9wz1NfVuTNs8iQgKqf3H90An
	EEZf5Dbq6lwziClRj6GaZ2LuJUcB0=
X-Received: by 2002:a05:6000:4b1a:b0:45e:8526:7dcb with SMTP id ffacd0b85a97d-45ef6e6cca5mr5660776f8f.7.1780157241724;
        Sat, 30 May 2026 09:07:21 -0700 (PDT)
Received: from olympus.. ([2a0a:ef40:ea3:3f01:2e0:4cff:fe68:285])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45ef32fabcasm11667339f8f.0.2026.05.30.09.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 May 2026 09:07:21 -0700 (PDT)
From: Dawid Olesinski <dawidro@gmail.com>
To: herbert@gondor.apana.org.au,
	davem@davemloft.net,
	heiko@sntech.de
Cc: linux-crypto@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	clabbe@baylibre.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Dawid Olesinski <dawidro@gmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: Add crypto node to rk3588-base
Date: Sat, 30 May 2026 17:06:45 +0100
Message-ID: <20260530160704.3453555-5-dawidro@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260530160704.3453555-1-dawidro@gmail.com>
References: <20260530160704.3453555-1-dawidro@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260530_090723_484819_BC82AF97 
X-CRM114-Status: GOOD (  11.77  )
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

Add the device tree node for the V2 cryptographic hardware accelerator
on RK3588.

On RK3588 the crypto IP sits inside the secure domain controlled by
SECURECRU, a register bank that is exclusively accessible to the
TrustZone firmware (TF-A). Linux must therefore obtain its clocks and
reset line through the ARM SCMI interface provided by the firmware
rather than mapping the CRU registers directly. Attempting direct MMIO
access to SECURECRU from the non-secure world triggers an asynchronous
bus fault.

The interrupt uses the four-cell GICv3 format as required by the RK3588
GIC node definition (the fourth cell is the CPU affinity/partition
specifier; 0 means no affinity constraint).

The node is disabled by default; board files that wish to use hardware
crypto offload must enable it.

Signed-off-by: Dawid Olesinski <dawidro@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 4fb8888c281c..4f336741d11f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -2257,6 +2257,18 @@ rng@fe378000 {
 		resets = <&scmi_reset SCMI_SRST_H_TRNG_NS>;
 	};
 
+	crypto: crypto@fe370000 {
+		compatible = "rockchip,rk3588-crypto";
+		reg = <0x0 0xfe370000 0x0 0x2000>;
+		interrupts = <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&scmi_clk SCMI_CRYPTO_CORE>, <&scmi_clk SCMI_ACLK_SECURE_NS>,
+			 <&scmi_clk SCMI_HCLK_SECURE_NS>;
+		clock-names = "core", "aclk", "hclk";
+		resets = <&scmi_reset SCMI_SRST_CRYPTO_CORE>;
+		reset-names = "core";
+		status = "disabled";
+	};
+
 	i2s0_8ch: i2s@fe470000 {
 		compatible = "rockchip,rk3588-i2s-tdm";
 		reg = <0x0 0xfe470000 0x0 0x1000>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
