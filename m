Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E6B8C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 20:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p9FAgdgMAX19rQ1BI7Zoi11VHFyRS6a9mjFBaE5k98g=; b=RKEGLKGOExZvsQ
	funZfE+SbMoT91bfILZzaCQi+ZgoAv0yYQ+8KzMhDlBZpd2BjqFthm9Kge5qpcufHJ+2Z8wxHF/E3
	RPBCZBhJQnFH1MD0IKds4Wm0t59nHDLcsRgKzSjTkRxYgVkMSpOj0WhXG3LLdIv8nqEn1iceBOpNp
	WuR/WqgnPn+Pn2mmSQEGqE9aT2LYQN2L33JZv+9opH05JUIegHqfrI7CECF8vWdxrqIRrszRXN7nZ
	ujP1R/d6dWVqNe+7L3AQ4NOosI/4c00V4Q4uYeGJzvsYcpg9IgOXKxTxCCIldRYbWjQKLa0GtSC/W
	O0gVJ94+iVVJCe0OPjBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvNkx-00000001FEp-24XR;
	Fri, 12 Apr 2024 20:44:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvNku-00000001FE1-3aR9;
	Fri, 12 Apr 2024 20:44:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E53036164D;
	Fri, 12 Apr 2024 20:44:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62D43C113CD;
	Fri, 12 Apr 2024 20:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712954655;
	bh=tbwmwgn+93O/SPG6Jq7D3DigC50YGQE/RYOTKsK0Izo=;
	h=From:To:Cc:Subject:Date:From;
	b=mk6meqIM1uViiPnfITf5lHdtLtYjdp952115uLMKuj10WOEJO2FPS49mHusgKEwJ4
	 +Hux8u8J+z9UJTTLe3mLCPAXT7YYZTNcJU/0MZ1ZXOi5mhkybUHfJj7HRQkcNTTYXw
	 cevKsalI7CC7kcMiSLXwXdQdBq5JAWGQJ/yIFeWkDXKb97TOtgglrFMd3ySF2oRC3+
	 LWwXmSmCDVI9SoBxCDwvS7K2jeOk+sJLFwLhwHv47NjvZ9jQPTjPMVDxfT1FyEky5V
	 kQFKWugcdszCdAKT6Vq4RzixjwyGIbpv3QRoH++tV8YHHmt5CPgqK2JBHj7WWknCtS
	 YFJ15d20DCq5Q==
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: helios4: Fix USB interface compatible string
Date: Fri, 12 Apr 2024 15:44:04 -0500
Message-ID: <20240412204405.3703638-1-robh@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_134417_053883_1F8D1DAD 
X-CRM114-Status: GOOD (  10.34  )
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

The correct compatible string for a USB interface node begins with
"usbif", not "usb". Fix the Rockchip RK3399 based Kobol Helios64 board.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index dfb2a0bdea5b..9586bb12a5d8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -611,7 +611,7 @@ device@4 {
 				#size-cells = <0>;
 
 				interface@0 {	/* interface 0 of configuration 1 */
-					compatible = "usbbda,8156.config1.0";
+					compatible = "usbifbda,8156.config1.0";
 					reg = <0 1>;
 				};
 			};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
