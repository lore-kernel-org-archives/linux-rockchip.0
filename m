Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 692AAC07E9D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 05:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tTWkpIug1nyhAqe0bfa8QHJ1CXKKaEosldB1MD/03RQ=; b=d6plvyA1ckyB8v
	o8q0xRITCgzPSps1w9yCkWoP6SoLEOEzYcIFaQXnVIXh+fod/LSVPlLEuk0eASr440aXEy278Td4K
	7PZS1RtOZRW7AjpDtGs42fttc3VZ0joJLJd/NMMuvMpJh8BbodHfYwUcdmhRwBjV3yXWh9dbMDwkR
	lOlJUC1BgcuvyiiG8zAJLT5GJIzirP7VkNM8KekbeR0cViUVlnDtYuw4Vx8JOKj100DjyZ/o4a+ZZ
	eVl5Al1naohx2ruRsbCVZ9q9/ZvGdMd7Qj09/2UtW/he8M5AXtX6aZsD1xOYBM2tf8faUBePXMMMh
	8Lf53YxiCz08qTVIbP3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1och52-0026un-29; Mon, 26 Sep 2022 05:55:00 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1och4r-0026rQ-Pu
	for linux-rockchip@lists.infradead.org; Mon, 26 Sep 2022 05:54:51 +0000
Received: by mail-lf1-x136.google.com with SMTP id k10so9158676lfm.4
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Sep 2022 22:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nabam-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=X+VWAsBrIwEfcisjAcclNatXU+W7hYzJIi619hVAYo4=;
        b=5eAEQIvfh6PgVVrKOQDhrOJzQOEWut30eS5UsyvaikF2HxXHMsve8fRLWEzXxS8ZCB
         wV1NrRt4+sTr+4V+mDcRMM3n9AWCwUMqjFzsyyUPauf7r5ZaFkm4XATT+pJNop4OrNN6
         uAIUn1YfQjrG6guqfvBum2afvAxRSzMEKDCot/RKIZFPgJ0t+u0NgpOri+zbAyemAEr5
         bd9eV2SnBaDQF7s9Jv6SFNpSS5B+BVvG5N/9zmlQjE0sjsXMuQIc8duf2j854dnAakAI
         ZlI+x8N3CskA2+K3A67MOgsjU/xAthaRbFL8eWqY4oLqvGdBMC24IS+/6oydquK57vRn
         00BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=X+VWAsBrIwEfcisjAcclNatXU+W7hYzJIi619hVAYo4=;
        b=sfmwTWvSTA4vW57lmEpiJ3U1YI4Im5bLCgmOyCHJSSMwabN75AeoPbyHdwDPJJY/yI
         avOZYaS/owVBAy+UEYyVD32rWOUKp7qq2x3bdRNribBs82vd7OJztYp7jKfM07OUDzj6
         5aBT70n3VHTfzc0fjIkwNT0FRZFAxenxjrHL0AAX7iVeNWkA3Sg5ZHqYDgEAboCFcoQl
         nHU6RX7n/JqmpjnAfyCLY5YdkimxfBE1vSZL3cpQ/Y5qswqbIGHXapF2JDzCEOdYIsWB
         mldUQHopWrPUpg2q+IWMWavTGAbxcYGpLeE/M+VIxhqrKYG35sGPKMsMUoJS3Vf2+dZp
         mztg==
X-Gm-Message-State: ACrzQf2Vi9tsCWNdRfUTueIdyf8g+p9hqV675Xz0elfawE1of7XduvZj
	Mm0ddPRpI4Vh07w8ExKwI/efag==
X-Google-Smtp-Source: AMsMyM4cZ97MklJ5Y/TZMAOLJPoaymov4ootDnxdWi85A0d8+O+ucKqqpJBuyICClp8AYZbld8h0GA==
X-Received: by 2002:a05:6512:33c6:b0:497:9df1:a25a with SMTP id d6-20020a05651233c600b004979df1a25amr7613701lfg.562.1664171687262;
        Sun, 25 Sep 2022 22:54:47 -0700 (PDT)
Received: from 16-inch.lan (c-7f0d225c.016-470-73746f7.bbcust.telenor.se. [92.34.13.127])
        by smtp.googlemail.com with ESMTPSA id e27-20020a05651c039b00b0026c5ab1883dsm2271114ljp.16.2022.09.25.22.54.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 25 Sep 2022 22:54:46 -0700 (PDT)
From: Lev Popov <leo@nabam.net>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Dan Johansen <strit@manjaro.org>,
	Lev Popov <leo@nabam.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] arm64: dts: rockchip: fix quartz64-a bluetooth configuration
Date: Mon, 26 Sep 2022 07:54:33 +0200
Message-Id: <20220926055435.31284-1-leo@nabam.net>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <CAMdYzYpdhJ-wWN9UAppQvaNqK8Y_RadYv2v67gD5S_u=1ZXw0Q@mail.gmail.com>
References: <CAMdYzYpdhJ-wWN9UAppQvaNqK8Y_RadYv2v67gD5S_u=1ZXw0Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_225449_844105_CD8D8331 
X-CRM114-Status: GOOD (  12.26  )
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

For "Quartz64 Model A" add missing RTS line to the UART interface used by
bluetooth and swap bluetooth host-wakeup and device-wakeup gpio pins to
match the boards physical layout. This changes are necessary to make
bluetooth provided by the wireless module work.

Fixes: b33a22a1e7c4248608e533fc4fa524258b3fae84 (arm64: dts: rockchip: add basic dts for Pine64 Quartz64-A)

Signed-off-by: Lev Popov <leo@nabam.net>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a05460b92415..91908081c5ed 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -740,7 +740,7 @@ &uart0 {
 
 &uart1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn>;
+	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
 	status = "okay";
 	uart-has-rtscts;
 
@@ -748,8 +748,8 @@ bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&rk817 1>;
 		clock-names = "lpo";
-		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
-		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
+		device-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
