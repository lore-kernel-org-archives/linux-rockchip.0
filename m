Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58307C46CD4
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Dec 2023 03:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sbKidbnu/v7qoY9rR7b4HvUIm0OzsbDN/iHRqPmzo3k=; b=v57yALLfMyRIr6
	+vLlW/uewim/gYH554ROfDqTYOiK8R8BYLx+EneUtkbkbJUMa8JA+dI4Y8yedwTOzrcMbBBnhRxhq
	S5VvlvR88+uA+4QAAHfk2H/uyD0Ge8F6CF1H1Exz3rO4iyexS++O7X+Pr8Psr/NR6wCtv4xNH3w4N
	SZB8C3ovg+KbR+w43bKLyX456lDl1GnZ7I36/tMFD9YW6hsrDdXsuHnwt3MLv1CF0sJUoPfIe5eVF
	PZj5cTbRTPHOqUUDorfAL8E0VkyEwX8Ygbr57TVj073MF01UdgvXfbx5+LDo+Fk59aMyAB8o0/HDU
	H2zng9i5lkKtmUkKtGkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIgxm-00G1iL-15;
	Thu, 28 Dec 2023 03:21:38 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIgxj-00G1hs-0Q;
	Thu, 28 Dec 2023 03:21:36 +0000
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-427826013fcso50501581cf.3;
        Wed, 27 Dec 2023 19:21:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703733693; x=1704338493; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9+46J6+2KoeZZSgHS8eqkcEN7H/BVTk49hUInsE7T38=;
        b=faox1x4Ti7m3Y8KVr8A/9b00I5OBDkZKkAhy2P3qITE45x9eeH5rfFklP9dKvfImXZ
         D7y2EeOMBfrl+0QReW7S0gQXzZt7xBFF7svHsNaCMHGbbzgC9z9vZ5cJFMDqzAv+5H3H
         NrwS+17P5FLLWgaGkcd6m0nhy0y5WKD5MabMu/ck3BHs8/zum7ceGzkqTlOXwpwiXJqh
         V1PnT0+O+V0v7n5mHbfQIBirvCt26kM/XhjuDIfUQC7n95cfaSnKHxENjmUqOIzK5EJr
         fg4F7kmzuS6XkSv/9kxLAT5Q2ruIm3KwnfCAzdDGc6Zaf4NbAvISMqvE6Rwli69MhR59
         A1vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703733693; x=1704338493;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9+46J6+2KoeZZSgHS8eqkcEN7H/BVTk49hUInsE7T38=;
        b=uv2LHJZ1VqQM9AIKXPtd9gxBLWEqRpKdO6+IuHc88IRhSRCYJc08mE07NMBaY3hT8W
         sKf0ODGe6o/NBCoK8e9Y4SiYgrYOst6itRdsI3h2UFkuYczMLmJczEyXQSEPCBf2Y7u+
         YzPdxuKLyWfg3sVak7zuZT7BkPyHihjuo6e3G2hko96V+qFcpZeDNcoC6f7A/C8OjwT6
         rUwQjgNS8SR+n44w6N/KgcmDcKWguiqk7M8so42yBmNr647lSy14IlNzcafWHw5Y/vEv
         m7BYaV0o4ZOcYr9iFF7vprKCvZLd2QejRt08vzqaoHMIit3Y8PKxDgIM7PkgvU9ItMZQ
         Ntpw==
X-Gm-Message-State: AOJu0Yzhl6nZdL/2SUj/M8yecaqFsBODOmhev5bwG94W2wVSzYWhFdTR
	V6sL/uOqHqmtyLqiEoiSJLc=
X-Google-Smtp-Source: AGHT+IEh/GynUMc484RkLckzzPYuuSTDz6/asR0WgSk8uLlMI48DAARuq7L2QIzSjOBuY2Ivj3ds9g==
X-Received: by 2002:ac8:5847:0:b0:427:ecee:fd01 with SMTP id h7-20020ac85847000000b00427eceefd01mr1795965qth.72.1703733693496;
        Wed, 27 Dec 2023 19:21:33 -0800 (PST)
Received: from localhost.localdomain (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id eq20-20020a05622a5e1400b004278e7f122esm3382294qtb.25.2023.12.27.19.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 19:21:33 -0800 (PST)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: "Thomas McKahan" <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	John Clark <inindev@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: nanopc-t6 sdmmc device tuning
Date: Thu, 28 Dec 2023 03:21:13 +0000
Message-ID: <20231228032114.1157-1-inindev@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231227_192135_194040_EDFA870A 
X-CRM114-Status: GOOD (  10.53  )
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

1) sdmmc on the nanopc-t6 is powered by vcc3v3_sd_s0, not vcc_3v3_s3
   add the supply vcc3v3_sd_s0, and control it with gpio4_a5
2) add the card detection property gpio0_a4
3) drop max-frequency = <200000000> as it is already defined in rk3588s.dtsi
4) order no-sdio & no-mmc properties while we are here

Signed-off-by: John Clark <inindev@gmail.com>
---
 .../boot/dts/rockchip/rk3588-nanopc-t6.dts    | 27 ++++++++++++++++---
 1 file changed, 23 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index e83b71510a47..2360735e58a1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -159,6 +159,19 @@ vcc3v3_pcie30: vcc3v3-pcie30-regulator {
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vcc3v3_sd_s0: vcc3v3-sd-s0-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sd_s0_pwren>;
+		regulator-boot-on;
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "vcc3v3_sd_s0";
+		vin-supply = <&vcc_3v3_s3>;
+	};
 };
 
 &combphy0_ps {
@@ -503,6 +516,12 @@ pcie_m2_1_pwren: pcie-m21-pwren {
 		};
 	};
 
+	sdmmc {
+		sd_s0_pwren: sd-s0-pwren {
+			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
 	usb {
 		typec5v_pwren: typec5v-pwren {
 			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -536,15 +555,15 @@ &sdhci {
 };
 
 &sdmmc {
-	max-frequency = <200000000>;
-	no-sdio;
-	no-mmc;
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
+	no-mmc;
+	no-sdio;
 	sd-uhs-sdr104;
-	vmmc-supply = <&vcc_3v3_s3>;
+	vmmc-supply = <&vcc3v3_sd_s0>;
 	vqmmc-supply = <&vccio_sd_s0>;
 	status = "okay";
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
