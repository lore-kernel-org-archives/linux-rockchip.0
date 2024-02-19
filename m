Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F008C48BC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 22:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HAKyyXgYdNE/W/rRZctPt1cAKFyoPax9Req+yPCzFAU=; b=Gd7/3uWjuwg+RB
	bg3cAtfDUkT0pxKMAwf3Of1gn+Bn2qZOtbPTiYh5b7iVFK4IAHpDDFRXiXNROQhbXWv3RJPBBmVD0
	16TNmcEw63SFX/mJBZHBLZ5mes/hs5WStT5OHshH4NgPboAQFXNQb46cCmIgEqgSftgO3pvF9uRzM
	rCaJsz+eIdtlGfKHQS2cOC3oKQXMp6YVp1YurF17cFE879Ogqnkj9CYT1segxsKETeWb8EeZRUoo2
	pIsDYsmdKVBljna6OtsRJrEVl6Bw0llUoB+3vwiv4JAuPJLjggNMFb3kwuTtAHFU7LmIQHm8vf1x5
	T1QrV4/kVmLCQZhqbQFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcCFt-0000000CQDc-2nTi;
	Mon, 19 Feb 2024 22:36:57 +0000
Received: from forward502c.mail.yandex.net ([2a02:6b8:c03:500:1:45:d181:d502])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcCEb-0000000CPFh-3SsK;
	Mon, 19 Feb 2024 22:35:39 +0000
Received: from mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:3285:0:640:fd1e:0])
	by forward502c.mail.yandex.net (Yandex) with ESMTPS id 0E82660F86;
	Tue, 20 Feb 2024 01:35:28 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id bYZIDNh7RSw0-8uC7ISLC;
	Tue, 20 Feb 2024 01:35:27 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1708382127; bh=tjOeEAQ/Gd5EHzC20z6YlhmTnhYEtnY97/66ZuEpgP0=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=COeQMxXCKQ43K+rRMKwHrtY+skG2ILaQO0qPV65mVLYCvNWCpvJ2KctR6Fg3nqya1
	 2WF56xkoG1yyKDsK9axNl8ds2BXOAefaR9L5aAcEYXXcsLr12rAWoV0gKIwlri6Uq7
	 9Pw+J/oLSXKV9OphJ9Bzk93sak6LmJ6+OXbx1ywY=
Authentication-Results: mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: efectn@6tel.net
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	Muhammed Efe Cetin <efectn@protonmail.com>
Subject: [PATCH 9/9] arm64: dts: rockchip: Add RTC to Khadas Edge 2
Date: Tue, 20 Feb 2024 01:34:25 +0300
Message-ID: <4c4c9140ff36f290ba64ecc8b3e218df6a5ab273.1708381247.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <5a7bd2cd8703e51382abfc11242de59d45286477.1708381247.git.efectn@protonmail.com>
References: <5a7bd2cd8703e51382abfc11242de59d45286477.1708381247.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_143538_218174_64E8EBAE 
X-CRM114-Status: UNSURE (   9.63  )
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

Khadas Edge 2 has PT7C4363 RTC that compatible with HYM8563.
The RTC pinctrl is also connected to MCU.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 .../arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index 767e21b2dc34..2022a174594c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -216,6 +216,18 @@ regulator-state-mem {
 	};
 };
 
+&i2c2 {
+	status = "okay";
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-output-names = "hym8563";
+		wakeup-source;
+	};
+};
+
 &pinctrl {
 	vdd_sd {
 		vdd_sd_en: vdd-sd-en {
-- 
2.43.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
