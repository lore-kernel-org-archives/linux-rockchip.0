Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F1C9C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Oct 2022 14:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I4v1o7EoOToU7TdPi7Z71XG1Cxd3kAqeSC8z+rRpSoA=; b=DCBlZgmK33CfNH
	jZ44S4CwJuNw6HIEDGuMVt69xPay7zCEndNd8cGETGpbwS7AyeuHCcQdAmXFQ0NrRvPiTCPAnkSVC
	YSVxPtsxfMfRa/m+t20dMPr/EM7OBsXGvRZw71DURiMkw0NYuivIMGVJxfX7Ffozcymp1Ur3hfb3N
	L4R7hMHlr70V2r9dTxZFmmMsDof6I6Tnvkb60E2/QAdHZfbo1CGAj1lhjh5eha1sdNBh1p62L9Ekw
	c7Uev0XIIO9VOTqA8jMFGfWg/lbzN5V/T5NNLYYnDuMji35FD6N7WSvT3aVl0Jr24xwEMDWdU2tbP
	fcfslkOHJIrIEAKjY0nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olAPj-002ty8-6p; Wed, 19 Oct 2022 14:51:23 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olA36-002n6q-42; Wed, 19 Oct 2022 14:28:02 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 6AECBFF805;
	Wed, 19 Oct 2022 14:27:50 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: foss+kernel@0leil.net,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: lower rk3399-puma-haikou SD controller
  clock frequency
Date: Wed, 19 Oct 2022 16:27:27 +0200
Message-Id: <20221019-upstream-puma-sd-40mhz-v1-0-754a76421518@theobroma-systems.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_072800_390358_E01EB34A 
X-CRM114-Status: GOOD (  10.27  )
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>

CRC errors (code -84 EILSEQ) have been observed for some SanDisk
Ultra A1 cards when running at 50MHz.

Waveform analysis suggest that the level shifters that are used on the
RK3399-Q7 module for voltage translation between 3.0 and 3.3V don't
handle clock rates at or above 48MHz properly. Back off to 40MHz for
some safety margin.

Cc: stable@vger.kernel.org
Fixes: 60fd9f72ce8a ("arm64: dts: rockchip: add Haikou baseboard with RK3399-Q7 SoM")
Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
We've been carrying this patch downstream for years and completely forgot to
upstream it. This is now done.

To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 04c752f49be9..115c14c0a3c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -207,7 +207,7 @@ &sdmmc {
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
 	disable-wp;
-	max-frequency = <150000000>;
+	max-frequency = <40000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;
 	vmmc-supply = <&vcc3v3_baseboard>;

---
base-commit: aae703b02f92bde9264366c545e87cec451de471
change-id: 20221019-upstream-puma-sd-40mhz-b5aef1c351e6

Best regards,
-- 
Quentin Schulz <quentin.schulz@theobroma-systems.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
