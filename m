Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13A7BCAC582
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 13:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VLNRgJTEnA412bmhnBc5ZPHbSP/C1qlTW0wRiCf6LyY=; b=HVm19ktd15FDAI
	6LIJMK9ksJMKVxy3ZMJtEkLsL9RUlOgNPqaQn4RmIE0T733irGZmKyR34icp77hODtUHJx6x8DFJd
	GH7tsgnEv0neviHVN5qhD/VNoAwRcUYjcm7cCNxGSGJrsiCahKeV8pvU2QQpLD0JOBZftuRuSKSiM
	Qp9QF17Sb0KTnK5cRwj/F+0CiLcTZdnuFztnoWcMI7E9Hhl041vDDUP7nqbdjoNouFr8FjiqTeiqt
	ziMzRHskJHNf8ykm8Yx7asjvGgHEiW12PwvS3COo3VjofHzh0BLTnuRCeOwTpvtI3Ygn/AaNbR5my
	irLUmiHSnJjrFbq6tuvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4Fj-00000009ggT-2NCf;
	Fri, 12 Sep 2025 13:55:51 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4Fg-00000009gej-2d7k
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 13:55:50 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-b043a33b060so290681566b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 06:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757685347; x=1758290147; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GFs/yrlv3BxwsD3hFdvMm9SwNXFqtO7aFYTEcCrbHJw=;
        b=XjdpmQscEuq0NPQpyP619jRSnx0bqTfW2nk2m1RHKg60AWko2U749YMRg/FILMbgY3
         mFisSxIjSNd1yVcO1nn2hu1U8jlcH6Cwbz2zznkSbGrPBs/K50LollG2GIGAXlJgMER8
         uhBtkigBmA+Y2XaekDtDNkLUsFGp9Lto3glJsX5wyKqMJ0iWw8rxxmpkYY0P0h5EO8B2
         FsOpz76X87OM9p4fpuOydcFLGwPh1d6MJ8onFrXzhJcZRV2DsOAgZZ1Q5HcuEcp9Iqpy
         BR4tmPObh7/ybxYDUn0Ik3SN7U9CcJFOYVfheCvxcr7m3lxnwgyXOhd1epiSlwXa12zm
         ZMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757685347; x=1758290147;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GFs/yrlv3BxwsD3hFdvMm9SwNXFqtO7aFYTEcCrbHJw=;
        b=oaRJnl+ay6f3pfaNQh+AOemXjrpawdeY29qqY/QGdQmysDqr1ULcZ3k9G0O6wLZoEE
         wQuSx4zhE+Hu3EUYheyGkkF5XjDVjIOHXJhtPto0Z60em86FhJfHnv7v+jrN15Ixeqg5
         QRg3VtdzmdY9b5hKbZyGymL/h61XySk4/HyuGpfa9iNbx0inKvvv53h3V7hYK8uX1sUw
         cwoEDkcBquWhBo4tam4AbR2UiomZgb3/nScv/h8oZvK3sUOVt1JL6frnzd6lljm+6KFu
         0YtkMKzbwMoN9hYTmMfvbOb05Jo1pm9I8Gb5UGqrqjrBMpRwUkdCEZdc31xN3WRX1alh
         oKIA==
X-Forwarded-Encrypted: i=1; AJvYcCXsJVuLqdunrd+ibtX+TSsrU7N5OpMMA7C/MteDcMvypbeAazVlQFbWLX83IGSsbeRJ+2aS/wVxmABNlgRuhQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwAdtFnJi2UdWzBGITpdRV74E2exmrKLF0ipSXezTPX1/ts7yyG
	SNcXHTiDxRq5qjaHIhiBAMITi/XQOhWX1lb6XJqGfpaBRo6V5q1SB2B8
X-Gm-Gg: ASbGnctLC/dv3uUc9o0VIrlCqo92gHM/SXRpB6iTrFFB58d/fr3iupdNNSJYOlRVD4t
	JPR4LsCZSRHkHIPwIaVlstHK/h5rKfuM5Sga2YQwUs2FiJxztfVQvtbUszH8a+hcEco9cOujiW+
	Ix5BkaMOGS53bOxbTfxfuLJMtgHALbw9uFXRm1lN6vbiJut73+VL1zOBiBT522EofMPlLOZ4/zg
	V3E038tAn/b+ctVNTNlZndQojylzFgHP7y3VBdOOJLaEtu+i3OG4+CLuWyHBqiIn2+QIqfdp97d
	ZDeWLCYUWEPfnp02fgppEPH4lRzDf85ZWYT8YL1RdzmRr0GxrY7Kz59nObJ7zvbF4MwxfSUpKN5
	K49xNQugKEFGeOE5nstiK81x4lr7NYoM5do4UiWT37Y7M7FE=
