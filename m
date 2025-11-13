Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04868CD98D4
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZN/Xor4tjshyww/UiRJTWNySi7r9X/fkHOtQGCqNSxo=; b=iz5Ulzv0A4v09W
	uNlMxh1GDjBnO1OYqd7N60mR8MDdse8HY1pHHpsywdhXLtP2Vs7u5fr9iJkfphSXqEjLc14Okb/HP
	N9u0Hh2WGdlMMDq47TNTAYSrHx2mGFIfJqFH6ay9ibscIoCQt25EDOPu1rMwje86xD5IiBTH1W3wn
	O+rnCPCzeLFY/YPhmUWe1TON/NPSL5fxXsAKp1Y5p9FIeQ4MeNagvuEVSRuc3EwMaK+K+WK1IR83Q
	erIVU0xD/rCw+7ruCf4EwFjuC+mSnUWOr2EjS+EdI5KAh2SBPbxPRfs0+Ed6MLBXrSoK52I/rU+4v
	gCxZ4+bWBh6XU7pkCSvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJd3J-0000000B0Vf-0Fzx;
	Thu, 13 Nov 2025 19:32:17 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJd3H-0000000B0Tn-0dli
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 19:32:16 +0000
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-7c70fcc8561so468115a34.0
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Nov 2025 11:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763062334; x=1763667134; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IXmVFPMQ40Hruy/E9zAx+RGPm4uKA5BjVJYa0KPmt0c=;
        b=SF9dgonP4IZ6e9iOQEGeIwx0wSMEfnyFRMhlSdjEr/QHugnSSHeqoUqC7dftpHcq2N
         amgG7GlcLxdIPCjgEgPltMmSs5J3+qADzdFw7bFO91PYA1ltOdP+LS6ONT9EP3F21QYD
         +RUBbWiNTuhBUpbXkmnJH924Zc2QR7msWennfQKChD/6AFh/lDZcuJRXTRqUxeM70Ivc
         dsDozEzIHzsDibqH4mKTiUWGyhk2uluz4jBVSQa0Rbwv5i2zj+Ak7HfRE6Af77/65rJ3
         W2mNfQhyaa+bd/MbXiTDsMj2jDaisZ8ApVMvkncANIjCwri6lUhWmYoxWRBqxxfyY6pq
         5Mqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763062334; x=1763667134;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IXmVFPMQ40Hruy/E9zAx+RGPm4uKA5BjVJYa0KPmt0c=;
        b=NKFXm/1tvPkpixXEZrBOLoP87hHfVWl2W5Icf8Af/AgF/ddixSF5KcMcbeBH67kcgZ
         9ky38pODspzfFo3/2Pr6zgNefys/XBAJRa7p6nWqUK8gB6GHbGWuVCJkV1LVE9Y32FE/
         s4pqbRbaEVKhmnJMcW7sTM8KGrVoAOV67NRpSQNAr/5gAgYkS0tHbE6AGHGY9uzeTb/2
         qa5K3G/9XcZo8+7M/89Rm4K6BFKBNJrihA9sgIZ+0NFmWUrxu7D4P2Fh7hmaudEYYP9/
         BUMfdFN+IEh5aigWP8JSkDliagVnDNkOrpuC6D0iJy0pmQghInQD4b7e56TzNv0ExC5J
         5o4w==
X-Gm-Message-State: AOJu0YwGNC6QKEn8QZ1MLieGL3nHR2gDa13v45O2Zl4j6lhDgD2qeJIg
	XNZoo9xV+KSR40kuKVDrdlqkSZNFW+0R7gL1LHP/jyjofqFj07WOreV6nEsozQ==
X-Gm-Gg: ASbGncvF3PtPx4NmchV0rmOj3Wo5vwyVMCgVidObafJqVfwgrbc9A7tPs4JkhimThrN
	vjise5eowcKdL+wv42OuhEuVz3llrZ7fqDXzb2QtxpGEroAHeKokHgLMb9Zk62T2WBqPjVxh+VW
	iPrbeMOyqdyI8RV4+TAKbO7hfaRz8jp+c6G+ivVd7dcYtkX7fCoIcSa6EgNUV0ZmzlKUz5pBvrD
	6tsvrp03qCKnNYRZLG/SJmTicSv6hYDLXwbU3qpHkqePDLfUopjxBxHD36BveNPqRhX8wko3EC8
	8XMbKHaqb8QFebt8kR3BdRajLvb5gg/5vs8em2lahZPJaacRriM3af+vJC8us0aJ3XxwEj7khSs
	LlPRywG9Rka7ZjdutxctrTH0u216gih/RUHbFMtZ/Xc09HYDLwvxZOYlZw47uB2UX5Lr2bpIfXP
	RXcXGlxpWV
X-Google-Smtp-Source: AGHT+IGfs1HSOKgCkHh3+23cdx5vycxiMAoNuzjFkoYhUV+ov5/IFKg29WJ9qWAyfuSrgzsn2nyxJw==
X-Received: by 2002:a05:6830:660a:b0:7c7:1c77:f107 with SMTP id 46e09a7af769-7c74455a378mr562121a34.34.1763062333910;
        Thu, 13 Nov 2025 11:32:13 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a392fa5sm1693527a34.19.2025.11.13.11.32.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 11:32:12 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mripard@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	rfoss@kernel.org,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add HDMI to Gameforce Ace
Date: Thu, 13 Nov 2025 13:29:39 -0600
Message-ID: <20251113192939.30031-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113192939.30031-1-macroalpha82@gmail.com>
References: <20251113192939.30031-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_113215_198529_751C59B2 
X-CRM114-Status: GOOD (  10.63  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the HDMI port for the Gameforce Ace. The HDMI port
has no HPD pin present (the manufacturer's devicetree states the pin
is reused for an additional face button) so add the attribute of
no-hpd to poll for connected devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index f5894672fcbd..b98e1a3369dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -300,6 +300,20 @@ amp_headphone: headphone-amplifier {
 		sound-name-prefix = "Headphones Amplifier";
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		ddc-en-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&hdmi0_en>;
+		pinctrl-names = "default";
+		type = "d";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	pwm_fan: pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
@@ -498,6 +512,34 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	no-hpd;
+	pinctrl-0 = <&hdmim0_tx0_cec>, <&hdmim0_tx0_scl>,
+		    <&hdmim0_tx0_sda>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdmi0_sound {
+	status = "okay";
+};
+
+&hdptxphy0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	pinctrl-names = "default";
@@ -746,6 +788,10 @@ &i2s0_sdi0
 	status = "okay";
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
 &mipidcphy0 {
 	status = "okay";
 };
@@ -842,6 +888,13 @@ charger_int_h: charger-int-h {
 		};
 	};
 
+	hdmi {
+		hdmi0_en: hdmi0-en {
+			rockchip,pins =
+				<4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins =
@@ -1416,6 +1469,16 @@ &vop_mmu {
 	status = "okay";
 };
 
+&vp0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
+
 &vp3 {
 	#address-cells = <1>;
 	#size-cells = <0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
