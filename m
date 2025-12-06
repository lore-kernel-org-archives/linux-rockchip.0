Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8370DD3ABFB
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Dec 2025 08:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9HU3BZrKR6pjbQ6hZixfab+xP9yzo7BsjlZnL9Mz50=; b=gXCCbnJ9dbWjD0
	pSIyGc8aVP3MwbXskOjoUwWiJubKABM2gDW8D4lRxsZ3BM8IGUEKJL8OkOE8/7A3Cnmb+XFql6869
	hyIT08HDS/yynCgRMDKcGrtYS6zRINMuK8iuRRYMXvRvyz5wfr6dYEIrSb4TU3PZPxkmevsw4ISQI
	jpecG/HGBkCI6pGfQPyDzUMWsP0RFv7rtZtVAWXRdd9KSsxWkEnE012LgLVsBLWUEP34HTM+Zql8a
	sQN4MF4PyY8CnDyVSdMHra04GyyVzBR8rlaq8PHIQbUhhXEAai4m7GGKHz5y56WzsBihgAIzgQ32m
	k9xqZ4UhMklEYS+VFG6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRneZ-0000000AkUh-402z;
	Sat, 06 Dec 2025 08:28:31 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRneW-0000000AkT3-3q1z
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Dec 2025 08:28:30 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-477a219dbcaso31096105e9.3
        for <linux-rockchip@lists.infradead.org>; Sat, 06 Dec 2025 00:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765009707; x=1765614507; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ybnktA7yiPw4tJvX7FdmF5g8bI2fRM90QpenRWrGzHw=;
        b=m/6lmi7qzzjfzSEAyVzS/ZN8beBbe5pufLSmmaDD93G3C0iJxmDy66d4GYJNgIFujg
         6a7XQmzm8OvQA8pQWw9QKtO2qlmAf/r0BZ2ffZ2EpikjnPXANMFBycKB1fJZ5ZhPVlMD
         IPSssFKH4w84YNivNh7sj39FZLKBy4S9v7T5UzoIl3rIxkXU8FaDFBAIaqbUPuU2sA7v
         OkjX/9ZpmxUo41/nYSjRD5p5ZXw9ebGsHgHgQoIfyxkIc5MIM+IZ+VmIBITUBUCk8jp7
         ZFeq+/Ni2iAjd/J7zidpSqhfg2mTM8icED1mPju2B/4zyuJtEMTStXUuMxI0L2Af4os0
         O58w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765009707; x=1765614507;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ybnktA7yiPw4tJvX7FdmF5g8bI2fRM90QpenRWrGzHw=;
        b=HQj9sMZ+mSnL/ZfZZugHVmf085F8oFLFJJq9T65KtKxXjv5VXeSF+OQoyKSJC/ErgQ
         JgqoYtBqVkzQXq+tkvGO8zx8Nw2amEkaoohmwz9aP6JLk/21Dt247lfXJcs9unv5JTu6
         AriRUfvkaBMSwvjQWPMPBXTTLDy2rX6/7N3CDVks4mJigtx7D6ijCxrBC1GSx0I2qkqF
         hk6uA+RF7x+lnkl/hzOYH/a/Nqg0p9rSaNQTZ9cBuwodlGS+xTtxPo7y8lR9eKYHprJb
         ISVWCKWTjza72YGbFfnTLiY8x1BwqhXXccWQlb1DN8AsVzcWNI2ZdFEMX6vDovovzErY
         xtrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXd+zqqYG6cy71npRxQohrCGyqXoUMXm6pKGLo7lLR8tSELdcO7XO1W4dRbapWR+3qGauGkky3wnMmMKQk53A==@lists.infradead.org
X-Gm-Message-State: AOJu0YyXrvjyPxdRA+TiK0SO76qfvnL0EVo6YrYCavI5S+fl9daFowCB
	C757AKASu14KRIufjht+nFfcaX1jo8tvLOPU+bVUXqZPOmFcr9idH1YH
X-Gm-Gg: ASbGncswEISH8y4Udg/X4qXyqEQsnU3Gms8qFJnsscn/3jeREKrbKaclsMff1IScW8s
	INeMWEx/CImuSBApqLrGN5Q6Gp30etZK11sDA/NuTpRsu00IMBQmZr8C3z1EbcDOiifo56ZQHCw
	KVKq+LXmTmQYXrbehgtT/fa/j8UGVbMtr7BjSDSKLsVLekkaeMoGYQR/couTEA99U3hg2WrhEOl
	7VnoZsjg2QfUUIvUitLg0duM3BEzgE6diP3YgmhgTugGU8iPADY2dEx3j5h/zbHw3gxXKFEh+I/
	bNSG77qbn14bIzutdcjv2S31ZXctXjiEKM5cEQ2kvYarivIUQ6x5XIfKnULTHeB1KUk09IZWM8M
	I9Y5XWQJ73z4CYDdM4DyUIDLCcd1W7rTc89AfzElH0pU6i8A3g2mufS4lVB3FTv1RPUH1Z//R/m
	6B0BHFJgR+GN8elePRvDjAeYCQvQ==
X-Google-Smtp-Source: AGHT+IF4fUERXjr9/GquO8BnCSUOnAm5kGVyznTwFVQh3KUd4dX0Gabps7xFnP/iqOvdByNlLK3i7g==
X-Received: by 2002:a05:600c:3f12:b0:477:c478:46d7 with SMTP id 5b1f17b1804b1-47939e23802mr18875825e9.22.1765009707151;
        Sat, 06 Dec 2025 00:28:27 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310a6d9dsm123094705e9.2.2025.12.06.00.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Dec 2025 00:28:26 -0800 (PST)
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
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: Add the vdpu346 Video Decoders on RK356X
Date: Sat,  6 Dec 2025 08:28:09 +0000
Message-Id: <20251206082809.2040679-5-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251206082809.2040679-1-christianshewitt@gmail.com>
References: <20251206082809.2040679-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_002828_971938_23AD8E28 
X-CRM114-Status: UNSURE (   9.18  )
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

Add the vdpu346 Video Decoders to the rk356x-base devicetree to
enable support on RK3566 and RK3568 boards. Also add the needed
sram and vdec_mmu nodes.

Suggested-by: Diederik de Haas <didi.debian@cknow.org>
Suggested-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index c005135089d4..c51179e13657 100644
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
 	sdmmc2: mmc@fe000000 {
 		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe000000 0x0 0x4000>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
