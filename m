Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92751C021B3
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Feb 2025 09:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYjPtcPkNoDcaTzsnb00EdeesPXaE0oq6I/oEDYmFG0=; b=U7fslqeJrVG/jJ
	y3/o57Fih+kV5zPZV91FBqYHg63wT+9bNSUoR89wtryjEnjutHAGOHBY+uog8rVmCaMqifEOE5EHR
	3fq9uxJjpy1GcLEF23xnoo2MYu3bymOeNi0z01fQHnRTmRwOSQmla0QsNf50HFb2cabfZxybzmIlh
	cfACPAbgADEVJ2wdM5R67S7vSIOOUe5kQ7h3f7E9BdysyEOkkuYBpSD1MMyy4H4uwRYqtoLvnQB2s
	H2UEgwZuF9/63h7L4m8CX8E3gHNi00Zrpez+3lXRN++UwA2azohe46+1DTeGfK7MasaOabVdVcdhO
	cTBK9F3Zfv50x2k+ZbJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tm8Rv-0000000An0v-3VZR;
	Sun, 23 Feb 2025 09:38:59 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tm8Ll-0000000AliB-3txa;
	Sun, 23 Feb 2025 09:32:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740303156;
	bh=MLcedUWBkgkxVWzbTDCOp0QOw7S68POvgln+Xwcmv1I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=UigDPKjjSCsGM11E12jNEGQr7R6tDTTL0aWHv0IB1EZBx8otuJF5l33tmm5BIqRds
	 mNFzcC7xt+NGNy3c565RSYbyeL4xkqO40mBBRvZyUdl+98DNWzIxEqK4MKlDnX/Rp6
	 qoFrQWg+8hJbsBEzSzTseIEnIjmiz6RbM+5TVW8k9oD5WLiOg5w7G+Orbmp8r9XlBP
	 m58s1WKpNDN4v5MOTQLRBDxqEe6mfU5SCeWzx38nRDtjXrbKA4QyUd5ZgcBxPhmYpe
	 L0HV4IPDYkw3i22wTTB0AcJFxS4mBZRx7jzBLNmIIBjXgtJ/JBmM9M9XLljelGeUv0
	 K/g9Oh9wG25Zg==
Received: from localhost (unknown [188.27.58.83])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 6381117E0CD2;
	Sun, 23 Feb 2025 10:32:36 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sun, 23 Feb 2025 11:31:39 +0200
Subject: [PATCH v2 3/5] arm64: dts: rockchip: Enable HDMI1 PHY clk provider
 on RK3588
MIME-Version: 1.0
Message-Id: <20250223-vop2-hdmi1-disp-modes-v2-3-f4cec5e06fbe@collabora.com>
References: <20250223-vop2-hdmi1-disp-modes-v2-0-f4cec5e06fbe@collabora.com>
In-Reply-To: <20250223-vop2-hdmi1-disp-modes-v2-0-f4cec5e06fbe@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_013238_126530_31AECD68 
X-CRM114-Status: UNSURE (   8.69  )
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

Since commit c4b09c562086 ("phy: phy-rockchip-samsung-hdptx: Add clock
provider support"), the HDMI PHY PLL can be used as an alternative and
more accurate pixel clock source for VOP2 to improve display modes
handling on RK3588 SoC.

Add the missing #clock-cells property to allow using the clock provider
functionality of HDMI1 PHY.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index 9bc5287bb6469138c2d9e2fcfec7984c830c2ce5..97e55990e0524ed447d182cef416190822bf67be 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -479,6 +479,7 @@ hdptxphy1: phy@fed70000 {
 		reg = <0x0 0xfed70000 0x0 0x2000>;
 		clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>, <&cru PCLK_HDPTX1>;
 		clock-names = "ref", "apb";
+		#clock-cells = <0>;
 		#phy-cells = <0>;
 		resets = <&cru SRST_HDPTX1>, <&cru SRST_P_HDPTX1>,
 			 <&cru SRST_HDPTX1_INIT>, <&cru SRST_HDPTX1_CMN>,

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
