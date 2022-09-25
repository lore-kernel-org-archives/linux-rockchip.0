Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A57AC6FA82
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Sep 2022 12:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fe7h08IJy4TLu25HkflVnZY0pAMhov/PuadaYS4LPGo=; b=oAHefhdNXdNbve
	gnuwjX7N81rJphJFy67xPtqt55rI68SkfW68HthHiRG/7Y3A7Th6SGIDEO0rSVW8w9Gch75aee6UO
	5KSs3OG0XFLmqUgwaDtbUf3GEyj2nKvXLyAVcfXGSY0l7A78i6I7U/GOBSdFo/TwkDH+oub9f+7z6
	oAY7X9Px+mPaqRCDZXPIaMd0pIYEHaKccEJGwvqPm4BIvgHTQTqd0Sqn66LmGmh9oTyZKO3vrylKS
	lFBEP5XEjyQjHdSZw6DUN0NsCSMi9f2bE6biZ58n62ytDgIF6jjqSdBUnOH4TFPIagO2nAY/b7kJY
	ZQ6R5LTZdLclG/4IIAMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocQoH-00DSKh-VP; Sun, 25 Sep 2022 12:32:37 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocQoG-00DSIk-0N
	for linux-rockchip@lists.infradead.org; Sun, 25 Sep 2022 12:32:37 +0000
Received: by mail-lj1-x230.google.com with SMTP id b6so4703870ljr.10
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Sep 2022 05:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nabam-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=SyIJ4xReYhaGfQD9IOYV1GyBGeZ/knL4/dXn4A3KuoE=;
        b=Pr9jz7KbT19OgX66iH/phdojxtRKaOKcFxrfTjDq7xBaKP8mtxi32TE+qatCpZC8y0
         le+P0+FzawTdPPtnCIQzuyPEfcXgU89k7pPNZVFZKZnWuhIYEKbfMY6ElsG7zJGSq8wx
         LJpEArX4XO4RueOvJLBPv+X9l4RO3BjKLwow9ztk1Dfv0h2bj9JhI8lIDiLlJXE7XLIf
         hSel8yHVyevK9QxSxXTCeogTo2vOvzIJsqA7YnJrTVCJrsqOAGsr+qgtuM7VHSqHEJK0
         LXmpzSRjrGvxPq5gdYcmIMkWO0BMOzHWx5CV/YsM2Q2R4Uaeex11CB9wCu/YMA4AbeGU
         vZDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=SyIJ4xReYhaGfQD9IOYV1GyBGeZ/knL4/dXn4A3KuoE=;
        b=Aakuod9Wom001X498oQKExM5o32amUaBuOCkelM3rrinjmR5YLAG8xbBESClT68fsB
         Qm03gTYxvUilX4bZ+G+8TDuKPuI4H9EH6y3gizzxRn2qstmI2vYY2/j23twe/A+QJuw8
         TdHqUlbeeDxDNxd+qfNxdrR+geE1793XdnyLg3k2uc/xt2gN9r2fpPFnZclSAoG+REPh
         yPmJX2LsUL1E3M8pFvOYi925SipjKT2gTV/RE8okDdfM87oOspDVqQ1sbIcIlZbai6Fg
         6FT576whYOvpCCfiwiXJBi75eo+d03KcIHYcYFXgCvutpethDBij8gYZzeWb9kW0Sekp
         yzSw==
X-Gm-Message-State: ACrzQf1E20iWpSkMJdo7hf4mVQcpQ1WG/MVR+5wlzZWjVdcueH/jOdS/
	Zrw6lNZ/w1yIAn8ZVnlcLzkurQ==
X-Google-Smtp-Source: AMsMyM5qTBOpkg1FJNpj8S8lFhgO+0g1sh5ifRCx6thJjhYreEe7ogJkgbWKCbl8UMHemr9lz4t0YA==
X-Received: by 2002:a05:651c:1548:b0:26c:61b3:7129 with SMTP id y8-20020a05651c154800b0026c61b37129mr5599032ljp.381.1664109153337;
        Sun, 25 Sep 2022 05:32:33 -0700 (PDT)
Received: from 16-inch.lan (c-7f0d225c.016-470-73746f7.bbcust.telenor.se. [92.34.13.127])
        by smtp.googlemail.com with ESMTPSA id y6-20020ac24466000000b00492e69be4d6sm2202314lfl.27.2022.09.25.05.32.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 25 Sep 2022 05:32:32 -0700 (PDT)
From: Lev Popov <leo@nabam.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Lev Popov <leo@nabam.net>,
	Peter Geis <pgwipeout@gmail.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: fix quartz64-a bluetooth configuration
Date: Sun, 25 Sep 2022 14:31:42 +0200
Message-Id: <20220925123144.70639-1-leo@nabam.net>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_053236_284651_93FE5EB0 
X-CRM114-Status: GOOD (  11.23  )
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
