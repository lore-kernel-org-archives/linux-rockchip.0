Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9D5DC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 10:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vmq7e3+NkEF7AwHRBNIOKlGzMHh7vTxkKNmGo2Vp4dU=; b=umrwrh35r79ApF
	DTBvijwDxRyjJHP2EwlSHw8atPFbNbjLq3Fr3cGWQ3m74gR4S99490znXWu4MtDVzpijOb83Wg5I7
	ETMKxj7mlIpQM4TpZ9iUowCWwtZqXc79Url/7UeH9HNj8QZa/LxD7309DEEGi0KI28I5OoiEXvY8/
	6PP6QPG/VYRve2gJSGCbEsgN7ophRPLpSw0l8uz5XwY55DGtJy7CScfRgt33XUQzJrko191cpNAQG
	63rR1coGK9eaWpQDddoREdWvMZJFjN03JBSAwroANuygKwzp4VwHEBPfslhJez5wrUquyCWiEvsQ6
	sITl09zN0hViw0fiRNKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc0eY-00000007x9u-2MKV;
	Thu, 08 Aug 2024 10:45:54 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbzbQ-00000007kEJ-0hvm
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Aug 2024 09:38:38 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4789cSE1030905;
	Thu, 8 Aug 2024 18:38:28 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 00/10] arm64: dts: rockchip: standardize the definition of LEDs for Radxa boards
Date: Thu,  8 Aug 2024 18:37:58 +0900
Message-ID: <20240808093808.1740-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_023836_447930_E5CC75F5 
X-CRM114-Status: UNSURE (   6.54  )
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

the standard definition of LEDs for Radxa boards are:

  color = <LED_COLOR_ID_xxx>; [1]
  default-state = "on"; [2]
  function = LED_FUNCTION_xxx [1] [3]
  gpios = <&gpioX RK_Pxx GPIO_ACTIVE_xxx>;
  linux,default-trigger = "xxx"; [3]
  pinctrl-names = "default"; [4]
  pinctrl-0 = <&xxx>; [4]

[1] use "color:function" instead of `label = "xxx:yyy:zzz"`
[2] all LEDs should be turned on at U-Boot
[3] if trigger is "heartbeat", FUNCTION should be HEARTBEAT
[4] if it's SOM and carrier board, put pinctrl properties here
    if it's SBC, put them under `compatible = "gpio-leds"`

FUKAUMI Naoki (10):
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK Pi S
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK Pi E
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK 4C+
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK Pi 4
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa CM3
    IO
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK 3C
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa E25
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK 3A
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK 5B
  arm64: dts: rockchip: standardize the definition of LEDs for Radxa
    ROCK 5A

 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 4 +---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi   | 4 +++-
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 6 ++++--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 3 ++-
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 5 +++--
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi   | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 9 +++++----
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 5 +++--
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts    | 7 ++++---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 9 +++++----
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts      | 3 ++-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 3 ++-
 12 files changed, 37 insertions(+), 27 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
