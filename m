Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5604FC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jan 2022 01:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKR+FYCxK3n3HEXz/EkIZ5Vo+Vucn1cpy5EyyVnUTEA=; b=wSeuoaQPxNEbre
	DxGxLRvYaEc6MQ8Ppw4RM+FsUangVj3vo5xzJD8Gkxei28n+5uuOyyAXmHFi0kk8tA1lRejtDNArl
	+3FUQSJfNxJT2rNKlZJHj2qHSCBOZjtlhsmmUDrSaiZWFFEmmpPTpf12b9Ugpy3jt4qJ6E0Py3HoB
	mRCh6dtMBwkFwD2PZvNQDjL595zpb3ngyKnAOSbf0Jb00+z8hO9YkKSBp3rbFOEI73DQk4hkE8Coc
	gdj0TQJelJc5PNiVStf2xkzLHuaz8d04RagYeF6T7C4iMMQT23dsOVl6WdREd7hHuI/1fs7uQFba7
	+YQAdrwy+/jsIA5WImBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDFjf-0000Y1-Jz; Fri, 28 Jan 2022 01:07:31 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDFHO-00HVZU-HW; Fri, 28 Jan 2022 00:38:20 +0000
Received: by mail-qt1-x82d.google.com with SMTP id e16so3958110qtq.6;
 Thu, 27 Jan 2022 16:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=U0ZtMbfGNf5bI/1AePHt7T+pCQPNUqP752Ba3r+02dM=;
 b=ky3S5f7lhADSWWb9ST7r5M95iARgFNUMQiSs99hEtWaw9Cp2LuMvM2peP/BugzC8Qt
 hL9HrtWe8moyMoNhZNvQiBjznS0tyEp0+rY8HYfYN3VoUS9cBnnKNVKYMZvPiwqJ3hic
 rb+I9nYH8h0r66PhJaB8YPjBF9DzPXWTqulCSkokuNa48FoUim3pIGSCvAdRruR0m7or
 ZEFoVTctqzAl3Jqh0xysji9bV1mN4IQwTUN8w0vgoz9hC+t+leeHidi4OkC03NIkFhF6
 WMPV9PjfvLSKgDZRSQ/1m6rui25WgB5iCND4dEom4YN5aYnGka/J8MzSpBSV/2uSjfvw
 hwSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=U0ZtMbfGNf5bI/1AePHt7T+pCQPNUqP752Ba3r+02dM=;
 b=vr3MVtPtMAt25vBUawyaUkTTGrU9vdhmn5328UFgm72NEcPUjCRvrH9XNpGHFruiDG
 ed4+5PIy4/Z8cvtcJNckAVPm6MDSZmB4G52MeyUVsPX+ZKtbp26iww7XEnzavVdTXx89
 geDWOMCI5+rfWM5tkKgjn4Ulc0WTvaz5GfcTkCDJBcwLSyxaXPo6EomxwkWUqu6mrUEy
 KDivWUPSMIPZIo1XlkI156bVicc7G+qWXKtRC0FGsGZwWXwnLORGx5XboUsgDuNsk09k
 3xZZS6c1NPzvkJsBO54cPAsp3ryJweEZeeebdXDlgDLH4c+GGWETyxlqYjuLfMapiYnG
 FQJw==
X-Gm-Message-State: AOAM531UeUkJxoLcpPQt4ph+Qhxvh4v1ulq6Q36kON1EcRWitA5RFKcA
 O1jykL9HJGWorc5hYvC1n8k=
X-Google-Smtp-Source: ABdhPJwRZPAqYv4oJNy1fNafX2Qj6lvpf2KHx++EeZKTn31dh+x8Mtfsyq8oYEbbM/XWJw5lq3VWrw==
X-Received: by 2002:ac8:5e0d:: with SMTP id h13mr4763623qtx.97.1643330297428; 
 Thu, 27 Jan 2022 16:38:17 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id t1sm2142883qtc.48.2022.01.27.16.38.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Jan 2022 16:38:17 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] arm64: dts: rockchip: add Quartz64-A sdmmc1 node
Date: Thu, 27 Jan 2022 19:38:07 -0500
Message-Id: <20220128003809.3291407-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220128003809.3291407-1-pgwipeout@gmail.com>
References: <20220128003809.3291407-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_163818_649755_436C03C5 
X-CRM114-Status: GOOD (  11.27  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The sdmmc1 node on Quartz64-A supports the optional wifi module from
Pine64.
Add the sdmmc1 node and requisite sdio_pwrseq to enable wifi support on
the Quartz64-A.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---

Changelog:
v2:
- drop status = "okay" from sdio_pwrseq
- drop disable-wp from sdmmc1
- move reset-gpios to be alphabetical in sdio_pwrseq

---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 33c2c18caaa9..c5a79046a9d0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -91,6 +91,17 @@ simple-audio-card,codec {
 		};
 	};
 
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk817 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		post-power-on-delay-ms = <100>;
+		power-off-delay-us = <5000000>;
+		reset-gpios = <&gpio2 RK_PC2 GPIO_ACTIVE_LOW>;
+	};
+
 	vcc12v_dcin: vcc12v_dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -147,6 +158,17 @@ vcc_sys: vcc_sys {
 		regulator-max-microvolt = <4400000>;
 		vin-supply = <&vbus>;
 	};
+
+	/* sourced from vcc_sys, sdio module operates internally at 3.3v */
+	vcc_wl: vcc_wl {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_wl";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_sys>;
+	};
 };
 
 &cpu0 {
@@ -475,6 +497,12 @@ pmic_int_l: pmic-int-l {
 		};
 	};
 
+	sdio-pwrseq {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <2 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	vcc_sd {
 		vcc_sd_h: vcc-sd-h {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -516,6 +544,21 @@ &sdmmc0 {
 	status = "okay";
 };
 
+&sdmmc1 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc_wl>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
 &spdif {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
