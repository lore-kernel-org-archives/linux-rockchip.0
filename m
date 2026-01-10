Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 625DDD277D1
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 05:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZgEXU1MBILLA2pOXy/pAR4ftD1RCp6UW96oNcvQ/ys=; b=FXO8d7m98b8Lz6
	Kb7Gs6X89idl8AyiFVe9Ko06cMxtzz5d/sSJ4Dq7W3W/qMGEk+yx5BgziPkJcYwZFjpScYTNmWbge
	lnnS+lPYVaCuHpqrWQrCfCtdLC5yogjO3+jsXnK7a/YTuX9+FIyeRImU6+bBN540CVR0zwXe7/WdN
	gRu2G+wHgKst8dbD6NGLZUrgcCYoqTrvZ6PN9kAhe2NbV9y89NjzBE0pmnD/nre9HpUnVmPhMBQyf
	ysoJqdSx7Wpvo7epxFYxef+OImiIrPGTTOEtklSmGtXuK9wbl025f7tWuf2khyuP619myycQBvxg6
	sXyX5imNb2p2evKS1Mpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veRfW-00000003HQG-1Krk;
	Sat, 10 Jan 2026 05:37:46 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veRfU-00000003HNb-2gA8
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Jan 2026 05:37:45 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-42fb2314f52so2545673f8f.0
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Jan 2026 21:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768023463; x=1768628263; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KBV1jttw9vA0jCOoGP99Ua6fivA5lzhlMS+1uYQ4YFE=;
        b=fb9+ovChJUEu2wtTiwdcL61Fh/W+YErOgy/mKBK1HzmTZNYHuUZxzrTcD256DZJW7D
         enstYZ0H+3Qot+KrtlVoOBT6GK0HPE1MdwT/h4uFfJDNGo6kMnz7jy1SbpVTZ6FvCuJO
         aPnVAjF4QqdmcjeRPgFkO54IIIN8KH40a4obEY2HC59janxHwV5RR324nB+yVKfCUGPo
         ukH2FzKqmrOfeCDiesvML+3mkGgLn7TbXwvgmyUz0HizBL4Dr+CfCerS4gzi3mMinnDS
         rbg5/9nzscK+FzfkpLUG24EdHu2wxE4yRLW8vbl5hwoeKVGeKggnJxC0M0ijOnRdta6p
         YE1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768023463; x=1768628263;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KBV1jttw9vA0jCOoGP99Ua6fivA5lzhlMS+1uYQ4YFE=;
        b=j/+imMG2XbJ1W+xPkkTKQ1VSyLzJMsGK3+vOIdvoYvQJ5uUS3WOUNnTYnIrqtXvHRQ
         FUHoGj8CpRSBAzAMeBHApEiNP/MXkBac5nsu3Am+ddy2X32BFvCeAThPuZkIJidGyLsZ
         9NntDcI798GrJeZz8EBkQEcb2DGr+/6DPfNHXHdxUYIt1mmJ5cjJv9j1q3Hl+DH8XMSG
         sgzxBOhLFU4SiKcsxvuwmoj0aJ0y5yO0GiHbBM1LhcWLJcrA7kLoLmLHZBSXOdDUhIGS
         UzH37OT/bciSYKo2I5774BVztQB6eWDthcxpJeKjSgxeguZCD06FZMjBMQHWZYXn8X+3
         2dYA==
X-Forwarded-Encrypted: i=1; AJvYcCWn1IqXL6geqJPyAMAfprHXi02cN1BBMGBjoeOvHSMHu3GKQqWcRSY7XODYSEz7fkXobf93LOaj1XIqdhTl8A==@lists.infradead.org
X-Gm-Message-State: AOJu0YywcZgpMwTEnaKCP+9nkmI4RnX981uV78JKeLBJZf+bTv+gAaPu
	1+76xqkmt/2GqxmdAVU8yQhN8uweHTJymhxKONfFbp7eglDbyKsSdtE5
X-Gm-Gg: AY/fxX70Y+MHs6mCepnAcRXRQFrkuB5Wx20v+PwO/qvdwP+3+TXVnALJqY3ZyqXhh6W
	ASCtqXfuAD6CQgUo+KC8O8oN2OW+BbQAGAqPBlaUmMvwf6f/gyrPmm44i+XKBIF61nJzs9tc9G9
	HcWwPuBL2pJCMRjR+iR7MrAS9AEJd0gWvHAK4DmIos/H4ld/I9nW+ebAYDo440ExXQJuPLzRl7Z
	x93LDeeg8rJ0Kt3JRy3O19y6tf7ind46JoR+fJ0dwr4yAdgwJL/pRzSRm+3kCXGgTuF0ECW+pai
	5LKs6sUI/BdQLdKu/lc2xUSRvf4+tcKZV8KmOQ1cZcBVwN2wnhEcnUwmtdfQog733heXgIRifrX
	ZTpypn1Dpl+RdLFOH0X0Yr8/VGeMCl+zL3Cz8h+MeANo7F6bkNxtNFLYy2kbFqRjdzjwppt06J0
	RxBhONuR/kY6iDuLw=
