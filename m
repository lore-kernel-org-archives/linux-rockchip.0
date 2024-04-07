Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AD7CCD11C2
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Apr 2024 17:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HKoom79cEuq7gwbU51ONT7GgTcN1yOpsNRMLB+j4N8o=; b=r1iL6Mm0mvlfwA
	wej0V5qqZrx4Ku/iTRc9sfOF80VkkJztdoQ3jA8JSuFNn/yHbnoqS2oI+uzc4DIu94jBamQfIm4wT
	FMDeln23elONE2vd2/3hKwV1Pk3UyWJbw5ppgVTvDilig3vf5ZOMrAcgnm6dSyAv7xH0KEyQLYNLu
	FpH2EGaFU4lYLPPq13l+nSRL6BDcNbYgD+SYqkg6b3YzsgU+84WBZ4hXWGgcn31IrTwxxm/ro12Tn
	RX8CvLTLCBjclmGa9VwzV2RK0e7EJNpiiD+4bmNa9wJJtvAx+CjjsoL+Vn7rO1LI2SlPJQk8zPR+h
	6lTXxD62AwgwWbZBeJoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtWP3-0000000DAMH-3L2x;
	Sun, 07 Apr 2024 17:34:01 +0000
Received: from forward102c.mail.yandex.net ([2a02:6b8:c03:500:1:45:d181:d102])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtWOz-0000000DAL2-38kp;
	Sun, 07 Apr 2024 17:33:59 +0000
Received: from mail-nwsmtp-smtp-production-main-18.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-18.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:1f0b:0:640:2d63:0])
	by forward102c.mail.yandex.net (Yandex) with ESMTPS id 62002608FC;
	Sun,  7 Apr 2024 20:33:43 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-18.iva.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id MXbpHdhoE4Y0-ZUKzSviq;
	Sun, 07 Apr 2024 20:33:42 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1712511222; bh=E8E7VpkTwqMaLTdo6EG4QaRlM0WpseQ15mLUPmQca6Q=;
	h=Message-ID:Date:Cc:Subject:To:From;
	b=sLDE50pKC0RnVfAPf+OcwjQdJLYn5WeinNqVd7yrv/4mAwZAOWF+wKTTWp4e8277D
	 gUVmLajXrClBzGnvoG886+bivlTmC6rusQMXbKwieFJaLETBcUC8Ov+61n9Hv9InH7
	 eGWofUiv1PL1X+Q51E8G+PjeD1XCqPp4c1OOyxRU=
Authentication-Results: mail-nwsmtp-smtp-production-main-18.iva.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: efectn@6tel.net
To: heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	sebastian.reichel@collabora.com,
	Muhammed Efe Cetin <efectn@protonmail.com>
Subject: [PATCH] arm64: dts: rockchip: mark system power controller and fix typo on orangepi-5-plus
Date: Sun,  7 Apr 2024 20:32:10 +0300
Message-ID: <20240407173210.372585-1-efectn@6tel.net>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_103357_998706_2F8DE4C4 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

Mark the PMIC as system power controller, so the board will shut-down
properly and fix the typo on rk806_dvs1_null pins property.

Fixes: 236d225e1ee7 ("arm64: dts: rockchip: Add board device tree for rk3588-orangepi-5-plus")
Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 1b606ea5b6cf..1a604429fb26 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -485,6 +485,7 @@ pmic@0 {
 		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 		spi-max-frequency = <1000000>;
+		system-power-controller;
 
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
@@ -506,7 +507,7 @@ pmic@0 {
 		#gpio-cells = <2>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
