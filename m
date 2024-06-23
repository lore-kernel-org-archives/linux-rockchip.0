Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCADAC2D0D1
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 02:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxp0yOgPWKSdFgT+NlCnbLhzEy+BwAt6jd7O6vMBaRs=; b=KHTfwFkGWV7T2F
	6AY8zUo7QVZ7E6PdzkcwcsATT2bSiPFWXlQH7OlfwsItVrWKw6bnou577HqoQ/ujdmeFihEYXFrWO
	ucyEeQgsbJsulriC4EDRGcCjjPqfIG4QUd/8havcSmmH72K0d79/sHXJqr/yc1w3Xhx7qnzpr0nzw
	qRs68vnOOtwVS54Nt3AYZmSu6cB6MFtViOOSDr6+bGOUkxwcHJjnQfvcJw4v7kgpLsvSQwLULuEhE
	+LvFhGjsiBLEvEJlvb5asiiGLyhsQ6JeHU54Sc68Or4emt0aHaa61Tw+cXDQuPa6dg2lIOLhxJnIE
	UB6GZx8OsakBHVaS0zZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLD42-0000000DCHX-0saR;
	Sun, 23 Jun 2024 02:34:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLD3z-0000000DCGb-04o6
	for linux-rockchip@bombadil.infradead.org;
	Sun, 23 Jun 2024 02:34:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qUjo6glw2EPuF+A9RYVF53JMUdRwUonpdGyVImV76Cs=; b=HCJ2rYv5uOWLcyhfPQa+JJs4OU
	Xt8ipxd2DlL2i/8035CpS3rgGzSn/4eN4txLpNniQAuOhtvljtykW7IXsQCv1B3/XAoBF74rnPk1r
	CGU4quYK+7+FzOIqjSTBMdVIC5LZhLsW/6Xg3PHX4cS914Qyb6OhA5BA9YPmsSJOwV1FitN/03shH
	siRDARCxbwsPfhyO6nMpgy5y+G4TrB+MAHZA+w5kyGvyoZZ0F57gjslNjIfH7Z/QdfUjOGPekugnw
	2qjihV2rjurKAHhDpnB9kDzfJbWVp8gY1T6wxHdJcLCIUf8EiAZbl546QOOH/dzc7r5/oIHJrTMRq
	WDxVkRNg==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLD3r-00000008kOF-0mRp
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 02:34:42 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45N2XZ4J004959;
	Sun, 23 Jun 2024 11:33:38 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        amadeus@jmu.edu.cn, chris.obbard@collabora.com,
        sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: add (but disabled) SFC node for Radxa ROCK 5A
Date: Sun, 23 Jun 2024 11:33:28 +0900
Message-ID: <20240623023329.1044-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623023329.1044-1-naoki@radxa.com>
References: <20240623023329.1044-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_033435_736417_207BE761 
X-CRM114-Status: UNSURE (   6.82  )
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

This commit adds SFC node for Radxa ROCK 5A.

since sdhci and sfc on RK3588s share pins(i.e. exclusive), it cannot
be enabled both nodes at the same time. so status = "okay" is omitted
here.

you may be able to enable sfc (and disable sdhci) by fdt overlay.

SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index c0f6a4b1493f..03ed48246d36 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -377,6 +377,19 @@ &sdmmc {
 	status = "okay";
 };
 
+&sfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&fspim0_pins>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <104000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+	};
+};
+
 &spi2 {
 	status = "okay";
 	assigned-clocks = <&cru CLK_SPI2>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