X-Google-Smtp-Source: AGHT+IEfWvgTrCzJfv8ZQfD+Jx15z+YEpVcjInjP1fcgF1fRUw7eW1Phf8azNXvHtBWqDEj6x+bNog==
X-Received: by 2002:a17:907:9627:b0:b04:4625:2372 with SMTP id a640c23a62f3a-b07c356ec97mr305733666b.15.1757685346656;
        Fri, 12 Sep 2025 06:55:46 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b31292aasm381628566b.44.2025.09.12.06.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 06:55:46 -0700 (PDT)
From: Andrey Leonchikov <andreil499@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	dsimic@manjaro.org,
	dmitry.osipenko@collabora.com,
	tglx@linutronix.de,
	amadeus@jmu.edu.cn
Cc: Andrey Leonchikov <andreil499@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: arm64: dts: rockchip: RK356x: Add OTP description.
Date: Fri, 12 Sep 2025 15:55:41 +0200
Message-ID: <20250912135542.2304150-1-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_065548_685125_1C6FE6C5 
X-CRM114-Status: UNSURE (   6.72  )
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

Add OTP mapping, can be used on future by drivers.
Contain a factory-programmed values for a various peripheral.
U-Boot already use "CPU-ID" OTP value ("otp_id" on this patch).
All values from original Rockchip sources tree on github.

Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index fd2214b6fad4..74523efa8ecf 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -1057,6 +1057,111 @@ rng: rng@fe388000 {
 		status = "disabled";
 	};
 
+	otp_ns: otp@fe38c000 {
+		compatible = "rockchip,rk3568-otp";
+		reg = <0x00 0xfe38c000 0x00 0x4000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		clocks = <&cru CLK_OTPC_NS_USR>,
+			<&cru CLK_OTPC_NS_SBPI>,
+			<&cru PCLK_OTPC_NS>,
+			<&cru PCLK_OTPPHY>;
+		clock-names = "usr", "sbpi", "apb", "phy";
+		resets = <&cru SRST_OTPPHY>;
+		reset-names = "otp_phy";
+
+		cpu_code: cpu-code@2 {
+			reg = <0x02 0x02>;
+		};
+
+		specification_serial_number: specification-serial-number@7 {
+			reg = <0x07 0x01>;
+			bits = <0x00 0x05>;
+		};
+
+		otp_cpu_version: cpu-version@8 {
+			reg = <0x08 0x01>;
+			bits = <0x03 0x03>;
+		};
+
+		mbist_vmin: mbist-vmin@9 {
+			reg = <0x09 0x01>;
+			bits = <0x00 0x04>;
+		};
+
+		otp_id: id@a {
+			reg = <0x0a 0x10>;
+		};
+
+		cpu_leakage: cpu-leakage@1a {
+			reg = <0x1a 0x01>;
+		};
+
+		log_leakage: log-leakage@1b {
+			reg = <0x1b 0x01>;
+		};
+
+		npu_leakage: npu-leakage@1c {
+			reg = <0x1c 0x01>;
+		};
+
+		gpu_leakage: gpu-leakage@1d {
+			reg = <0x1d 0x01>;
+		};
+
+		core_pvtm: core-pvtm@2a {
+			reg = <0x2a 0x02>;
+		};
+
+		cpu_tsadc_trim_l: cpu-tsadc-trim-l@2e {
+			reg = <0x2e 0x01>;
+		};
+
+		cpu_tsadc_trim_h: cpu-tsadc-trim-h@2f {
+			reg = <0x2f 0x01>;
+			bits = <0x00 0x04>;
+		};
+
+		gpu_tsadc_trim_l: npu-tsadc-trim-l@30 {
+			reg = <0x30 0x01>;
+		};
+
+		gpu_tsadc_trim_h: npu-tsadc-trim-h@31 {
+			reg = <0x31 0x01>;
+			bits = <0x00 0x04>;
+		};
+
+		tsadc_trim_base_frac: tsadc-trim-base-frac@31 {
+			reg = <0x31 0x01>;
+			bits = <0x04 0x04>;
+		};
+
+		tsadc_trim_base: tsadc-trim-base@32 {
+			reg = <0x32 0x01>;
+		};
+
+		cpu_opp_info: cpu-opp-info@36 {
+			reg = <0x36 0x06>;
+		};
+
+		gpu_opp_info: gpu-opp-info@3c {
+			reg = <0x3c 0x06>;
+		};
+
+		npu_opp_info: npu-opp-info@42 {
+			reg = <0x42 0x06>;
+		};
+
+		dmc_opp_info: dmc-opp-info@48 {
+			reg = <0x48 0x06>;
+		};
+
+		remark_spec_serial_number: remark-spec-serial-number@56 {
+			reg = <0x56 1>;
+			bits = <0 5>;
+		};
+	};
+
 	i2s0_8ch: i2s@fe400000 {
 		compatible = "rockchip,rk3568-i2s-tdm";
 		reg = <0x0 0xfe400000 0x0 0x1000>;
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
