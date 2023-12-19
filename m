Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEBC9C46CCD
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuKIU92g6RfSQafSSM5Cqh//U7ibeCiFdSEAcQruj5k=; b=wR++FK+x9NJZgR
	zouZHwx7bWcMeci0mgmT1K8M33reTYKKdI8wpfHj5ZFZNLHwP21c71tY7ZLa7NYLTlw6VRPFlVtYh
	kNjyWTnbz8b2OrkXBnew+Z+W/Rwccs1NagrOWUxs2eh1wAPpbrXGKJQuvIuAQA3MWRjCeo3RKsk9j
	UF45PfQjGO/RzZLcfzkBQEMSbNIi3hMCRuYSQzf16ar06q3+IseneDoZaVDu7BGAS2DlHS1X4jUU5
	B49YHkh+0ykHZjVQjplHI0k+NQlR70874S5O8FZw0GMZiZPtt7Bj7MLcQl//mX/jNnpjG5cgCSV64
	s28U6Qtr8qILNe6wQG6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdVS-00EqWS-0k;
	Tue, 19 Dec 2023 17:03:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTS-00EoQw-15;
	Tue, 19 Dec 2023 17:01:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=824x2Bpa+BljPPIuTHpPefnYLDXHrvCUJjy6fbKwCl4=; b=jVHIPTDAM2poDg+Cgg3Dq0Ea9Z
	ve47DFmn51XSPLiaKQGptFjDJgZZ6BjIGnGqZ/7RkB3eiUM17jql/CYinumU2GNSvNFBPAp+ojtgq
	H6/tS0bGWiOzYt1lbFKZfyByNJ41q3wwiNoT3sQVhsupDsqq74O43cNAmUl7XjBmL/vYj5p2aitdv
	ne/F0T6fGpvd6vItXEFBlSyhVGF6poRkFWjU9nnCnkNNaig4k4UobdasF7zhHhNQeWdBVJHkdDgdg
	ZjRIqID14oQZuDWtsQyGCtkODAg+jNXM4SPKfrI5CfIAHhayEfK5sWcqaZlJfujLjL75xGTl66355
	GscAp+mQ==;
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTO-00DXOI-0Y;
	Tue, 19 Dec 2023 17:01:40 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40c48d7a7a7so45246665e9.3;
        Tue, 19 Dec 2023 09:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005293; x=1703610093; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=824x2Bpa+BljPPIuTHpPefnYLDXHrvCUJjy6fbKwCl4=;
        b=JKAVLkcpR98sJL79JsfJ5LIDbieATYJyepffcw/54vo8HdAVSPAptB/NeG3V91Hn2V
         nWOUaWwzPDMOut+opuYh/vQVjqNI4Mk+Q7M16qtm5p8jM/zIL3B/gVXM8fMEpgwVc0W0
         TOgtWxFrHVuKHLmi3IOvVwlaqdZizTg0Mk06TshDVcNLRw+fFD+Elzkq8fDhPzkegKmF
         HyZTGkN7vhWzoqsJFGL01fbvLlzwCb2WPubwYs3cYwpQQ9VNJmc2PAZQj7OrrjAqhuHu
         45gt5iwcbXmmM9Ry+kqJ0cOhTPi6HoJEQnQfUbiC075KzcTPyA+yW62Om0VMLfbAIzz4
         CkHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005293; x=1703610093;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=824x2Bpa+BljPPIuTHpPefnYLDXHrvCUJjy6fbKwCl4=;
        b=kcwy0X/ljXMttkOBnXT8c/z/Kx/h1Ebip95lSHjUjx5OS9OCs0p3cT9Y9vF/hx9D//
         nmVKynOJsItZfT1RE8WuYq1AtjXSH+GtZ3VfXJU8M1koS/wB4HAGqSA2gRbVWR2XZFk4
         4WBLsrBRrk957qPYUMu2IrfHsA6gyKq8LjhzvB1upFRwEd/Ng3nhKMgfzXGYOiZL1nO7
         p/Iq4msG2PMVrThu1Wk+mqkbFKBI2i0EclxbdlQSLfYLeGPa7AlOTqJhg1J9UBDxRz8h
         y3Ggfm0n0wX1cxrB6zIk7r21iCvXCpeJx6GThX5U56RLj9EFgtRkdMBzKefQs71azGHB
         6Ypw==
X-Gm-Message-State: AOJu0YxQxHrLL6wAjjKjSsWTzSyEDWdKgS/oXcoRzyarY65ycvu9F6zU
	cZ9iQRaas2QK2+D2dVAcDA==
X-Google-Smtp-Source: AGHT+IHgcqfEoRYVHjhmsr69xyQlznMp/1EOCdyz0OLbPaZ9r38nDcrP4sBWbdQwF4XoayjoM4b1fw==
X-Received: by 2002:a05:600c:4c8a:b0:40c:d3a:2447 with SMTP id g10-20020a05600c4c8a00b0040c0d3a2447mr11436802wmp.87.1703005293173;
        Tue, 19 Dec 2023 09:01:33 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:32 -0800 (PST)
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
Subject: [PATCH v3 28/29] ARM: dts: rockchip: Add HDMI node for RK3128
Date: Tue, 19 Dec 2023 18:00:58 +0100
Message-ID: <20231219170100.188800-29-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_170138_284740_D71D605F 
X-CRM114-Status: GOOD (  13.07  )
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
