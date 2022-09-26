Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BC5BC32771
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 18:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LZxWD+6ihApcuGUDy9V3yQClM1AAQETG387Gvc9Qm0=; b=rfrT2K41GELwV3
	7Y1+0Nn+M2Fcey3wULRcXgtDPjTCTbvisbOve/vmfUMNmIR+oqWn+E1cWxii+O36I69L1SAuzcB0u
	nEc9xTF920PrQrJqMR+twsfWfsYEBXxrhAfOOuVuy4DJrNKi16tH05CSRFFWqf7bUKy/Ezb+UUsZe
	G5+gxfqd/41UD95pizt+YeFKCE0LMR+JwmMxrsp4zSE4ZnweYft1rtJpFmzyR37hQBdfzk/qvND22
	xzC5F0rHoz8bmm6uiwGAwMX5Ww1GjRIMnk0lWuma7EcqNB4j8SUQnwrSowL9MgWoZoCzpPRcieZ/k
	m1NYuJZ8PnuhojGkNALA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oct3w-006MmB-Uc; Mon, 26 Sep 2022 18:42:40 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsz7-006IJ2-Jm; Mon, 26 Sep 2022 18:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=2V79ABvMxRRI/ldzFJx1RxAvUilUTQjQFT1E2OVvnlM=; b=g67+evlZ71Xyyl4r+Dk9HmrLdb
	+VowUgXkdoiKxqa/3olZ1t2vRBPf9EWxWlyaxtedhnhAQYMkclNALrlYKa5ePwTViOTVCfdOROX8p
	wu0+SOB+UT0bVsLQ9nERtfyGG/oQy/hfL3JbKBch2KZFsSmcOyrbQT41bJCtzjU81xaFBSWDvtUBu
	RGiiPCIryj0jiyh/1XYeHMbgipwRX2Nn7QuZrSG55br0A6WscAKSJA62RDLvIwfqapBZunVFCzUdv
	eIYS7Sfazr85/jIWItitFGVogDC/vhhIUgFr+PUmg2WliUCYe5fY6USpId3YfcMFwyMgaCAq9U5vC
	wXp9zQ1Q==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz3-00B9PZ-39; Mon, 26 Sep 2022 20:37:37 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz1-007wcH-1t;
	Mon, 26 Sep 2022 20:37:35 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Dongjin Kim <tobetter@gmail.com>,
	Aurelien Jarno <aurelien@aurel32.net>
Subject: [PATCH v2 08/13] arm64: dts: rockchip: Enable the GPU on ODROID-M1
Date: Mon, 26 Sep 2022 20:37:22 +0200
Message-Id: <20220926183727.1893566-9-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926183727.1893566-1-aurelien@aurel32.net>
References: <20220926183727.1893566-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_113741_774640_193F020F 
X-CRM114-Status: UNSURE (   9.65  )
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

Enable the GPU core on the Rockchip RK3568 ODROID-M1.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 8748dbf9a772..281d8fdc0885 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -143,6 +143,11 @@ &gmac0_rgmii_clk
 	rx_delay = <0x2d>;
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &hdmi {
 	avdd-0v9-supply = <&vdda0v9_image>;
 	avdd-1v8-supply = <&vcca1v8_image>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
