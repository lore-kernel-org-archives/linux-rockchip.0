Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98D9BC71157
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Jun 2025 14:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Message-Id:MIME-Version:Subject:Date
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+mH2Mk8tW3f26N7Qo2Ue7ojmuFFQwFYr+3XhNiBFYUE=; b=Wu+7e49/oQ80Ce
	3X1j2YflWnroJ4E5JdV4c9QjK6GLnqHwKVux83Evr9mevB6jaZxkBPS+6O1JI+0qj67n2WqBVdEWv
	m0vOD4kwlpFzEsmCCMqPZrP5EV3msOPt5RHJUhQoqYXiTFPf4EU29q5XZEiT8bRcv1vOtdh4krFxh
	Td2O4IvLxIQjWstcp1pN84y/8PV6PWQTC3jPg+9PstjSwbeimsUJCaRAG2TR4zgDxzhGnZL3XlMWM
	N/BNfIJOX7jxd5AnCOL0VtCIqH1O3Tx4YlX6K0hNRewf88LPnifTY7pXuM5UgcBLmy+3BkamW00hj
	p+MvP6XQ6q8ddrzdzJZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSzOW-0000000HWXh-2SI9;
	Sat, 21 Jun 2025 14:40:36 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSzMG-0000000HWPu-2UvG;
	Sat, 21 Jun 2025 14:38:17 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750516684; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=bsonAPj5BW6bDAR1EZrw/fVDrU9F2d/Q0GQs9/xpvo68z0VSER97k6FKXL3X4JhuHN79s10SjALfyd/wtaRiNqM83VdJTRgCvI6IoTo4gyRC2ucGIpuDaeTBvri9qs8eBqMTq6Ib42r2QC0BYg9B37PpULwX5EV6WwyQcyzWl3U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750516684; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Cznoi6wyY4gO6EMxLblj8iGeR4EkxP9PchzAUeg4/vI=; 
	b=WBmIIjCgr3e6HnMUXuMkWCP5gJyhzanzmqsuHxiJjisAj0E2M7aVqf/5SrFYjgEim+yIaxph54HaWzIOsyhv2DiQraoSI1mQc1nV8AVNAP+mJ82blsPbdviiayQXDL1XKTzK5sSgosAjYZf53pIXcpEES2hu/bdKP2yO2k87sWs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750516684;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:To:To:Cc:Cc:Reply-To;
	bh=Cznoi6wyY4gO6EMxLblj8iGeR4EkxP9PchzAUeg4/vI=;
	b=KJdnA9/hgN9EDXgZOUpXJ3P066Rpf975uZPAN6QLw8niW4iK6Q4oGYP+4Pwj2qNZ
	35t8bETwer7OwJbwgziDOoS9wr//9TcZnuHl43Zc/RA2S+oUEDy0kfUZILtpuKxWRnM
	eBmeOmU95CYSeukn5hKNp9HtSXryMTB4ZapqBN1A=
Received: by mx.zohomail.com with SMTPS id 1750516683302154.92519442089372;
	Sat, 21 Jun 2025 07:38:03 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Sat, 21 Jun 2025 16:37:55 +0200
Subject: [PATCH] arm64: dts: rockchip: enable PCIe on ROCK 4D
MIME-Version: 1.0
Message-Id: <20250621-rk3576-rock4d-pcie-v1-1-2b33c9f12955@collabora.com>
X-B4-Tracking: v=1; b=H4sIAMLDVmgC/y3MQQrCMBCF4auUWTuQRJNgryJd1HTUoTSpk1QKp
 Xc3WJf/g/dtkEmYMrTNBkIfzpxiDX1qILz6+CTkoTYYZaxyRqOMZ+sdSgrjZcA5MKFV2hnrvPJ
 XB/U4Cz14/aG37mih91Ltcoxw7zNhSNPEpW0irQX/voJu379/kYW+lQAAAA==
X-Change-ID: 20250621-rk3576-rock4d-pcie-501625670796
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250621_073816_702707_24272BC0 
X-CRM114-Status: UNSURE (   8.35  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The RADXA ROCK 4D board has a PCIe controller connected to a flat flex
connector, compatible with the one the RPi5 uses.

Enable the associated combphy and pcie controller node, as well as add
the remaining pinctrl definition for the reset.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
index 6756403111e704cad42f6674d5ab55eb0306f1e3..0388d72076bf79ee4f20ac1d3bc04fe1859f857b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
@@ -194,6 +194,10 @@ vcc_5v0_sys: regulator-vcc-5v0-sys {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
 &combphy1_psu {
 	status = "okay";
 };
@@ -652,6 +656,14 @@ rgmii_phy0: ethernet-phy@1 {
 	};
 };
 
+&pcie0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset>;
+	reset-gpios = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc_3v3_pcie>;
+	status = "okay";
+};
+
 &pinctrl {
 	hym8563 {
 		hym8563_int: hym8563-int {
@@ -678,6 +690,9 @@ pcie {
 		pcie_pwren: pcie-pwren {
 			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+		pcie_reset: pcie-reset {
+			rockchip,pins = <2 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	usb {

---
base-commit: db1774a51d78a34dafe9221298b94116a7f5d5ef
change-id: 20250621-rk3576-rock4d-pcie-501625670796

Best regards,
-- 
Nicolas Frattaroli <nicolas.frattaroli@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
