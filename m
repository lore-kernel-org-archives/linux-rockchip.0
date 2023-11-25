Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41CAFC07D59
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 19:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+YCchdRT0oetAo/e7EDKSzFdKTdo10O+d7zRajnod0Q=; b=nsfHXM8myL8Kkw
	jjrefEps/Axad1GM6JUiIZYp6Dw2cP4KjZRALmiQjfuNiDQzZNGK806jsb0JGXnC/FOUPq6wWstFA
	GlyxkfD9B0dmxcY1NKnnXnItE+iWfQOEskhUlDZ+GrFxXCLHGELNm5bBTTm8r6tvRgXA/KXR4uWKY
	7FxCHb5KpoyixfjP/eOcK8P2UjQRU40P6a3lVr30CbheJ1KeboO0hfl/x3P5vlvOMbeYH15uP8/Ya
	9CQ5pCq2NY6xq6p/f91ZOx46QJajuNlwkHpZpNHnlRUoIzfP7xk9tgMNBXx3ri/o4Cm65UEL+7evr
	js1sgq8cTme4fQw3S4rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyz-009fyb-2A;
	Sat, 25 Nov 2023 19:06:25 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6xyZ-009fey-0X
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 19:06:01 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-6cc02e77a9cso692854b3a.0
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Nov 2023 11:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939156; x=1701543956; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6w7lwrxipdbBXTgXfmHYMOucEsWQFdIlzMEbWicO0MY=;
        b=QtjwpjG+mQoBBTrOpKeDgnSzezykAZMVqsxT+un7k4yeqDtcTZFkeSUwveIIPKUpos
         Y7kEt5m3cRtEFKIRp3+zeeh2dc+DSlgGVp+T+gDoV/y+rv76Uzwer+BudfR1LqBE6jaG
         TNguE04yFXxdco3wt+bnL/74obOOwhlWwT2gXz5wPRKbdD7CeC5s3gXvhNIIHpMwne2p
         OAEuBvCEZujDbTw81rddtweyvNYJTj86ylDvKPHy3OCgUfbLoA5nUa0+K0UPmT5VkQdA
         R1KtiRdxDmg2dx36tDQss5pI5Br7pWnIGIOZlCv1oEZTXeXMaHLsqgHMK/oVIn5oJDe3
         N4wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939156; x=1701543956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6w7lwrxipdbBXTgXfmHYMOucEsWQFdIlzMEbWicO0MY=;
        b=iVLY6zBu3Htx6ec2rExsDLKaqLKAu1ntu4KlAKlAFBjqCIF3w2A5lYER2IkbJvmLa/
         UHd00XAVYEVQM7rx/I9RMxubJ4mVchzPsAVhxr1/AK4yZbXGdqqJBieKyalkAvsJtLNh
         Y2HPlfasankQ4D7hbJ2hG+bFWsHEUbis97/X0tyCVg9FUxYn4FDCslC4Z2SRpiHVi/9Q
         W7o7AoX9dAAiSJmDTjXtk31P/yMqJ1BQMHGwyuGc5WgJZw2PYNUYHAJr8oQdGwvUk0cL
         QRFKmvhXa/Vs3HwFbugDgvcIs/qBnVFNljFz0FcNRWrk8FSBXWytJrYkcRzDs7HzeLFf
         Bs9Q==
X-Gm-Message-State: AOJu0Ywuuc5vlUPKw4CBkySQyJaglh4aelFcFkPZ6DCGgzFLbIJ4tfor
	Sm0IIUChJJtp+B4JWQEe6GzvQQ==
X-Google-Smtp-Source: AGHT+IFXANUwsO0N1TGJHIizoM760Fo7St06cVgpGkSRim2Zr04Cso03M/nLAvq6AD382uBTqELPHA==
X-Received: by 2002:a05:6a00:2e1e:b0:6cb:a93c:dfd1 with SMTP id fc30-20020a056a002e1e00b006cba93cdfd1mr9850107pfb.14.1700939156140;
        Sat, 25 Nov 2023 11:05:56 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:55 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 09/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
Date: Sun, 26 Nov 2023 00:35:21 +0530
Message-Id: <20231125190522.87607-10-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_110559_229032_DE8E8FE5 
X-CRM114-Status: GOOD (  11.65  )
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

Edgeble NCM6A-IO board has 2 port USB2.0 Host and USB2.0 on E-Key.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 130b240e0da8..9b65df3398c3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -48,6 +48,20 @@ vcc3v3_pcie3x4: vcc3v3-pcie3x4-regulator {
 		startup-delay-us = <5000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio3 RK_PC7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		regulator-name = "vcc5v0_host";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &combphy0_ps {
@@ -135,6 +149,12 @@ hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	usb {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins = <3 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 /* FAN */
@@ -179,3 +199,38 @@ &uart7 {
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	/* connected to USB hub, which is powered by vcc5v0_sys */
+	phy-supply = <&vcc5v0_sys>;
+	status = "okay";
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
