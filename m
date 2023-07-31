Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45B80C001DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLt9ymJRdEooj1nyW1l6WUWvGA+04mRgbMJ4CrdoYAA=; b=ia09o9XBD7+7Zz
	R8SUR3qrowa5wM037kBD0r+r3LZuYlViaZme0xa2dmUUOWTltiJSrsw+EYjaDyVM0pl028HRCKIC9
	oPxeeqtWC9Yf120GKKixaL0L8dL2iD9ocmPv7W1EFeEtjOdiyBY8vfGM52PdvHFqZxZL+j9DsarCf
	nv2bcUJFa6jbtK8hddvvNYr7KkHPZdrjSfMKMGLZl4WESv6sIgFVz+gH6V5hHbc3KmGIrgYD/KVRp
	5B2q3dBsJ782U8HMtEspkNTzSs8yBrDwRWHbKYqktVnrznKzVb0JH+GwLBBJfH4rCp2F84Uu+D4GP
	hxRl5o3pi/zhPVOxXBiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQeK-00FEmW-1l;
	Mon, 31 Jul 2023 11:01:16 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQe2-00FETX-1Q
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:00:59 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1bbf3da0ea9so14309375ad.2
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801256; x=1691406056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eWLb2QHv80Gf4hwq5O1c/PTUIS8nb/DSOgdSZjWSOkI=;
        b=szE/qciLc8Z98Doz/74pVkBcEuCdDBO9Vdeqiu6uxqO8/Tag4moUTJL1pnf/26mP2w
         3VDZlNSmK1cIPh/X8UPWMicfXHWQQ/HqM6uqUsMHQMwbBMuU2sEmjOs1vjbWRcng8wx+
         tunWvfHXl7PZsTkLEfI8lgRdtnm5kxCxMpMNzuNQzS6U6xAVcaFO2WGsH4rrFrPcpEHD
         dmwj9awzAicODG5WK2EJEmEGu+SDqLbsWd1UGUiMBSJZOSUs0ihxxJJsdEDxQECkhyw1
         jD4zif/BsMut4BuZRKjxYDr4JFmdSZnSvZn8mYZ3hAwsDLxUCeDR8a5wjd5D/VJUVwJA
         LRfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801256; x=1691406056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eWLb2QHv80Gf4hwq5O1c/PTUIS8nb/DSOgdSZjWSOkI=;
        b=Ndm1mdiFc2RVXRABH0fGOojcesN2cECb3PsWIo/AcmW2wuAY+fOg9bWGkUEzt8ZJE1
         Gh9wPq8WIIQCSgZp/WArYpvMgEs2TBfbQ9j1hgGyVHBdHlGOyRX1k3sF1pB5glKYcFrr
         ksBhhHjb32ezJ2BfG7kctTGrqAz9hKvALRml8FZrViTKeMKkOEgBchaW3ZbJQ5xllR0z
         hTnb1/Lp5maogMLH8PEzWQy6keMT1FW4Iw+Xdl1RyTyVeUwg/0netqfZqvdblpdXbOFq
         eye0MeEYBfRvd9n9f+XQfkPprfykd3unfk/IfRCukF4uJQzXOHD/xAU266yw1JmRStL+
         UySQ==
X-Gm-Message-State: ABy/qLYxOKGaVrCgScZ+7+8sbGBU7ezrc/uiHIL+S6K7UkaCwYY6lfUU
	VYvAwI1hbJSTbLzOnObtAlhXX7LHDcCSy7M+pLaIiQ==
X-Google-Smtp-Source: APBJJlFzMR4Ag+omLupQiZPSx5mTCYomZZuF1agtSxo5hBpOA9cERdu3r1bU+bJt30kzbkiKl7yIEQ==
X-Received: by 2002:a17:902:ec89:b0:1bb:6875:5a73 with SMTP id x9-20020a170902ec8900b001bb68755a73mr9190006plg.2.1690801256700;
        Mon, 31 Jul 2023 04:00:56 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:56 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 09/14] ARM: dts: rockchip: rv1126: Add PD_VO entry
Date: Mon, 31 Jul 2023 16:30:07 +0530
Message-Id: <20230731110012.2913742-10-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040058_504951_E599308A 
X-CRM114-Status: GOOD (  10.92  )
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

PD_VO power-domain tree diagram in RV1126 is connected to
- BIU_VO
- VOP
- RGA
- IEP
- DSIHOST

Add PD_VO power-domain entry in RV1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 39 ++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index afa5a68f766f..4d74d3d998ab 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -125,6 +125,26 @@ qos_sdio: qos@fe86c000 {
 		reg = <0xfe86c000 0x20>;
 	};
 
+	qos_iep: qos@fe8a0000 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe8a0000 0x20>;
+	};
+
+	qos_rga_rd: qos@fe8a0080 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe8a0080 0x20>;
+	};
+
+	qos_rga_wr: qos@fe8a0100 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe8a0100 0x20>;
+	};
+
+	qos_vop: qos@fe8a0180 {
+		compatible = "rockchip,rv1126-qos", "syscon";
+		reg = <0xfe8a0180 0x20>;
+	};
+
 	gic: interrupt-controller@feff0000 {
 		compatible = "arm,gic-400";
 		interrupt-controller;
@@ -170,6 +190,25 @@ power-domain@RV1126_PD_SDIO {
 				pm_qos = <&qos_sdio>;
 				#power-domain-cells = <0>;
 			};
+
+			power-domain@RV1126_PD_VO {
+				reg = <RV1126_PD_VO>;
+				clocks = <&cru ACLK_RGA>,
+					 <&cru HCLK_RGA>,
+					 <&cru CLK_RGA_CORE>,
+					 <&cru ACLK_VOP>,
+					 <&cru HCLK_VOP>,
+					 <&cru DCLK_VOP>,
+					 <&cru PCLK_DSIHOST>,
+					 <&cru ACLK_IEP>,
+					 <&cru HCLK_IEP>,
+					 <&cru CLK_IEP_CORE>;
+				pm_qos = <&qos_rga_rd>,
+					 <&qos_rga_wr>,
+					 <&qos_vop>,
+					 <&qos_iep>;
+				#power-domain-cells = <0>;
+			};
 		};
 	};
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
