Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 760A7ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 00:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MAWxxc24zxle28v0RwnEmQsZ4nkDIZbeXJqT9jeJaw8=; b=A8soHQhgC5w4iy
	gOB+Dc7Me3gb7LAqFdLhzTIXKfQSltPS2FO0os/0rGBPMlux3oT4hgiz4DAY3cmywRPy2rJaMCTQh
	dGrDBEW0WqIKg4ucKxe5PFJIMafVl59gm6dUWUwRb65o/xeBZoHmemMA2wKQBJlUx73sh+rp/TpMT
	fRpstzxH6SXvP3AUI1an2JNslbsr9CrGbxV/MJ0fvUXiQpRwHBPU1cvTebjTZPbT0NuZmKfVJH5w5
	/Yg+oT1FF29HKEv5uM+X1zjAhjA961QwmTy0tsL6qSybvg7jDE9e0PAc4/bmKywpxR5qfMw2aiYzM
	4u4xIww/8NGcLNY8eS1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV0Dk-002ZsD-7O; Mon, 05 Sep 2022 00:44:12 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUzBC-00GqD4-1Q; Sun, 04 Sep 2022 23:37:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1662334641; bh=jLRdilnMCYu/2LORSkSSfxq/7hawIRimyy0TcaBVSdg=;
	h=From:To:Cc:Subject:Date:From;
	b=S0ySmocwO3hM9JxO7DVtM3BcsMOuVQiuSuyiUqAblDsNs3nMBXZz0MtnYh/iRZZlw
	 7GBbCtHMg2YpaYHkUaAxJxRa2FNET3QbSWn8CuzwBBgHVbqtoCEwKakqKj1/4ZY1Nh
	 GibpZNZcbt55iHvGPsOnwgTEhQC6T/UsbLlQO8f8=
From: Ondrej Jirman <megi@xff.cz>
To: linux-rockchip@lists.infradead.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Martijn Braam <martijn@brixit.nl>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Caleb Connolly <kc@postmarketos.org>,
	Arnaud Ferraris <arnaud.ferraris@gmail.com>,
	=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?= <n@nfraprado.net>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] arm64: dts: rockchip: Fix SD card controller probe on Pinephone Pro
Date: Mon,  5 Sep 2022 01:36:47 +0200
Message-Id: <20220904233652.3197885-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_163730_956128_31CF3937 
X-CRM114-Status: GOOD (  11.32  )
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

Voltage constraints on vccio_sd are invalid. They don't match the voltages
that LDO9 can generate, and this causes rk808-regulator driver to fail
to probe with -EINVAL when it tries to apply the constraints during boot.

Fix the constraints to something that LDO9 can be actually configured for.

Fixes: 78a21c7d5952 ("arm64: dts: rockchip: Add initial support for Pine64 PinePhone Pro")
Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index f00c80361377a..2e058c3150256 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -253,8 +253,8 @@ regulator-state-mem {
 
 			vccio_sd: LDO_REG9 {
 				regulator-name = "vccio_sd";
-				regulator-min-microvolt = <1710000>;
-				regulator-max-microvolt = <3150000>;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
 			};
 
 			vcc3v3_s0: SWITCH_REG {
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
