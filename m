Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 357DFC48BF8
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 22:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXQF7KveXwnfGbLKlUIxTj5q5AiZ8dfSeaVIBl1tNtQ=; b=KmOFk8ErMvYD8S
	iFPETa7bkUKoCjHPjrRMRuW36C7NOfW0cs6tpi5dSOsenhEH1ku/U/oHMhak6+VNpTcPGQr7+rhD7
	XjoCs6Y6Hrtimm8tdBp+YPyAUiCc88RkULTJGKbsaIjfWCkayyJENh6MPb+hQWQ/OuQ2fGHzW6eOi
	u+D3jDkbB4PTRe1EGual8R0Th3IZceONJNL3WmC+W5QtX4LrcgyHWg13RxpwY//JgrnCBovYH9ni8
	q5G/Ws/3Qgr1BLuo3VGwRQq1K7KvRIWVpfLXyL0t/ERtKZKbtYP8Uvzbp6QF3AVw5ukBUION+4sfk
	hhfB2o7d9wTj96fq0JtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcCFj-0000000CQ6S-0yCR;
	Mon, 19 Feb 2024 22:36:47 +0000
Received: from forward502b.mail.yandex.net ([178.154.239.146])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcCEa-0000000CPFp-36Wt;
	Mon, 19 Feb 2024 22:35:38 +0000
Received: from mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:3285:0:640:fd1e:0])
	by forward502b.mail.yandex.net (Yandex) with ESMTPS id 1FC815EBA5;
	Tue, 20 Feb 2024 01:35:26 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id bYZIDNh7RSw0-thMYkJl5;
	Tue, 20 Feb 2024 01:35:25 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1708382125; bh=b4eLeZh5Mnbkx+vP9QhG8D6/bkdc9Is/49k/ny0l1yM=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=hN8ntcPcjSH7ehEGUMHSl64uKd2f9r8XbFLPVVeS6MIETBO1wZeaP5fNVvM4uJR/k
	 vHbZmqqDeHRdkKbr7x8gYqVD9rysxSKFEew6rHr/sReurUKr+gI40j2R4a++CIok7b
	 2OMAPcMczDofNEm5rY1NK72sUANXIo+2FB7CzvTI=
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
Subject: [PATCH 8/9] arm64: dts: rockchip: Add UART9 (bluetooth) to Khadas Edge 2
Date: Tue, 20 Feb 2024 01:34:24 +0300
Message-ID: <0a10afeff3aec3a8bccca2dbe4e65f7b4a2c4666.1708381247.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <5a7bd2cd8703e51382abfc11242de59d45286477.1708381247.git.efectn@protonmail.com>
References: <5a7bd2cd8703e51382abfc11242de59d45286477.1708381247.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_143537_158809_BFA68D40 
X-CRM114-Status: UNSURE (   9.28  )
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

Khadas Edge 2 has onboard AP6275P Wi-Fi6 (PCIe2) and BT5 (UART9) module.
This commit enables UART9.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 .../dts/rockchip/rk3588s-khadas-edge2.dts     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index c2a329f151a1..767e21b2dc34 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -244,6 +244,20 @@ ir_receiver_pin: ir-receiver-pin {
 			rockchip,pins = <1  RK_PA7  RK_FUNC_GPIO  &pcfg_pull_none>;
 		};
 	};
+
+	wireless-bluetooth {
+		bt_reset_pin: bt-reset-pin {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_pin: bt-wake-pin {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		bt_wake_host_irq: bt-wake-host-irq {
+			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
 };
 
 &pcie2x1l2 {
@@ -647,6 +661,12 @@ &uart2 {
 	status = "okay";
 };
 
+&uart9 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart9m2_xfer &uart9m2_ctsn>;
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
-- 
2.43.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
