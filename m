Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D263C47073
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Dec 2023 15:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BuGsjdzgM4pYDwAdUiLmz1hv3be11ZeG44QYMlGkj2c=; b=3HjDIWBcxwQC5L
	HnycDJxalA8lIsuAxxA5mvBGZLO9kETbGzP7/NMBj36ae/XIFU+6gbf6IAePDPABvloCNowGelKPb
	J4wiqRV8uGDx42fN/KzOh7WvCtc11eoSgRf5LYA3clIKf75X7/UC/pAHEeU91K2RPWl9RyBOEd3rv
	AfNVlWqzaEZVMXe87+ISbK1+ZnuEj2Qtq0sEul/x054HrIlWVtMt1HTymeIdbcd06qP58j0MuitgR
	HWehdmZ/JKd1zYuGj/zeGrSPUTEkY0wrKLeXUY4Hhn0s6DkIWLkkjlplrffGFvgMVoXIW76YLTHh/
	HnSxIwLbCm+7lQsvQsgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJxUV-004l2x-2d;
	Sun, 31 Dec 2023 15:12:39 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJxUN-004l0F-0E;
	Sun, 31 Dec 2023 15:12:32 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-5cd51c0e8ebso2853168a12.3;
        Sun, 31 Dec 2023 07:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704035549; x=1704640349; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dQ3gts5DeG3AEZVfFZjp7LgA4Q4AdeMKho3AyDhAyJM=;
        b=U8JeYtqsjTvDSS3jNBamNjUO2CxDwW4TFUTghPr3IiJebRe4uQuk1/Y/m+j1QP11qL
         TUetTdPe621B3YJmVav9RfKnFy43mpOJALz6/qjoD2xWa1IhGVjVMa7CKS+cmqJ38rCd
         wrRuTOW1Yj0ZFOPGlHf5IzAkhtT+CLbiE2dx+P5suh6uWE6ZiqM8cf+Jj8Il6bcNOOP3
         OIIwMLB/WgLtyZa7FhpWYShnJTG6H1RdZo2vzecxhikHVkw3PDEP5w60ck1QlaiEttPI
         7oQdLiRqiQENWT8Ka4Au6qkj0Di2OUPJKKCnFA4Oeiik4Uf0lXGdqBnv+szMU91/kTDA
         4wSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704035549; x=1704640349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dQ3gts5DeG3AEZVfFZjp7LgA4Q4AdeMKho3AyDhAyJM=;
        b=hMkr87nVb3ApDvG6WONo5i+e1wPBH93SDWZyuac6v1tyBcaN+W62WPoVdOB5x7dRzy
         l2Xg4bXI2+e0QA2NVHeawq73hlM3eUN8PEuNk50Igo9tn6D19SY9GjV86PPyGoPZEPpx
         o8oZt1vOlszDY7fxKuysRa74ehpMbIDuGGMg5Ee76miJ+9NmK06tcRnHHsponv6OBT+n
         GxdII9MRdBYhsMEz5kLBRWdgW7Ogvsstoh97UEbBCp81EAC8LgYme09AZ2igQH4nCKNJ
         1jDRURPqqqqqDPyJNNd6s5f9m+rSssg09i1TYepYcPY7mEIk39uvzDg7FpS6G7yraDd1
         V/kQ==
X-Gm-Message-State: AOJu0Yy48/G2ebt2GN3yHA37mFU15MxoZbxHsw+cHCQCgIDH+LbmROcK
	QvZ7762v36EFuvDzWwuvkwc=
X-Google-Smtp-Source: AGHT+IGBB6t3FuQ8QHq8Y7Xn/0fTrRbyfKnwRVaCWJpDClar+fRlIaXHT2rMc6fCLi/Q2cjIWZNPaA==
X-Received: by 2002:a17:903:1208:b0:1d4:a24c:4be0 with SMTP id l8-20020a170903120800b001d4a24c4be0mr1607599plh.133.1704035549240;
        Sun, 31 Dec 2023 07:12:29 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:2643:6273:f90:f77e])
        by smtp.gmail.com with ESMTPSA id a4-20020a170902ecc400b001d058ad8770sm18775011plh.306.2023.12.31.07.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Dec 2023 07:12:28 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Subject: [PATCH v3 1/2] arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
Date: Sun, 31 Dec 2023 23:11:11 +0800
Message-Id: <20231231151112.3994194-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231231151112.3994194-1-liujianfeng1994@gmail.com>
References: <20231231151112.3994194-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231231_071231_105135_89044CB6 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
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
Cc: sfr@canb.auug.org.au, liujianfeng1994@gmail.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, knaerzche@gmail.com, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch enables Hantro G1 video decoder in RK3588's
devicetree.

Tested with FFmpeg v4l2_request code taken from [1]
with MPEG2, H.264 and VP8 samples.

[1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5fb0baf8a..ab2792162 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -640,6 +640,26 @@ i2c0: i2c@fd880000 {
 		status = "disabled";
 	};
 
+	vpu: video-codec@fdb50000 {
+		compatible = "rockchip,rk3588-vpu", "rockchip,rk3568-vpu";
+		reg = <0x0 0xfdb50000 0x0 0x800>;
+		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vdpu_mmu>;
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
+	vdpu_mmu: iommu@fdb50800 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdb50800 0x0 0x40>;
+		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
+		clock-names = "aclk", "iface";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		power-domains = <&power RK3588_PD_VDPU>;
+		#iommu-cells = <0>;
+	};
+
 	vop: vop@fdd90000 {
 		compatible = "rockchip,rk3588-vop";
 		reg = <0x0 0xfdd90000 0x0 0x4200>, <0x0 0xfdd95000 0x0 0x1000>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
