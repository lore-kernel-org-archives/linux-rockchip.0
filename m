Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0415C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jLGlj8Bp90pq1Vin73+sY89T0vlQsIAGwbR7u4Be63s=; b=fhMAgZc5LyYH1m
	5zws0fA9D700YQb703Wb6u8XP1uKeZOhhpLW3ai9mOMz8GGiWG5ZnP6LV5HEsQp3Tv9By9dhCDM+O
	OOIfSStwjevoIdln3gTWrYqj5KJr+qprFrZDxgLLc52RA/vgYAi06RZ9mlgxXldB89vr8gKFgDVs4
	O00Ump/S9eZqeAcTkSKVn//qNK9xumKitZogBSGw1ZT+LPt3d+2uVjatUYH5JqF6ALJIb7H4tIycG
	jQ3s0RYhguyJdhY5wes6UaTxX7Ep+7Tvan9CWb0Ld87IOWoH8/i8GDheVAxoNeB2iPM/5fuvr5Lwz
	1e97RkYi6kKYN400WgDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjaO-006YxS-3C;
	Fri, 22 Dec 2023 17:45:25 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXm-006WYu-2Z;
	Fri, 22 Dec 2023 17:42:45 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-33697caf9a6so423076f8f.1;
        Fri, 22 Dec 2023 09:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266961; x=1703871761; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rLzYp4+k7Wco/dLyvbXtMOp2x7OPvW43+Ey3FkfhV04=;
        b=AI3o8KoQBxGK/h9/1oJdpNbGxoCXHYdC4oMv+FynA+PCTVkhFfJJr+I6k5U18HhBsq
         UnvzuZjjws77CmHNZpFv50OtmJAR96WDxiyPhbFGGPNy0/VQQ4Q+Gt1p7X1QAoc1Clru
         UmMfRCu/TTJkltR8KED9nr2GhYeT06opov88wGBEoM7lBeWrwfcgESYFfmqc5M5SX5QB
         Op+KwNrQjFvw7gx45FzZQXpfPBKjvnbr9r1b356b4q1+FyOoKMv886OsABMDydEqjvMd
         dywP5fMC/P6NmR5bs8rPv+idA57afczVRSs1V1RSCYUVKmizSpeCJ9SoLSYyRCtMnvOl
         b/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266961; x=1703871761;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rLzYp4+k7Wco/dLyvbXtMOp2x7OPvW43+Ey3FkfhV04=;
        b=wciDuf1buPL+KabvbRtIsa8OeJlWmeKNqhzC3uyXVXlVB0Y/LMiKUpJN/kbQrQ9xik
         Nq8dm7tmEY0VV732ZV1MC5VmffYriFnw7yge82C5/o+jMrn292itUaltFARrUtBaKbQ0
         0iW09/cBi33eg04Uz4KtzlrwSTTBRFL54pm6q73Vx/RBlSgHhxcGb+2Czvre61/XHCY+
         VJ2DqxCK1duFlxl4yCHKqcUfu4otdXGXbcLUaAVSM+OVih74iAmxYDOPBF8djpAcA5sf
         pu49r5popQofjXgOQweWbDbvW7VLjbcbYNYIFMR0lB+J0RIfEB9H9uCpXmCqMiv7laxE
         Jbjw==
X-Gm-Message-State: AOJu0Ywv29LTGSe/5J60ADSNMWse7dDlXVEX65DH63s6mHUb3+zxrVRN
	DrNF4AuPRyP7ALbtUJEr5A==
X-Google-Smtp-Source: AGHT+IGbd8E/7UYhaxEGvqWFhQLwqbcpgCocA70NL6yVomx8hW0OvFLh92M66p/2d8jdHube5d2uBA==
X-Received: by 2002:a5d:6046:0:b0:336:8d2e:77a1 with SMTP id j6-20020a5d6046000000b003368d2e77a1mr945167wrt.47.1703266961379;
        Fri, 22 Dec 2023 09:42:41 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:41 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v4 27/29] ARM: dts: rockchip: Add display subsystem for RK3128
Date: Fri, 22 Dec 2023 18:42:18 +0100
Message-ID: <20231222174220.55249-28-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094242_874362_1BBCAA14 
X-CRM114-Status: GOOD (  11.22  )
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

Add vop and display-subsystem nodes to RK3128's device tree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - no changes

changes in v3:
 - no changes

changes in v4:
 - none

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
