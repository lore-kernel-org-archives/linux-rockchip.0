Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C888DCDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 11:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiqopz+C60O1q2O9IdHXk3ihfp/qG4ncTOzV2vaMUTY=; b=NA//S4WOXYxClG
	ZGi6rS058iRcdJR1i+/JIQ5NycuHOfTS8gYJaRIhDqwTX8clKGgm494qTcQSD+FtKnj8olP1FVpiM
	r7oqDvw7zgEbJZTOu2kYhemVLA8jTPYxxwbH2Vse1xVc+IWn8eOiyGf0/IoI7wP4caZgwj/4c3tsb
	eI0nJWHe6MePAHqwQTTfs4YloI21fb+B1VqwRqb2kmwCJVSJpFD737KwPZkQ2hKHPlX6JwLHRgOL/
	D6fD/GnilMOXk6/49ZVsX2EZNJY6X2CbcYgdfPdYFBHHWA3sn7n6fA+dQTbmwOHu38ydaWky5J0XE
	gDQ25yJ5AZcp47uLgaTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrGeC-003LDA-1X;
	Fri, 13 Oct 2023 11:48:04 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrGe0-003L7O-2F;
	Fri, 13 Oct 2023 11:47:57 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c8:b70a:ae01:c2e1:3bb7:ed5c:6a0d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 24893660735E;
	Fri, 13 Oct 2023 12:47:48 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697197668;
	bh=CCYO2Nxk6wHQeFOamNkL/4O7unR6kwkhjTCQuRoEydY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XN2hI3fYED/cM0FKRFyzVDLMLuOThRPGfqH52Baig1uVi93sCyF8orvE3K3/wyciY
	 aTS3P6U34nJKMd4bIw94gbKZ3tS6O/3CXTLqLqH8RreEWYVVUzk4/PjRvWZ9V4LMle
	 BCmwQY8zEhnTacnUQd0jkK9iIjgaoRskGmDNUl81/Gp24lVEBIWVgqTfu2OD+Wki63
	 5TmLyj6gQTDowHkDOuj5S7eD8+/R0xsViFXcCp6ZRRar37ixnfPBUSDsyJjwgrhsMh
	 UyiMdWzRBVN4zmyrYH+TtYadA5v0mcApRkiLgQdEdrh46GXHfmFhbOpW8Sy6+KiOyy
	 BsCRc9JizbPvg==
From: Christopher Obbard <chris.obbard@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>,
	Brian Norris <briannorris@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Yogesh Hegde <yogi.kernel@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] arm64: dts: rockchip: Fix i2s0 pin conflict on ROCK Pi 4 boards
Date: Fri, 13 Oct 2023 12:47:27 +0100
Message-ID: <20231013114737.494410-3-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231013114737.494410-1-chris.obbard@collabora.com>
References: <20231013114737.494410-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_044752_911281_472D055F 
X-CRM114-Status: GOOD (  13.44  )
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

Commit 91419ae0420f ("arm64: dts: rockchip: use BCLK to GPIO switch on
rk3399") modified i2s0 to switch the corresponding pins off when idle.
For the ROCK Pi 4 boards, this means that i2s0 has the following pinctrl
setting:

    pinctrl-names = "bclk_on", "bclk_off";
    pinctrl-0 = <&i2s0_2ch_bus>;
    pinctrl-1 = <&i2s0_8ch_bus_bclk_off>;

Due to this change, i2s0 fails to probe on my Radxa ROCK 4SE and ROCK Pi
4B boards:

    rockchip-pinctrl pinctrl: pin gpio3-29 already requested by leds; cannot claim for ff880000.i2s
    rockchip-pinctrl pinctrl: pin-125 (ff880000.i2s) status -22
    rockchip-pinctrl pinctrl: could not request pin 125 (gpio3-29) from group i2s0-8ch-bus-bclk-off  on device rockchip-pinctrl
    rockchip-i2s ff880000.i2s: Error applying setting, reverse things back
    rockchip-i2s ff880000.i2s: bclk disable failed -22

A pin requested for i2s0_8ch_bus_bclk_off has already been requested by
user_led2, so whichever driver probes first will have the pin allocated.

The hardware uses 2-channel i2s so fix this error by setting pinctl-1 to
i2s0_2ch_bus_bclk_off which doesn't contain the pin allocated to user_led2.

I checked the schematics for all Radxa boards based on ROCK Pi 4 and this
change is compatible with all boards.

Fixes: 91419ae0420f ("arm64: dts: rockchip: use BCLK to GPIO switch on rk3399")
Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---

 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 7dccbe8a93930..f2279aa6ca9e1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -492,6 +492,7 @@ &i2c4 {
 
 &i2s0 {
 	pinctrl-0 = <&i2s0_2ch_bus>;
+	pinctrl-1 = <&i2s0_2ch_bus_bclk_off>;
 	rockchip,capture-channels = <2>;
 	rockchip,playback-channels = <2>;
 	status = "okay";
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
