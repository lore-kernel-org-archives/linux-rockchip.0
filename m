Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B84C4C636CC
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Feb 2023 08:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVqgtH843gmYD6W6Td+7GIXt801KClGVjuU4G4aANnE=; b=zpTN6NLxZWzUCp
	78hcz1pI5iZE3MDl1hWCANnnMYYO7hnppSc1p8zCsAgYKCqCeBj0glPARrYef1C6qmYRgO5Tov2yD
	ff5yBukh+/u6a93FMtwbrROtHMt+nmoaLN98n4awfq8EfjmOSMzK49zUGx6XPKCKrqgP/HiLx+cGV
	7zQIyjTxXyGx0XnpjIMgMRjUJ207DENg+1fmdpNGw4xYJqoO87AhVf+mlM2X+im0/Ae5abfyP2h0I
	RbBmNXszzciFw5Ok3Ca+Rv/DaDSt1bX0gktXDNY1hLP2L4JexA+M3hYVqgQpNSIpGuWs7aOgyZqZl
	cGo5j/3FqgvVw1tfRdjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOEEo-004kn6-NG; Sat, 04 Feb 2023 08:49:34 +0000
Received: from smtp-out2.suse.de ([195.135.220.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOEDm-004kIh-Iv; Sat, 04 Feb 2023 08:48:31 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 5F87C5D658;
	Sat,  4 Feb 2023 08:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1675500509; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cOzrv40QkD0Kfa2EYbZ8nlh7FWOn+IL1gxkb2voS31k=;
	b=T+dpggk1Hu/eU1BJgKLCITl/fzUARWuXInFQTCGxj1Im5trMa/egwRtPnnJSUZWhn8NoUx
	DfUT6ZyAtcFAYDSSYb3ubqVD1TQJxIDPG2W0m9NRYCJVvzzDH7AAoCoTmaC35npaEWUlzD
	qroDmsprbtpR5hienphBBF2HDyKGaG0=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 1B34C133F5;
	Sat,  4 Feb 2023 08:48:27 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id +DGUN9sb3mMKLAAAMHmgww
	(envelope-from <wqu@suse.com>); Sat, 04 Feb 2023 08:48:27 +0000
From: Qu Wenruo <wqu@suse.com>
To: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: sebastian.reichel@collabora.com,
	heiko@sntech.de
Subject: [PATCH RFC 5/5] arm64: dts: rockchip: enable PCIE3 controller and phy for Rock5B boards
Date: Sat,  4 Feb 2023 16:48:02 +0800
Message-Id: <74cec42b80db30395772df61fd8029bbf5a56411.1675498628.git.wqu@suse.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1675498628.git.wqu@suse.com>
References: <cover.1675498628.git.wqu@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230204_004830_794612_A4BE5B7C 
X-CRM114-Status: GOOD (  10.57  )
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

We only needs to define the needed 3v3 voltage for the PCIE controller,
and enable both the controller and phy.

Since I only own Rock5B boards for RK3588, I can not test for sure for
other boards, thus this patch only enables the PCIE controller/phy for
Rock5B.

Signed-off-by: Qu Wenruo <wqu@suse.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index d2f1e963ce06..75015f065ceb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -2,6 +2,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include "rk3588.dtsi"
 
 / {
@@ -25,6 +26,17 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 	};
+
+	vcc3v3_pcie30: vcc3v3-pcie30 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie30";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &sdhci {
@@ -38,6 +50,16 @@ &sdhci {
 	status = "okay";
 };
 
+&pcie30phy {
+	status = "okay";
+};
+
+&pcie3x4 {
+	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie30>;
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