X-Google-Smtp-Source: AGHT+IFcfMPIrhWiXPkS98R5rwsX/ACoRCaVo+plXZiPZaElaqnswMgbw6+184Fm/K+bJwMBmWeKXg==
X-Received: by 2002:a05:6000:4287:b0:432:851d:35ef with SMTP id ffacd0b85a97d-432c37a3b62mr16501208f8f.42.1768023462952;
        Fri, 09 Jan 2026 21:37:42 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0dadcfsm25973825f8f.3.2026.01.09.21.37.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 21:37:42 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>,
	=?UTF-8?q?Olivier=20Cr=C3=AAte?= <olivier.crete@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: [PATCH v3 3/3] arm64: dts: rockchip: Add the vdpu346 Video Decoders on RK356X
Date: Sat, 10 Jan 2026 05:37:27 +0000
Message-ID: <20260110053727.2295260-4-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260110053727.2295260-1-christianshewitt@gmail.com>
References: <20260110053727.2295260-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_213744_692604_6F759C98 
X-CRM114-Status: GOOD (  10.33  )
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

Add the vdpu346 Video Decoders to the rk356x-base devicetree to
enable support on RK3566 and RK3568 boards. Also add the needed
sram and vdec_mmu nodes.

Suggested-by: Diederik de Haas <diederik@cknow-tech.com>
Suggested-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index a2c4957a5899..11536684479b 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -383,6 +383,19 @@ usb2phy1_grf: syscon@fdca8000 {
 		reg = <0x0 0xfdca8000 0x0 0x8000>;
 	};
 
+	sram@fdcc0000 {
+		compatible = "mmio-sram";
+		reg = <0x0 0xfdcc0000 0x0 0xb000>;
+		ranges = <0x0 0x0 0xfdcc0000 0xb000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		vdec_sram: rkvdec-sram@0 {
+			reg = <0x0 0xb000>;
+			pool;
+		};
+	};
+
 	pmucru: clock-controller@fdd00000 {
 		compatible = "rockchip,rk3568-pmucru";
 		reg = <0x0 0xfdd00000 0x0 0x1000>;
@@ -619,6 +632,42 @@ vepu_mmu: iommu@fdee0800 {
 		#iommu-cells = <0>;
 	};
 
+	vdec: video-codec@fdf80100 {
+		compatible = "rockchip,rk3568-vdec";
+		reg = <0x0 0xfdf80200 0x0 0x500>,
+		      <0x0 0xfdf80100 0x0 0x100>,
+		      <0x0 0xfdf80700 0x0 0x100>;
+		reg-names = "function", "link", "cache";
+		interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>,
+			 <&cru CLK_RKVDEC_CA>, <&cru CLK_RKVDEC_CORE>,
+			 <&cru CLK_RKVDEC_HEVC_CA>;
+		clock-names = "axi", "ahb", "cabac", "core", "hevc_cabac";
+		assigned-clocks = <&cru ACLK_RKVDEC>,
+				  <&cru CLK_RKVDEC_CORE>,
+				  <&cru CLK_RKVDEC_CA>,
+				  <&cru CLK_RKVDEC_HEVC_CA>;
+		assigned-clock-rates = <297000000>, <297000000>,
+				       <297000000>, <600000000>;
+		iommus = <&vdec_mmu>;
+		power-domains = <&power RK3568_PD_RKVDEC>;
+		resets = <&cru SRST_A_RKVDEC>, <&cru SRST_H_RKVDEC>,
+			 <&cru SRST_RKVDEC_CA>, <&cru SRST_RKVDEC_CORE>,
+			 <&cru SRST_RKVDEC_HEVC_CA>;
+		reset-names = "axi", "ahb", "cabac", "core", "hevc_cabac";
+		sram = <&vdec_sram>;
+	};
+
+	vdec_mmu: iommu@fdf80800 {
+		compatible = "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdf80800 0x0 0x40>, <0x0 0xfdf80840 0x0 0x40>;
+		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3568_PD_RKVDEC>;
+		#iommu-cells = <0>;
+	};
+
 	vicap: video-capture@fdfe0000 {
 		compatible = "rockchip,rk3568-vicap";
 		reg = <0x0 0xfdfe0000 0x0 0x200>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
