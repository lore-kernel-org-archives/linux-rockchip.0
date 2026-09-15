Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D1C0C88E75
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 10:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tZye0yjNIX4/vcGValqBlgBe8bdl+pDIbuv/H6ttUI=; b=s2jwXkcTB0uq63
	Y70MuRCezPK2gJCSEwt+38AAzebn1nhnVC2lp53urzottpIam79d+63QCn5o2J9nMhr+jQRpPRNZ7
	wkAJypnmiQVOuQECfDhjbCukLVQhriSxjY8J2WJyGrFfEcdnkeZVpkCYWZFUQSla9xZ/Pswpf1Ef5
	oymRYAi+pzqxIUPi2UhvqzQWytqMY3exfJ2jlM7+KlZf97dIlP/Fwc3oNl1+RwzL3wCJhFHx+ZAZF
	KQ5GVlBFj3DXtkAEL/mxcPxo38F09t+a+QTX+xn8ntQ9v6Q2PTvzrYs6RZ7q2DxFBQHVkE0QYmjmO
	gxAeWWbnWzw+jBW2RsPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdV-00000005xWA-1Lx0;
	Tue, 15 Sep 2026 10:43:37 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdS-00000005xSU-1Nwp
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 10:43:35 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912df756so712045e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 03:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789469013; x=1790073813; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=czoOrQkTCM70VZKBNhJxXyCegI+z86opj24pXPk8LIQ=;
        b=qxj3kn4wumonhncF1hRXNHyhCZm9nCvLFRvJQC8nawfQzu/Ol3umXqStgsJCqYfn3/
         E4FuK3n0WYTN9jieXKzBO1FXKJjs2JESFcb70rbtHhDIeYNbdZwttdwc+r3E4DN75Oe+
         lpM/AHXeRGIqJxzU1hcMFApi4g1rWLkHE0y5wy4QX8BRZpaDZv+AmqGrnkyhF0HEwCMm
         pH1sUtBZ256Nud0108lwA6MFZxa8+7z48jpLJTgyw6FUHwRayn3kHXbKF7HLuUEgIkdz
         AkT5veFLuEza6+UuVHyYI4+we0qkPdPLJYm/7Tjh/t3NRfVQKjTZcrSTlAOaYGBvKTGg
         cDiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789469013; x=1790073813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=czoOrQkTCM70VZKBNhJxXyCegI+z86opj24pXPk8LIQ=;
        b=a9arfKCfMCzkJzyOY+jmPMWoE+moLQ45uRtUTz/ZwPCInDsBExEF1J+uNIFNne1fZz
         +1vGx8y1PV0/bjiVSeYaLGVeTUTUGSiEupl+HuDs30WbCuxxZSrLNuYCIKEJWoVKTqYo
         F8T5PLwFSxl8L9MrRDR5LLo7RylZFG4wRwanIkcUTPXLOpXhSH6oPFPnSFa5fA5qNCDW
         hzwQBvc/C404w36xg1iN5LMuplNKXMlwq64tKLKSqIOwzYHfhPcvHnkR16NybjMBri4C
         Vnx0Sj1WrC6fOnqjMQrJ3dlVCPwzByQo1AbFUuo3FSB7Mom9C2fIM7uyAgKb/7OUPJUF
         cGRw==
X-Forwarded-Encrypted: i=1; AKwUvBwkczY+gULNXuBBNsAmxsqAJI3QbyjvmvFAE3TI2yBoWQj7SmFaHVspcXcpvcFcdx1L9uR74HVImY9koq13+w==@lists.infradead.org
X-Gm-Message-State: AFuF++kB9fmHt8SIGQeJ/c5waHu1asiRg3V37aPK0X4i8gwfx0aLBys9
	1VsFHk8uINBcK/aaUo+xkHqNZVbk24uMHEXJVG1l98ytwbJf5RVHtxTw
