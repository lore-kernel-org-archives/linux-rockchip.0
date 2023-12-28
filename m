Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 384FFC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Dec 2023 13:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cA1pmITeEMh/cH21Zg2QNEV5Fz8nfvkn1JWxazq3x0=; b=xi6CO0mdifduDc
	FuwTdWkny3A/r2Ypsa1shwUDPOXIykQk1wFzsh2W7noqZ7WvpR2JKdE78sYQ3/GpFwO7StQ0JmwaX
	TD3CXujjW2DXwW/hQ3VlLF88tzKj2m1ZvE/BPwU2eTqdPBVJIJUZls0KwWjlu1jg6lSQn0aLr75cB
	UUvx4eguUrVMgtRR8XDlIRo1+a8DdMlEr4fP+N8VZGBA804WMsaPJgC2G8FqbjjuoPtbYA5LpoCRi
	zBYM7HhMFt1Yy0wcMj7SIyX0V01YNWvcI7vOVvnOAOYlOhHGLhPgRr27sbIiGyS7oAfYVad4drlJI
	TSpsNrRXhNY0w3ijoLJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIqG2-00Gu8o-07;
	Thu, 28 Dec 2023 13:17:06 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIqFz-00Gu6n-1C;
	Thu, 28 Dec 2023 13:17:04 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1d3eb299e2eso28393675ad.2;
        Thu, 28 Dec 2023 05:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703769421; x=1704374221; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NOHuqM4F/gVoKxBS/slc+DUydkCrv1+Pt87gLb5xJoo=;
        b=hM3hoVq9SWSuCBJwXeMPjmnMwwUMMZfrmL3JrbQMKAgDTL2DRMeTzvShOIvf8k8HEq
         e8WPRkYBGUahhB2dOeAp7hgmDz0gtOLiFBp0XBc8D/uTCLVrJhzGwlNhvMfIswLOyLhP
         R3JHUuHaE+5NOnKSoVApf/djpTzZWYKgfZk/Gstiy+UX5S/IHa1MP5cj4QFpuDt8oGGf
         wd/qoR/LbayVCRy6GS10s0JpI4IDmAekIaQ+64TFDKsTcJasyiEksjlvcIT9SbPofLsE
         JJ8XJcQPF0rAVYnZ8j5HMI7cNvK8H3VMDkKokjMxhbmCZ21KiXmWAmXXNunC1xZ2ICRU
         i/QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703769421; x=1704374221;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NOHuqM4F/gVoKxBS/slc+DUydkCrv1+Pt87gLb5xJoo=;
        b=S6T8yi94Nq6MNKtDDMk5N3hqpToRIl5Kn5qCFRiSUPrF7GRqHH4M7XuECmKxUO1Bg3
         j5EDzHKB5Ie/uqnZAMfpwzmhyWgQ2MfMQZuJcF7rPwxmQH1SGG82g4f8SUx1Jf7/fE7p
         hyKTiNmJ1oy7Pxf5O+jVA8Q2MKBPY5s1WHqzKsHB2NBlwJSNuCCWi35kctHhtPrHiSqd
         l3BM2i3OHWBz2ogun8zO7VYEnVdl00i5xX9mxcEu5ewYjmrto0G+jHuKP/1goj7E+PKp
         7ADr3zp5rY6jmE847HJU7o/bKSReQtI2osDlOjrMa3c2iiGeb+nDTVRWxqppzTKPKsvm
         Z4rQ==
X-Gm-Message-State: AOJu0YxehrwucAHe2jNqdgfKJJS1tsBiunZ6zIdSNyujYD0iIGou0f4r
	+QHs1VHfpVuWqkyis1nnAWw=
X-Google-Smtp-Source: AGHT+IHvUsAwqSISFkKD1q5Fd4VOygs5kVC7ixxcSE+3BDhaHyTfFWCWW9C2vOMKZbZAHKCAuX0wFw==
X-Received: by 2002:a17:902:b598:b0:1d4:2e75:9b65 with SMTP id a24-20020a170902b59800b001d42e759b65mr3648629pls.108.1703769421504;
        Thu, 28 Dec 2023 05:17:01 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:3708:559:ea20:9883])
        by smtp.gmail.com with ESMTPSA id m10-20020a170902db0a00b001d0b4693539sm13864221plx.189.2023.12.28.05.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 05:17:01 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sfr@canb.auug.org.au
Cc: liujianfeng1994@gmail.com,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
Date: Thu, 28 Dec 2023 21:16:16 +0800
Message-Id: <20231228131617.3411561-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231228131617.3411561-1-liujianfeng1994@gmail.com>
References: <20231228131617.3411561-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231228_051703_410280_BBAF4ED1 
X-CRM114-Status: UNSURE (   8.22  )
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
index 5fb0baf8a..5da668184 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -640,6 +640,26 @@ i2c0: i2c@fd880000 {
 		status = "disabled";
 	};
 
+	vpu: video-codec@fdb50400 {
+		compatible = "rockchip,rk3588-vpu";
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
