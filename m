Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05011E8FDAA
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Dec 2025 11:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkkpvSUlE6O5j3N5UaKoTsB9rvadjpLL2JqZQBzwx30=; b=eKjJW1V+laiza0
	A4saQZd7jOHw1C330WHSRlRTlqF5phC4h71OdPe8IWOHNX1a8TE5O/eWX34uwMCFkszETc347+opW
	6XEpHjfR3c5H2U7kvOTtO3rokXT3rJKhcRWexgVzT9TmhrsNnbGYg7CuN2nlBjXZj0e2MhqSqk5tF
	5jRuTCLvOBbnoHXlxnuw7W+HGCkXX6TRnpdfdsvG6OhlFY1Fy87Mq3ItQexfZszCNX5Hnf0Um+cTu
	d0xDsyH075L2VYl6D2IeotrT4IeQO7s+wJ0XtXKjG0zETmZH6ak+JVGJjiyHr+Ff3dC5I4GGnezZ2
	zjqNXyJ0djLK3rwfeiIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZ637-000000018wQ-3SzE;
	Fri, 26 Dec 2025 11:32:01 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZ634-000000018t0-2GQQ
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Dec 2025 11:31:59 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-430f5ecaa08so3001423f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Dec 2025 03:31:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766748717; x=1767353517; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LIMoNY3Aw98ZzAyD/ql7BezuP1iCnP+4r2HUN/Krfmg=;
        b=fReG/BL0NhpSRLvgKxtppVxSHIBXvBey7dItSCHBDC18i/MG7dOyFdOe+zTqZ8h6Il
         1KjBAxuMaANMNtEUqzFoexpeiSokZPUFPproifUBaKXElSNOB71dMCE6EKCcKZA3+XXM
         l5zkyjGfVj25DtvheskwD4gRC+koZrsf6FUc5hEeULJH7K6sydMGno5fnuAVBLNkMvAH
         U0kN2G2THHpnF3VqHkWb2zkty5r/jO+9WzAWiR853wfqXYS3ekMYo60rf95iX4M+HEJI
         +WvAnXHQj1R55jgVwq5oj9UGnt0znp3uSbGetfIfnrou9R848pnQXD0MwdNcyJ0EuBT1
         MqDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766748717; x=1767353517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LIMoNY3Aw98ZzAyD/ql7BezuP1iCnP+4r2HUN/Krfmg=;
        b=M1IWWz2gAybHkCOdichJhuDLH2l9z1jYXdvrcgLZKxQejVfZGE8dB1xH35R+++f2XA
         3UR1zXjN48THIwAjuPhvzJ8aniXjne7t2/7gJG0zOopfi1sTNcvL5mkucXvViUD0HUtZ
         gQsDf15wb+6IR59vm1aiW9k9XRSTyhNgBfhArrCC7rDCOaEYsHU3fL7SThF3qd/g0TgQ
         t4oFgylDLltwEr5ukITqQYfvVW4YtFnKEBkjL9omGQj8sqSJr0x7FsvVKP1TafK/7t4K
         46kmU+3z6rUcskhpYQlsWKgtl8BodgMUPcnIbPEolA6StpkeNDw1W8pA9X3FWOFHX83L
         y7vQ==
X-Forwarded-Encrypted: i=1; AJvYcCUggoZVC98dehX0Hg7RZXo15yzdjoBEsRUKqYj7mSx+i4h3ah3VzYBl+yGWL1Lpu3TNLEYUYZ2DJJFH+4xSsg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwqjvYoWsVLwJ8AkDNuluYrdOmKRkSVkaSvRO0Hh4tDJs35XL2v
	EXugXolbX9tbPCKAJa6qVKEUOXa1wSKIo3octWDWRyhhUUa36RWxTsD/
X-Gm-Gg: AY/fxX6Xmu0yhLCn9UMGFyKL+QF2ZbejqlG/xpSubbrJ5C8bTGbHB2DSKnJh5PCPCP8
	CnXZgF70+z3b9tlUVWaTwwTt9MhFL4h2cRjlXsRyWC17nt67cJ6SEn2n2W57O44cM/w24NijM0H
	eHGtFyPhfv113Tn8APpyulA5Et/7vaCMmp5xlRuNU4lTIWYjGIn9gyUAjV1C23D2F+DRtCf1kXm
	sA/pL7l4oJHF7G0K3cCGT/jCWstXrnAl7rioeCSwLgu7hAj2QczNYpIuy6bpC52OjhIGVtTnDTA
	9BHgRUrRn+agZO22CK6YTH4j4RjwbZwSg3ZIsSj3TciSBcZ73krWXQPDjponPX4Rofl0qVEdjLd
	ncG8aLgO7uDWN3MFtkQsfbrYk68WNWIFDZ3r3hOuWi6pzz/xXaQsbf/6VUPWscrBcRM8cmpt8mG
	ocy/Y0g6TBoqHJs2k=
X-Google-Smtp-Source: AGHT+IFFOJzfU27KrqGH3nfRwzkjvpp/3lBr9q9F1dbqFSb0UGV9ka2fDQLSk0GuKEIBX51sO7Kfhw==
X-Received: by 2002:a05:6000:24c8:b0:431:808:2d58 with SMTP id ffacd0b85a97d-4324e50d219mr27294070f8f.51.1766748716486;
        Fri, 26 Dec 2025 03:31:56 -0800 (PST)
Received: from toolbox.. ([87.200.95.144])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea1b1bdsm44182107f8f.8.2025.12.26.03.31.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 03:31:56 -0800 (PST)
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
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add the vdpu346 Video Decoders on RK356X
Date: Fri, 26 Dec 2025 11:31:40 +0000
Message-Id: <20251226113140.573759-4-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251226113140.573759-1-christianshewitt@gmail.com>
References: <20251226113140.573759-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251226_033158_610356_CBB1202C 
X-CRM114-Status: UNSURE (   9.77  )
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
index 8893b7b6cc9f..b37eea56c221 100644
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
