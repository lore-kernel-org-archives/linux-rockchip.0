Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F0DFC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 19:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnTohFMWacQ7ktfcpL1sn1SXXbYvO0IgjiKo67FiMMc=; b=PhSg0MR1sPuWmN
	9fVUxXBczoUbGaF37ebiWGaYCh8JJTgsgOxAFVmP+rb4axUauYMxA88LDirj3RAPTj13EIBizUQMz
	cG5/oM8AQbwRwhlXjgB1N/r3D6P/oYVdKkNxkNHOiZdktTl7Yhh76OjI8mVLeqpCFGChAQ+EBSrVq
	5xsmBZ2fCBm4bBwdb29IdLushDOg8CZfhXfW2UpJcrrs796uyT7jdESCQO+5zddl3I6VoucXQYano
	GQH0BtfI2qxeFAEHAJyhl9XSAcGOaM1CsAiKkr0WJy2ccPtvflK7NNmYXkeXxI4PHpupvP9RRVPRl
	Z3xuVtIE8iGP06JqlNhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGp-00Fslj-0c;
	Wed, 13 Dec 2023 19:51:51 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGY-00FsW1-0j;
	Wed, 13 Dec 2023 19:51:35 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40c256ffdbcso75146425e9.2;
        Wed, 13 Dec 2023 11:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497093; x=1703101893; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=res/nVyNjutOW8BN3aTB9WUo0BBvwS0hIxu7mxFR92s=;
        b=dDRiVn00Uccg6Sc4kgUR7MDG3A+X6spllN1VSv572YFlth3xtV9wim0yXhmJt5pFiD
         7XcSo5I+OXKZ0ZdK5QEIoF1Y9X4dPI0xcSjcP4ctpFlmAb0CgKnyEgo2yASh3ViF+mm9
         N/fenfZ3c2bhV06a2kANZaXZNCrelC9t1NrFKMfwsmfTYFkjzUYInEKNfO/dx9Crl9By
         W7Zx1Iy6LoecNhgW9qOlQi6PTpJsY3HGpZ7CxlQ2jjfiNnI4IAVSiq0mDAEgKBvMfnY5
         zQS6QecCiSpR2FlUbGQCIiBd1RDzFzApoceI4Jtjk0vqB3nUq/iGOE7GsfeTq8IiMy45
         jLLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497093; x=1703101893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=res/nVyNjutOW8BN3aTB9WUo0BBvwS0hIxu7mxFR92s=;
        b=YYzvA3O9huFQq/GRdVR1CDjQEBaBNftamReZCt/KAldQbsBE0AJE+/ZtUlEIdjBuJZ
         m1smPaP0c8ePDf/jicksD5agvJ+stwvh3fOxC2su4o/N4ZNLedF0jHw1EPR4nIaXCWJK
         HlnOLLyk2CnfqlzB5LWZunA7zgB46pvj6MZI0y+Jj0mNRaYu7d8loROB4VXx1NNhbfO0
         LCZDr01IGRoLYXFh0k7I+aJfB0vMlZp7x7Kw7OIRttIaLAGjHMtnVEpdVeDmd1R/wVEX
         dQYcpyU6vV2kCvG42btm2tNPRwoWCdsUrUw/9DiEQHPv6r1dhgs9Ketsu8ysuS9Q782K
         JBOw==
X-Gm-Message-State: AOJu0YxFYASCwGJzudBM0ITd2exqyaU+rH2Tt92S7wuD7nax5OpyC1qr
	DLasZkPdaK18t2veMYZJbA==
X-Google-Smtp-Source: AGHT+IFItZMtGB3SuUCkRPeMfs6P+z1aUcgQiQ9jDlsw7JgTG7OibMvG1NdHIBA0UOpU4R1v8MTSAg==
X-Received: by 2002:a7b:cc8e:0:b0:40c:613a:8364 with SMTP id p14-20020a7bcc8e000000b0040c613a8364mr39998wma.134.1702497092872;
        Wed, 13 Dec 2023 11:51:32 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:32 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 09/11] ARM: dts: rockchip: Add display subsystem for RK3128
Date: Wed, 13 Dec 2023 20:51:23 +0100
Message-ID: <20231213195125.212923-10-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_115134_305406_1C33ACBC 
X-CRM114-Status: GOOD (  10.78  )
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

Add vop and display-subsysem nodes to RK3128's device tree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 27 ++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index e2264c40b924..1a3bc8b2bc6e 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -115,6 +115,12 @@ opp-1200000000 {
 		};
 	};
 
+	display_subsystem: display-subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vop_out>;
+		status = "disabled";
+	};
+
 	gpu_opp_table: opp-table-1 {
 		compatible = "operating-points-v2";
 
@@ -246,6 +252,27 @@ power-domain@RK3128_PD_GPU {
 		};
 	};
 
+	vop: vop@1010e000 {
+		compatible = "rockchip,rk3126-vop";
+		reg = <0x1010e000 0x300>;
+		interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_LCDC0>, <&cru DCLK_VOP>,
+			 <&cru HCLK_LCDC0>;
+		clock-names = "aclk_vop", "dclk_vop",
+			      "hclk_vop";
+		resets = <&cru SRST_VOP_A>, <&cru SRST_VOP_H>,
+			 <&cru SRST_VOP_D>;
+		reset-names = "axi", "ahb",
+			      "dclk";
+		power-domains = <&power RK3128_PD_VIO>;
+		status = "disabled";
+
+		vop_out: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
+
 	qos_gpu: qos@1012d000 {
 		compatible = "rockchip,rk3128-qos", "syscon";
 		reg = <0x1012d000 0x20>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
