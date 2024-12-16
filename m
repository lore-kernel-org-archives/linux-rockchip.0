Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8964BE77183
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 11:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqJWej3NIaWKvsb9uxtPxDaCKtx1tHqetnmGblYxPyM=; b=SZoIoc3hOQ6LJB
	NaY48JNGM8ZW3Q7ctN8IQoG61MARw2Di5LKyZakwu/oK0LvNdgrhgFblmtORK4LdF6f5a532cUBDW
	PgkppzrPk/oiqXM/VCs/i/jdgpjuadq9HZyWixWnyayaI5mrhssWkqVa4lWbcli/e7bjINQwRHSci
	gwlobGukgncHo6lR+Tb4tsRNYrq4x7iM3+Oqbkh5vsWEEhIPgobIednHqjKgXtgD6SluR8LEDlWIL
	tr8iLgZ/UtAq3WxMFyov2GPFId/MxWnIMKt3acz43fZxMlv5xRYyIH2zQ6qQQH2NKQLGr+bJA5tDD
	9D7XfiDPyhmUP0RDRWzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9K8-00000009pvU-2U5i;
	Mon, 16 Dec 2024 11:31:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9K6-00000009pv3-413C
	for linux-rockchip@bombadil.infradead.org;
	Mon, 16 Dec 2024 11:31:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=VpV3cCHFphy5mJu2RnigT5QtovdsqzUISMZzM9n3XTc=; b=lTtTKL7vTXxl6BpKEttGYLVryI
	7YpakKyn0pWsdl4tzEDoF3Sl+bD9Ovm665/OztMYeCd6m10JwXGgvdS0siK/Z3l1uSmhRJBsf4ck9
	kEZrk4rGKrqd4D0BKjGfD5iHAygcAZGMGu4/uJIDBIAxMXbxRZfCLYqbBiOnaOobUgJC8FA/F0Crp
	kpjgMD85XHc8jxGf226WUUcsYVX42hgMwqHiXbZO+A7Vj6bCdIeaB2HGJBsRHrl5IuTQxFK3/JhSi
	0JhY1nK39AwbkE/NhLChQ4CsvLEP1uzptfdMjMdqzGtVK5eA0DDrpu6dKGEw+86YGg3byGGUNtw5U
	8qEYP2Tg==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9K1-0000000FtG7-1v7l
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 11:31:37 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGBUxOP028690;
	Mon, 16 Dec 2024 20:31:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v5 04/12] arm64: dts: rockchip: Rename regulator for pcie2x1l2 for Radxa ROCK 5C
Date: Mon, 16 Dec 2024 11:30:44 +0000
Message-ID: <20241216113052.15696-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241216113052.15696-1-naoki@radxa.com>
References: <20241216113052.15696-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_113134_171967_FE660508 
X-CRM114-Status: UNSURE (   6.38  )
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

Use consistent name with other regulators. No functional change.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v5:
- Reword commit message
Changes in v4:
- reword commit message
Changes in v3:
- none
Changes in v2:
- new
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 85589d1a6d3b..61d75ab503b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -76,13 +76,13 @@ pwm-fan {
 		pwms = <&pwm3 0 60000 0>;
 	};
 
-	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
+	vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
 		compatible = "regulator-fixed";
 		enable-active-high;
 		gpio = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pow_en>;
-		regulator-name = "pcie2x1l2_3v3";
+		regulator-name = "vcc3v3_pcie2x1l2";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		vin-supply = <&vcc_sysin>;
@@ -421,7 +421,7 @@ &pcie2x1l2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&pcie2x1l2_3v3>;
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
 	status = "okay";
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
