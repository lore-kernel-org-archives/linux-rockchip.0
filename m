Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3F5DCAC58E
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 20:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypTXGix0ALOlQqdcXKFkJJ0VrNyb+JeqLFsMsojjLYs=; b=SBdN3VTAGDrXiQ
	DOfN59jwH+1ciM3eX0+Yn4olanMrHoal2O62e1/OAJlwiV+LK6ZUgsJ6BB5m0ogrlFGn4uCGonFqz
	OBIynJf+bJnDLdqFE0YhRhtjATiHiGu/YsSmze0AVhx0ZTw9iDZY+LujXhjtde0x7x0o7Xb0WXqNj
	UBNnp+7dp/8A75LNONTL8cOSjuN4Dk5lkFAdYuyD+g30vRQCjRmPcaTK8as5XLT0mQgatSMnpiII8
	yqA8CPjzbXD+cHoofhiX8nZelKugesEuJgsgDzJ3/phGIelMmOuetpHyYk7IPPJdZQPPx4K1fu5wN
	G3/cyAV2bXXTJNMS2DDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwRPm-0000000GYHR-1pFD;
	Wed, 10 Sep 2025 20:27:38 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwRPk-0000000GYD6-1dJJ
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 20:27:37 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-b03fa5c5a89so1039388666b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 13:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757536054; x=1758140854; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YuoelyIGl3a4zYG4u4Hkksm6RfUTuCz5+M+J68PkXmo=;
        b=De66uIGqwmnzSBniSDL/Mu/sYp+DqQBhjUrqn9JVmGIc0p0mYjrDdGC3eJ4FtFxuR1
         nktJE0pZWtc3MPJ9mg0/J1krY/UIPzM06bfSUiwH9h3rw9yC1vLdC1XUnJq9UW9ykZ3E
         SXNdbeouz1LxH+spQKLobbs4TzqEFKkmhIx+VeWHSeGgvvE3HqmtnjlYGbzAU1q/ujFW
         IN2jNS11g+YIQAcLh3w5qv9xmBpBUYPlTibLGiQh6m1JgJaaSdM0NH/GIQsYdJFH57xw
         oIgoNqp2qfHMyzcFav7KJyB1knXG/GjO5JRzAxzHBPZogtBTWWPk3ysUwz79HCDlpBlM
         pFGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757536054; x=1758140854;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YuoelyIGl3a4zYG4u4Hkksm6RfUTuCz5+M+J68PkXmo=;
        b=S0GU3dfGJnh5kDwXppflvfDzxc6dK52siBeolMbZC4LGP1rQXwA9ewq1gz4Vfkdzsb
         9tQMd5lqypKxWvuu8LRMWP831Dli9uSZm1jrHDgYUYzUReWXrzOVA808EzFOjYcsypuq
         jcNjGtffBPv9dwbJuKqpAM7juNewfjnytt2qnzgfxvk+UN00CGSvxmOq+UiMHsy2SKhy
         hsxcOih6t7cDdNfxH2Q5ZDTuc1KRKprR1+/thq9m8gRYTYQAgNrhsROGcETIC8/Sc/9u
         6HKxaPqYsRjRcQXlhq1aUY3ucykYWYsPZ+tjYnZ23BlmZf1qvnTyuX5ok6hI2URzPZ9L
         FhXg==
X-Gm-Message-State: AOJu0YxZk0z65R1qpBpukQ1Rehbx7q6YetnAadqYHe7FIFvdA9+EkYBy
	2PIlAuy0OGhXFNbeLNqC2pnqYZt/0ga9yP/RpVbysXioz9Z1b0YdEZWdY7fXX6Qz
X-Gm-Gg: ASbGnctZ9It9GtJTlxOa7DUwob5pMaKzH735PMj6DQbUxqNTn7YGGM+IoYNNu47385F
	IfET21p8EwnXyScdHgFseASBonNkcxNhfBwhRsHPkeyMliArFs+oqXlN7dAVQ8QaD1HaT/Y3ELP
	b4ijiSnCU/MDbbFl3k2hutULx+bsCpv7eld3jg96wiDhs5UEAfE3kIG8IXlQYqT8DiDNMOm8t5x
	x33XCB1hXNW/YkO4NWW7tNNeCuTFTGyqXLbouzAVO2jv8q3iUXinro43x316jowAxf76q8Zl7uL
	aNhg62SyJH5jbHaakNh6v0Z+/onqqOyWLyfHKel3AI4w8oarYuw0lezBVbXS+so3jkpIc3yZGOV
	TX+hl5O8sSkkPeHbLDRaATOMVv9qiwu/XGKZ3AXaVthaLt4hm54qCfzv0pA==
X-Google-Smtp-Source: AGHT+IG4xei5JmPwgvOBGdFCpT7ROe/SbJewVmz7XuT/E9s8KhjlHRSBDLHIbaXxvfRbY3YX7PIwOA==
X-Received: by 2002:a17:907:84c1:b0:b04:31c6:a41f with SMTP id a640c23a62f3a-b04b1697ae6mr1228708366b.41.1757536054146;
        Wed, 10 Sep 2025 13:27:34 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07834124c0sm227715466b.102.2025.09.10.13.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 13:27:33 -0700 (PDT)
From: andreili <andreil499@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: andreili <andreil499@gmail.com>
Subject: [PATCH 5/5] RK356x - Add OTP description.
Date: Wed, 10 Sep 2025 22:27:01 +0200
Message-ID: <20250910202704.2191182-5-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250910202704.2191182-1-andreil499@gmail.com>
References: <20250910202704.2191182-1-andreil499@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_132736_531625_E120EB6B 
X-CRM114-Status: UNSURE (   6.34  )
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

Signed-off-by: andreili <andreil499@gmail.com>

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index fd2214b6fad4..f9ab60750465 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -1057,6 +1058,111 @@ rng: rng@fe388000 {
 		status = "disabled";
 	};
 
+	otp: otp@fe38c000 {
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
