Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA293EB28F8
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 09:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u+NTuXkhVuyxfEjWdwC3VkcNOWCSkun0Fu8i9Mr+ugA=; b=kLfPnG06uZ+7OT
	ciix0Je1lS+td93TAED5Oc+psvUOm4czkzAOhfoum1okwIPc/alZWFstTqwXkJ/lF6RmeOAr0/9MD
	Ehu1ogsuusphXH7OI6OY89WL0jdpnZOA//jzhxVXQAoRiJJB+0vPsTT/9u2eLj3J4bS1W7dgNosYf
	jZp/g3+5mAkYs4pPW/vLga1aHpeU/geLRimqS9yAYVB35YPSoV5emQkOGK2hiqZlHr2sjHxntTCyY
	7/pdUlxzdf7ide0JH60COYb/GOhB/aLkBVLLMz534hNol0uXQ7tus+IEBFln9odyR2LoT+Quct1Xx
	7TUNkWBh5pCYjQMQmP9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voHlz-0000000B4UQ-3mGj;
	Fri, 06 Feb 2026 09:05:07 +0000
Received: from m16.mail.126.com ([220.197.31.6])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voHlw-0000000B4TI-32r4;
	Fri, 06 Feb 2026 09:05:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=Zg
	Kz7HPp4QjyuxNJfzfCpjL5pzGtVKS4Dpr6le7LrjA=; b=pMJase594freXt0FEJ
	PoSfaIJy8LOHJ46oc439NAybVkxqDIzT1QFT5IWE39741coZXMzGHlmrtVHMXhG8
	qUGrPr6rWBI1/k8jWTfTc7QpzuudVx863j5x6wGJx3xZZgzoAqZ+hxQ79nijBBM3
	MiLS4gSCE1L8Qmr/RsEsdHbeY=
Received: from neon.loongson.cn (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wD3VzK3roVpOSW_AA--.28653S2;
	Fri, 06 Feb 2026 17:04:57 +0800 (CST)
From: wming126@126.com
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Ming Wang <wangming5719@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Fix Bluetooth stability on LCKFB TaiShan Pi
Date: Fri,  6 Feb 2026 17:04:53 +0800
Message-ID: <20260206090453.1041919-1-wming126@126.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wD3VzK3roVpOSW_AA--.28653S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tFW8Wry8Wr1fXw1kXry3XFb_yoW8Xr43pw
	4xC398Wr93WrWUX3Z8t3Z7XrZ8ua9agFs8ArWDua4FqFsxt3WDuF1ag3saya1DXFZ3Xw45
	uF1Yqry7tF1ku3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UdgAcUUUUU=
X-Originating-IP: [240e:404:6230:a101:2214:a5a9:da52:5257]
X-CM-SenderInfo: xzpl0wqrswqiyswou0bp/xtbBshmV72mFrrkV6gAA3V
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_010505_164660_BC161E5F 
X-CRM114-Status: UNSURE (   9.54  )
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

From: Ming Wang <wangming5719@gmail.com>

The AP6212 WiFi/BT module on the LCKFB TaiShan Pi (RK3566) is prone to
communication timeouts and reset failures (error -110) when operating at
3 Mbps.

This patch stabilizes the Bluetooth interface by:
1. Updating the compatible string to 'brcm,bcm43430a1-bt' to better reflect
   the actual chip revision used in the AP6212 module.
2. Lowering the maximum UART baud rate from 3,000,000 to 1,500,000 bps.
   Tests show that 1.5 Mbps is the reliable upper limit for this board's
   UART configuration, eliminating the initialization timeouts.

Signed-off-by: Ming Wang <wangming5719@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts b/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
index ed65d3120..18a560a6e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
@@ -635,10 +635,10 @@ &uart1 {
 	status = "okay";
 
 	bluetooth: bluetooth {
-		compatible = "brcm,bcm43438-bt";
+		compatible = "brcm,bcm43430a1-bt";
 		clocks = <&rk809 1>;
 		clock-names = "lpo";
-		max-speed = <3000000>;
+		max-speed = <1500000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
 		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
