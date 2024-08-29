Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A9B7C83F16
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 13:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlxw0OoRt1cweul6Tdnea5iyIwqMCD87hc24SKZorIs=; b=d9y5NqKk0mn35x
	0plWydkedyp+mWCZ0XStXM4HWwprLv51vkFDDZ1nFdvFFSJq8c9jNsqycNLCkpqAEPTi1y7wpBEf5
	U49gEQ1TS9EsDtccf8MW6m4TyWp0oiLEd21rZ4q0H5L98GdrzJY2VhpokgWg2nKSCBuXjk5+b9nM4
	mS76LVD8Cb14MlHFLecUhPCKnlEBP2w8/oAhPISJTjiboVaMr7IPmEW4bhzsLnhVIHmhlcE0vepcL
	wyqVGY7t6Xz1KUs7OlZRY910HsXAJRdsdmooe/BnV9bgMbe7IRZe5awzyXWYomfDtr6wbnEhV2gOe
	fJJrSHipdPzFuDDjIs8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjf7n-0000000296I-13OF;
	Thu, 29 Aug 2024 13:23:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjf5H-000000028WG-3M0h;
	Thu, 29 Aug 2024 13:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/h5Rrj+f8CwNw8UnEg3AKwGGFETNXHRsb2ZgPZuQ+e0=; b=Az07SUOGBmmobCJV6h9y84YvNR
	vXTpPNu6JpEhMulrV9AHliPQP7hZT3VgGEnncTlMHqLIwSyKX9pAP3s6ApDRQhxTt6Cy4XpSXYggp
	EhcSUgF+Pm48FwM4o9th9L0lVTaFtEb0vuIkAtMostdCqL4oYJ/hlihME4k7p0kgu75n4Rn/ZU+Id
	4O4Nwe/rOwfn0nb01Xfk/S06N634augG22+DDU1ahv7atNinu6kUnJm5c2oTwTLeUkOFH+wD24T44
	dvmdR9vLT9cik6jYKzwuVQjMKj2yZQiB9NUVg/ZMa9POuRZ78cq4+qjk6YTyd26FEAC230OzlAHY4
	0QU1NzQg==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjf5G-0004Es-04; Thu, 29 Aug 2024 15:21:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: marcin.juszkiewicz@linaro.org,
	didi.debian@cknow.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: rockchip: drop unsupported regulator-property from NanoPC-T6
Date: Thu, 29 Aug 2024 15:21:00 +0200
Message-ID: <20240829132100.1723127-4-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240829132100.1723127-1-heiko@sntech.de>
References: <20240829132100.1723127-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_062107_856987_64E074B6 
X-CRM114-Status: GOOD (  10.37  )
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

vcc3v3-sd-s0-regulator used enable-active-low. According the binding
of the fixed regulator, that is the assumed mode of operation if
enable-active-high is not specified. So this is property is not part
of the binding, therefore remove it.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index 94a1c83a322d..d035a44e5b20 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -186,7 +186,6 @@ vcc3v3_pcie30: vcc3v3-pcie30-regulator {
 
 	vcc3v3_sd_s0: vcc3v3-sd-s0-regulator {
 		compatible = "regulator-fixed";
-		enable-active-low;
 		gpio = <&gpio4 RK_PA5 GPIO_ACTIVE_LOW>;
 		regulator-boot-on;
 		regulator-max-microvolt = <3300000>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
