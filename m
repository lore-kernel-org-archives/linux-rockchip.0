Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AA59C6FA8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=foebk+m7SeXQj2DgQe01mVe0QuSCGIXr6CDh0VLa2XI=; b=FPvuU08viMEudh
	vqSqEVKRzrxS2iznHY+MFhCC5aE0xzWcI+s8I76i+zCK+G67odTCX3qHqNRqTQgR78kAuTq3cjbBP
	8XNaDH8r2xLEs4vpUaUgiHojIvmmUY11XEuR14ovFs58NUztJuvyrHmP0jPv09/PpxMn0A+d3ClKx
	spXXCrB2LcmY8c4Y/j/l9bk4uxjhZFfWfjZT6rFcP/StHDad6+q3/uVC9BwPiDIXI7C9luVIkDAb3
	ztFBSx1QzXK+StW/hdijDIghVYzT/dLISdAu/rpOmSFKSgVvW7My/b68FREqAPaIwbKmgH6224m65
	cdTJbvr6g1lJ9lJHlWLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Nu-00Bxsh-0e;
	Tue, 29 Aug 2023 17:20:10 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Li-00Bvgi-22;
	Tue, 29 Aug 2023 17:17:57 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-986d8332f50so603871266b.0;
        Tue, 29 Aug 2023 10:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329473; x=1693934273;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dS+cPFrn5V/oSL99Q2BbWTKIW7SUu4ItJIJ2pH0oI9I=;
        b=aSD4wG+1ZRnljM4CSIseFFCuF2Tv5IT8Wosx2+GepQr8oGYlYInqGm4jF10OVnDP0L
         BZIXogAsXeoecVaZXYJFSl9ArISaPcBdoOdP4jX1SDAxCtLv80kdnqgfxqejZkeVK8Dr
         1qSbdG5PVML8gIAK2mtsZlsFS3Ege/Q3pT+HLIPFg5AKuk49iKFo/GrUvhJ3w/rJ3vlb
         Tuh6inFRswC+h53iRgRJPjrJBeB7t+T3ZE6ijXz9T3eyepS6VUDenDiDDy0ImCUkwaN0
         8NEopfwb0O7l/QZ5RY84W3ft6aPTskb0Vl5+uIVtchApO7uOjs/JBm8Gs9uexal5+0xq
         TWmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329473; x=1693934273;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dS+cPFrn5V/oSL99Q2BbWTKIW7SUu4ItJIJ2pH0oI9I=;
        b=igcU//Hi6Sa7LLPd0XFQQkTuOJa7nYry9J/QSgNX+ljyMrnWyDobXTOcWUzgElwu80
         RRbIEsKxMub50Dp6phe5SQ13TZo4UnwdcYwR3Zmz0Mdo79IUQU1crrHBH30lphYA5qvN
         5/69qcdx0yBHnGnNQnros9vAZuVmsbFSdYR1jBZhP4kEnV0vPKFtXQm1KeMV2k5VlmBC
         94jkPZk4maYcqU7IfYqI+lFJ1Nttgz8Kd9qaFL2LG4q4bel8JOtoQJ8/HJ2i5us4Yoch
         uuLfByLArgB2uZ4UcRgPcN0Hh0pcisx1eanrzOIoAdTF8w5v5csYj7rAMOYly/g3Cd4P
         VgLA==
X-Gm-Message-State: AOJu0Yx4rnwVF0lKZUjPHAEIrFaxX5KdGdmotO4XEfbjyGOdkYno2oxB
	p8apzkh3EwF4uYWQ7tp3ww==
X-Google-Smtp-Source: AGHT+IGcrzem3XmHh2sQJCxUgf3Dq9aCyWk4H3R61SzzGzQKcWYq2aZscEw/gTmdQ+TjCJfx6SK5jg==
X-Received: by 2002:a17:906:3018:b0:99c:ad52:b00 with SMTP id 24-20020a170906301800b0099cad520b00mr20752169ejz.6.1693329473271;
        Tue, 29 Aug 2023 10:17:53 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:52 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 29/31] ARM: dts: rockchip: Make usbphy the parent of SCLK_USB480M for RK312x
Date: Tue, 29 Aug 2023 19:16:45 +0200
Message-ID: <20230829171647.187787-30-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101754_722952_533986A9 
X-CRM114-Status: GOOD (  13.16  )
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

Without setting the parent for SCLK_USB480M the clock will use xin24m as
it's default parent. While this is generally not an issue for the usb
blocks to work, but the clock driver will "think" it runs at 24 MHz.
That becomes an issue for RK312x since SCLK_USB480M can be a parent for
other HW blocks (users of mux_pll_src_5plls_p) but they never will choose
this clock as their parent, because it runs at OSC frequency.

This sets usb480m_phy as SCLK_USB480M's parent, which now runs and outputs
the expected frequency of 480 MHz and the other blocks can choose
SCLK_USB480M as their parent if needed.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk312x.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk312x.dtsi b/arch/arm/boot/dts/rockchip/rk312x.dtsi
index b13957d55500..19bd6448d122 100644
--- a/arch/arm/boot/dts/rockchip/rk312x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk312x.dtsi
@@ -293,6 +293,8 @@ usb_host_ehci: usb@101c0000 {
 		reg = <0x101c0000 0x20000>;
 		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST2>;
+		assigned-clocks = <&cru SCLK_USB480M>;
+		assigned-clock-parents = <&usb2phy>;
 		phys = <&usb2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
@@ -303,6 +305,8 @@ usb_host_ohci: usb@101e0000 {
 		reg = <0x101e0000 0x20000>;
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST2>;
+		assigned-clocks = <&cru SCLK_USB480M>;
+		assigned-clock-parents = <&usb2phy>;
 		phys = <&usb2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
