Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8130CCF0423
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uaq9660TkENhG66ZLN6et2R6E1z6rxKgZLoZAJ0/EAY=; b=bhmZHG0aI18qz+
	kJjxyXMap40Nvdlxktyrxmjy2+bvqVyusDJLUPyOdxGQCyFmsjHQ6tHZBR5v0pNl0SF7VlRWTgBpP
	h9L2KgZw5Sifxpyo+LHEZWv8kosadZ2T+Epb3yrx+Ybe7Llbxi0gtfobFraE1O0AP1YcZFXO8PvQ1
	jglulH7/eNQGhD3vRx3VA1Z/XMdGbf+QVk9QOsyYfRXtPWfk99+hbgWOWcANK/lXKxQNISTMHsgPR
	U6ISWgpB7URu+kni9tLhzOPlG7hNcj4FPsQOtyWvCJZLwI4r3WPu0uMu2rIlh7BayoLlsjkxanGDa
	2ALKhKlhBxV8QNj2VqKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syHJ2-000000077pU-2e17;
	Tue, 08 Oct 2024 20:59:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH1Q-000000075Va-32Bi;
	Tue, 08 Oct 2024 20:41:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=uxRN7J/sVj1N0EB6Jrbue+PuLHyGkoW89UPYH/fY9Tw=; b=BfheFS4b+uK7DdRCnUMyljRUyT
	cSkO9CvVsxiqxZ8es5SzLldtEoAX98KzigFlchbyXRgQ3KCJLOUjUU2sMz7yJocbL1vhpmmxI/feq
	UWttdfnh4vEedSvbftR9tsWMYZCkBg28LJ1TjcsH8K74toVil3V8K0XcP+rCKhXoOVBH5tY6zqVvt
	KKJdpsJrLOik1VgTSD4BO0lNARcV6NUfwV9LUi4q6KrXhtjO/1Pv9yuAHfk569t75D9MtuyWeekRL
	PExHofEUoe/XP+xaqxjXHs+yqsTMOycj2L3eN2KDHgt6ULPBsEUrUhyq24lptKkaFD+nG5aXdZKyh
	WjF2Opew==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzz-0007ua-NC; Tue, 08 Oct 2024 22:40:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH v2 12/14] ARM: dts: rockchip: drop grf reference from rk3036 hdmi
Date: Tue,  8 Oct 2024 22:39:38 +0200
Message-ID: <20241008203940.2573684-13-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_134132_786604_5EBB13F4 
X-CRM114-Status: GOOD (  11.01  )
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

Neither the binding nor the driver implementation specify/use the grf
reference provided in the rk3036. And neither does the newer rk3128
user of the hdmi controller. So drop the rockchip,grf property.

Fixes: b7217cf19c63 ("ARM: dts: rockchip: add hdmi device node for rk3036")
Cc: Caesar Wang <wxt@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm/boot/dts/rockchip/rk3036.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 37369538483f..09371f07d7b4 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -400,7 +400,6 @@ hdmi: hdmi@20034000 {
 		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru  PCLK_HDMI>;
 		clock-names = "pclk";
-		rockchip,grf = <&grf>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&hdmi_ctl>;
 		#sound-dai-cells = <0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