X-Gm-Gg: AYBFou0dEW2ib6b5aEi7azvaYw7Am3VfAPKzhh8Nd+6UR+cHi+dO4WxyHzVAJ5u72RI
	6RixDs6xsH5+6gnRQKYNzCKwhdhKBrozPcZRnJIFW8XND+t78Kntmr7j0MTRSV595UV2wNo1KDz
	DUz0qMJctJGU6OMUWspaOgJBj0Ljb9QWMCLnAreis4FYXauTIWYXcXskNeb0ld6ZCn2MLBc8ibe
	r0l5O2EQYh54mKBhdZrc3sUruRF3+nitPSwOkPzCG1WnS8ugEPDmUedJlyrayqCqgWYgIQ88Gbx
	6jw6em2CcGCrSu8V0dkPeoafrUGLAtMpn9if8iqJNjAyfFP9ahwe40TJ4/4qNgegpE2d71dN6/s
	vcQM1U14fRweUlxX/IiccmV+oUMD4Zqby2D3uEx3UEyWa3jYPoFAMmsH7EAYw8b3Pb2MFF0E8uG
	rTI4/EkzLUifjR5aP+ILSJpTJ/KQoYRxluv+xsCVOnQsvDryj+I4OaeD3hEiTcR411tpkzWYwFb
	OhniSRlZbIU80yMQTyoZlycQUYVlCeI7zGVlk2oKPR2L58HRxVsYobiLCgBBDdyl/rcd/R6j831
	wQ==
X-Received: by 2002:a05:600c:3548:b0:49e:6ac4:b76e with SMTP id 5b1f17b1804b1-49e822a6d43mr7233625e9.30.1789469012386;
        Tue, 15 Sep 2026 03:43:32 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d2a94b9sm58001325e9.3.2026.09.15.03.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:43:32 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Tue, 15 Sep 2026 12:42:49 +0200
Subject: [PATCH v2 4/4] arm64: dts: rockchip: add csi dphy nodes to rk3576
MIME-Version: 1.0
Message-Id: <20260915-rk3576-dphy-v2-4-b56e68b54b8c@gmail.com>
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
In-Reply-To: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789469006; l=2044;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=bGK8ht4ZsYBRwxHCHXvcjD3xAuJ63yHglUCiy5arzTU=;
 b=yeWXeDtjlbYXnbnHo+rBAMifURbyetkigWkciYlnmz2Njk1RBaH1wo4bBYUGlJC6lwRWoDU9b
 tW+D2K+PqmFCxhdXa68gYb5iLmkYhzprkayLva/21NsCifePTjlEZH3
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_034334_415567_253DC6EE 
X-CRM114-Status: GOOD (  10.25  )
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

The Rockchip RK3576 features two MIPI CSI-2 DPHYs. Add the device
tree nodes for them.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 34 ++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index b0c0d3c8b1b1..b7a527614243 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -973,11 +973,21 @@ sdgmac_grf: syscon@26038000 {
 			reg = <0x0 0x26038000 0x0 0x1000>;
 		};
 
+		csidphy0_grf: syscon@2603a000 {
+			compatible = "rockchip,rk3576-csidphy-grf", "syscon";
+			reg = <0x0 0x2603a000 0x0 0x2000>;
+		};
+
 		ioc_grf: syscon@26040000 {
 			compatible = "rockchip,rk3576-ioc-grf", "syscon", "simple-mfd";
 			reg = <0x0 0x26040000 0x0 0xc000>;
 		};
 
+		csidphy1_grf: syscon@2604c000 {
+			compatible = "rockchip,rk3576-csidphy-grf", "syscon";
+			reg = <0x0 0x2604c000 0x0 0x2000>;
+		};
+
 		cru: clock-controller@27200000 {
 			compatible = "rockchip,rk3576-cru";
 			reg = <0x0 0x27200000 0x0 0x50000>;
@@ -2848,6 +2858,30 @@ hdptxphy: hdmiphy@2b000000 {
 			status = "disabled";
 		};
 
+		csi_dphy0: phy@2b030000 {
+			compatible = "rockchip,rk3576-csi-dphy";
+			reg = <0x0 0x2b030000 0x0 0x10000>;
+			clocks = <&cru PCLK_CSIDPHY>;
+			clock-names = "pclk";
+			#phy-cells = <0>;
+			resets = <&cru SRST_P_CSIPHY>;
+			reset-names = "apb";
+			rockchip,grf = <&csidphy0_grf>;
+			status = "disabled";
+		};
+
+		csi_dphy1: phy@2b070000 {
+			compatible = "rockchip,rk3576-csi-dphy";
+			reg = <0x0 0x2b070000 0x0 0x10000>;
+			clocks = <&cru PCLK_CSIDPHY1>;
+			clock-names = "pclk";
+			#phy-cells = <0>;
+			resets = <&cru SRST_P_CSIDPHY1>;
+			reset-names = "apb";
+			rockchip,grf = <&csidphy1_grf>;
+			status = "disabled";
+		};
+
 		sram: sram@3ff88000 {
 			compatible = "mmio-sram";
 			reg = <0x0 0x3ff88000 0x0 0x78000>;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
