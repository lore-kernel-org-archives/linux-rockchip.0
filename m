Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE602C04FF0
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 06:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEQ1f73FDQX3i5N5MIJhnd6UFI7UbqlBkiYoScTkNgY=; b=PzFrVTyA8ZPauX
	xhzviSeKig1Z+gHUCMtCi2HYVH1uXojHDwfPw/a7Zuz701MdNRNVy/e+L225n0P319kjCFURjiG9u
	Wb75m/fLwM3OKfrMzRStjT8195oTcMNQ5SFCnDpBCx6SgciS58wA0RTjmedlNFeAsHBjRt/tv7uHp
	HnsmnNePW4hyib7vJcQXB+De6vE2r4LF5YKWMy/jxSPTaP21hq4lbfwbKTQTADP+BmPsCXx4qWNKH
	VzFfXpM030dkYuQkHOSF/s/D4VhKYtSUYpF4gw5E99i23+7fiw6jaH9jrmW6jAXukgvwIyimjgmf9
	V30FBYjLYvQ+ueMqMdLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvXA2-00000002ZLF-18GM;
	Sat, 13 Apr 2024 06:46:50 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvX9w-00000002ZHN-3zfL;
	Sat, 13 Apr 2024 06:46:46 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1e3cf5b171eso13135265ad.0;
        Fri, 12 Apr 2024 23:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712990804; x=1713595604; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IX8+yKbNfiVsthYW7XKH1eWLYDaubrEtnopoFEYRG3Q=;
        b=HUU9l5rXd5lQyYlMhRAiDt45TKPVOCv6IWiA1ljDx2j1oCbsXzdKPAOCsw1mr61yvq
         6WZM/lJLq1dfliyUe3wgt3AhV0lC7TGp+OsPjzsOgLKJ9SO0bXPgXZ221xuJyuvNY17I
         0Kfd2kKTdp1L8b/3lFKVFXEqNCHURF8e9JR2y60vVkvNUJcy88RMxBOMX2uyF6vcPIkZ
         72YNQ47L4/xb8aAz+kKDdVOamYoOyYpYbbqfFkcy06/Z0/mtfi1tGRTpMGO9olmS/kc7
         5g+POh4QVliyYBNOXJ9nvZN0umw+Bl2EIQdCjujgqO1nwkWoA7h8VksN0v62flkMPeEL
         LYYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712990804; x=1713595604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IX8+yKbNfiVsthYW7XKH1eWLYDaubrEtnopoFEYRG3Q=;
        b=FldDWmB3EJhtKs+H4r399BiaflKlocxzt7ZjOxR53PsSQ6Iu8c7HTuv2fX19atJkSC
         C8QBvyUkNTrZ7FO46jqXZUEr9GIRtogA1xNvzrf8hDMHUkjXEjjzUfzmmIy0vdYBzkfk
         cQTdnat7cyz8LVl8QSPWmOZQT4rFQayMsPSuBRHenEZ9s89pRIQYjtVusI9UaqDiIk0p
         HPJqBVJ86H0LY4EMae2560tuPvHtk7NZ4tGtVLVNBpoyN/7qUXNnJZ9gRURhOKd3Ln4U
         t2L1bwryAY11CNmK0LWUDUd7fPkxTpQxNh4n8qpqPRZfOcg7iS3lL/+NdOEWyGRzNTqi
         RdDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMK8y9y2mGmBdp4d5IPFjaNiFmN5tSiya1L8FWZT0XjvfupNmrKsDzaT2d6euHJpfde3uo5Ml4pz9l9pCcpwkPWepxlc+vcuPTYsE3kqOme4mIsyhAEgftayQZ4AFUDpOcA4BqoKXGZu9pCmi4Ofb3j9xYyU4pfXw=
X-Gm-Message-State: AOJu0YykMXOUITIK1TqcdpJrrr8juzk/Le3o/RB3UFeTEbI1ZBRtSdYC
	RjJYXxIiiZL7E4AgUJ5DJtGqG1Dr0u40X3oc8gSHtzf4T2jEuvme1TlPzc2Ugag=
X-Google-Smtp-Source: AGHT+IG2v1voZ4jUtk3gwJ5t0BpkvC2xmQ/vb0BVsmZQK2jxHhHV6XnEiC/lD631JMGbseAEcE8mfw==
X-Received: by 2002:a17:902:a98a:b0:1e3:de79:35d1 with SMTP id bh10-20020a170902a98a00b001e3de7935d1mr4309333plb.23.1712990803645;
        Fri, 12 Apr 2024 23:46:43 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id p6-20020a170902780600b001e2a7e90321sm4096693pll.224.2024.04.12.23.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 23:46:42 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	sfr@canb.auug.org.au,
	liujianfeng1994@gmail.com
Subject: [PATCH v5 1/2] arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
Date: Sat, 13 Apr 2024 14:46:07 +0800
Message-Id: <20240413064608.788561-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240413064608.788561-1-liujianfeng1994@gmail.com>
References: <20240413064608.788561-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_234645_150931_CEFD6BC4 
X-CRM114-Status: UNSURE (   8.48  )
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

Enable Hantro G1 video decoder in RK3588's devicetree.

Tested with FFmpeg v4l2_request code taken from [1]
with MPEG2, H.264 and VP8 samples.

[1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index ac5bd630f..de823f461 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1072,6 +1072,27 @@ power-domain@RK3588_PD_SDMMC {
 		};
 	};
 
+	vpu: video-codec@fdb50000 {
+		compatible = "rockchip,rk3588-vdpu121", "rockchip,rk3568-vpu";
+		reg = <0x0 0xfdb50000 0x0 0x800>;
+		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vdpu";
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
 	av1d: video-codec@fdc70000 {
 		compatible = "rockchip,rk3588-av1-vpu";
 		reg = <0x0 0xfdc70000 0x0 0x800>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
