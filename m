Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F4E8C46CCD
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BvZzkI+MR+NSNfRS8oIXqQ515xpHtj+Ru1txsMB1Hg=; b=ejfGxnzlSMzpPJ
	Cpawlw7KUjRMbdYdw/JbXxYqWaPfNhnCO74AQNt/r9UIkhkajbmmpkJubryyHXTVOPN0dkgchmzHd
	pBnowEyYf7s1ES6MELCT7d53tBeImWfR7F1hkEooQWkqEz/AjNt2xaiJwRoonszY4Ta5Lj6L7fBOZ
	7h42in1rBwHVw8I2WjR96X3rWv4j9NiMTXifC01XOWp9MWNXAbIkyEkd5t92q6reqAH28I7pr6SIX
	n64EeoNVXxLWQN3UQkA4um6iQ2XMDS3duvH5sSOkMAtjJUHbJQKv2Wj8o63WvtgBFzvZWv8HVJ6S1
	i9n7BF2sPNpb/4plZi0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXXq-006MCy-0R;
	Sat, 16 Dec 2023 16:29:42 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVf-006K1i-12;
	Sat, 16 Dec 2023 16:27:29 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50e30b28c1aso174954e87.0;
        Sat, 16 Dec 2023 08:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744044; x=1703348844; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hsk09sD/JLCR2XzE8w6SDzRrfieu6a8GLQCzTQyHXNU=;
        b=XnDb1ipxBcRJTN3t49aPpvRxphhHvbXLHGXAC30QQya/tDYFxSZYgZvaViXJFjj9zV
         7BW3N8LV7rX19M/JtKNVDpK+bYF8yL94YovEBz57Qd6iZaAP1f0jy4PjVS/p8g9MM9uJ
         B4+d6+iy0dVLu+r/Q9XCELbgwPqPvYXdGEpYz7kG50SM+vrB+m2FdBO7i8A3YVHGOqCj
         Qd3InYVaGioea2nTLTJTCX+BN1vyp8ZYIzUUZROjSAFvv6Q/6h3ZwzmFVLNu9AYLrf6X
         9fRC/hH/OdJ8MkpIsdA5c0uvRIj6mpkZBwDAMreakcxVCveiU8uVNj2+7n2mZHAN8Hv7
         Ws0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744044; x=1703348844;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hsk09sD/JLCR2XzE8w6SDzRrfieu6a8GLQCzTQyHXNU=;
        b=fpjRSU65nlXBrz2S43JvxoCV0++FUabgKfPeYt1JWfNdExQ1yH+cWac+52D8L1axWI
         MjvARm6iNQZQeAdvZm4ZoYTxzMURxYxG/Y06udHYZro9o+gDbSN1a3kFdEONkAveBiO+
         9MSO0D1Ix2kE5iG+VNV6WW26hU9o66QpgziqiCTaiwkeGXH2l27j9XPhzsooDSCQemxR
         OXqYGbbdRsxaSBiP0dDKeRjF2CPsGl0bKVdBO4XAein16Uhmunzk87yE6ra+v5SzacfY
         XANx+efU4HeylX4op1R1r5exUDNI3hQ/zu3cu9HrYjKf7vF/OTM5merclhrb2LTc+UGl
         O0pw==
X-Gm-Message-State: AOJu0YzY+tfU5VqIKXLtwk0OaOJ0ZHir/9NxfrhZzRJig3uKMdEJ4tBj
	1LQauKsYViy/B1HWBarXoQ==
X-Google-Smtp-Source: AGHT+IFQnfl2cq6EqsmtxXsPX3+nF6bpvttzxEQVr2y36+9o0INXQQPP8fOuEmzzU29lPjunAhL3Kg==
X-Received: by 2002:a05:6512:3b0d:b0:50e:d07:597c with SMTP id f13-20020a0565123b0d00b0050e0d07597cmr5112150lfv.66.1702744043722;
        Sat, 16 Dec 2023 08:27:23 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:23 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 25/27] ARM: dts: rockchip: Add display subsystem for RK3128
Date: Sat, 16 Dec 2023 17:26:36 +0100
Message-ID: <20231216162639.125215-26-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082727_358683_F7D27CBA 
X-CRM114-Status: GOOD (  11.20  )
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
