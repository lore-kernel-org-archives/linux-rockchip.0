Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56F96C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cwG8H+LRPrQVAwOMmR6GgOFwyNo46PqKQ1NTORlwbs=; b=ZXizABEI2NNUwd
	b+XfPUJcUkY1G5uFWMuwjHPua1rCYK2TbFELFpxVF6YlZrprnhqx8a9DVQExVOsV09uge+62RzPOi
	55esYS2+auAuVA+V7G3Fgh0gaPYpupsP5r7IBs5v5LhzBSsWEp4AbFSuLqr8/nBmVFu/qxriKCC60
	MKnkVnJk14iKgji+3MUffCgKYw3dwyJleQLrRod31BdSSpGI8Av/0RPeoMzfMsIF6UW5fu5Nuiua9
	32nB+xQZX1DNWvFqYX4SN6p2TXTmiG9PQUQ2oW3gP5Xmqe2IaMTRqAIl8eWyeFTE/bQ9lQUy1KcBz
	t+Tx8GoCPe6LCurv214Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjai-006ZCM-0I;
	Fri, 22 Dec 2023 17:45:44 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXq-006WZm-07;
	Fri, 22 Dec 2023 17:42:48 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40d3c4bfe45so20995455e9.1;
        Fri, 22 Dec 2023 09:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266962; x=1703871762; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gRLz1zrBuFNm0Af22mx0D2/7q2j0Q/CWyrbrvtrtVPY=;
        b=lZITtyxxg0oMWoRYYOvda0LDomuW68ciTEbJGEPLa0vU23oNjYzCq0LXfgFYzbiy/1
         hy1aYISYqmuiSfIzx9biuYrDRS04vqfUEQ9SLTdaVhqUW6KSJVNjBbiOgXZ/ffMgNXgw
         +/HWi2fZhdafPmmhJzQ6esEzuLoVPfMT6rtQOXtBNa+B/QghBsSLQ2FqHa76jIvVFnSe
         sWlbtMoD4KhCg+2wjRi9ss9BdIXc7iUe0yi5lngLdkgjDoAdsaNVlxDd6gpJ5u7Wmgh8
         Ko5mxi+1vjizAaC/XalZCxd6jYzH1fASWAgLCUxDX9U38iosADMbEuZ/YmS6ihNrhqVZ
         B1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266962; x=1703871762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gRLz1zrBuFNm0Af22mx0D2/7q2j0Q/CWyrbrvtrtVPY=;
        b=BXXr+/5/P/VjLgwYM7m/GxFcycY9tF5NUJiQdss85g5ikUTAtBicKvyYkTpKP8SrQp
         XAmv9KxzduCFGG97+h1LIj909QtOtTR8BJ3xZqnRw5qtrjnN49MS3n0O1nJbBdtGb1Hf
         UxDGPPjiR9D9fpHWWFHUtV1W1ljCz5Thduqw912ezWbmJ9/UJdVjqk9NVdNqRGmUX7fb
         p0UmeUs9F0IpA0ybXs5KkitPvSk7vSGNnZH1S7zRlqnUresg/rXdclJ/cLBxmCCDnyMr
         9zbm8TpdTowJoboVSGw4JkiOEPzzfvJ8CRYHhm3ZITSCJ6x8p2lnf8RClMbq4D6jt/fy
         5mOQ==
X-Gm-Message-State: AOJu0YzozzjmNWWZxjRBozY3fUOCSATCt5oL+KJeaYqBsPKQbzKJCOQo
	Kj/cUUoc2455DypeHKyy6g==
X-Google-Smtp-Source: AGHT+IEHpUVIRCbHP3AshFALoArBl6E2zYs7rd6xJQGGfnJ//3nhB9bjJ/XDbpPL3zjGmIJ8dwji1w==
X-Received: by 2002:a05:600c:a02:b0:40d:3868:6b85 with SMTP id z2-20020a05600c0a0200b0040d38686b85mr544367wmp.198.1703266962256;
        Fri, 22 Dec 2023 09:42:42 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.41
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
Subject: [PATCH v4 28/29] ARM: dts: rockchip: Add HDMI node for RK3128
Date: Fri, 22 Dec 2023 18:42:19 +0100
Message-ID: <20231222174220.55249-29-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094246_099166_6AEC563E 
X-CRM114-Status: GOOD (  12.72  )
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

RK3128 has Innosilicon based HDMI TX controller similar to the one found in
RK3036.
Add it and the respective port nodes to the SoC device tree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - no changes

changes in v3:
 - no changes

changes in v4:
 - none

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 33 ++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 1a3bc8b2bc6e..fb98873fd94e 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -270,6 +270,11 @@ vop: vop@1010e000 {
 		vop_out: port {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
+			vop_out_hdmi: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&hdmi_in_vop>;
+			};
 		};
 	};
 
@@ -463,6 +468,34 @@ usb2phy_otg: otg-port {
 		};
 	};
 
+	hdmi: hdmi@20034000 {
+		compatible = "rockchip,rk3128-inno-hdmi";
+		reg = <0x20034000 0x4000>;
+		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_HDMI>, <&cru DCLK_VOP>;
+		clock-names = "pclk", "ref";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdmii2c_xfer &hdmi_hpd &hdmi_cec>;
+		power-domains = <&power RK3128_PD_VIO>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
+				hdmi_in_vop: endpoint {
+					remote-endpoint = <&vop_out_hdmi>;
+				};
+			};
+
+			hdmi_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	timer0: timer@20044000 {
 		compatible = "rockchip,rk3128-timer", "rockchip,rk3288-timer";
 		reg = <0x20044000 0x20>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
