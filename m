Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5DFBC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 11:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UgplFKTfVT5NV4Y0HolYyMThmugVALANjL2cuQAiGOA=; b=YNYPOik+PjsqvN
	gEDj0hAS5oDPOBXX1knWytvUT4YW8lFJerUrKN0qwu+qCCvCbshPEacKxrseesGLsRfYluQYJG6uP
	6GTTHGCRNP6AdW/Az8KQu1x5mOJpCGYR09e4vX8qRHNQ/JmOzjiw2z6LwvnOjRRc7mcazwRDVUa23
	7XhPg2mBNuNkcJ+YlfnRSFKoKa/YFQCh48XhpvTCOOmAeeuzB1udecOL8Yv07VrNZbs50WaVjNLwQ
	AAlxUAbn83wsspOg39d/1Ln4hhyPGoT9DGs/TgahhJHEzLQEdHA48EAV0GODdOPjQ9xmOZI2oU7Ub
	8LwSdOaPHDZMGq+Wp5Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7Av-00000000q4h-18tI;
	Wed, 31 Jul 2024 11:07:21 +0000
Received: from smtp-42ad.mail.infomaniak.ch ([2001:1600:7:10::42ad])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7A4-00000000peS-3sC7
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 11:06:31 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4WYq6722Tpz1KK;
	Wed, 31 Jul 2024 13:06:23 +0200 (CEST)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4WYq661mx4zR92;
	Wed, 31 Jul 2024 13:06:22 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH 0/2] fix eMMC/SPI flash corruption when audio has been used
 on RK3399 Puma
Date: Wed, 31 Jul 2024 13:05:27 +0200
Message-Id: <20240731-puma-emmc-6-v1-0-4e28eadf32d0@cherry.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHcaqmYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDc2ND3YLS3ETd1NzcZF0z3WRDE8NUC0tDIyODJCWgjoKi1LTMCrBp0bG
 1tQArVyiAXQAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Judy Hsiao <judyhsiao@chromium.org>, 
 Brian Norris <briannorris@chromium.org>
Cc: stable@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, 
 foss+kernel@0leil.net
X-Mailer: b4 0.14.0
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_040629_143371_D70950DA 
X-CRM114-Status: UNSURE (   9.19  )
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

In commit 91419ae0420f ("arm64: dts: rockchip: use BCLK to GPIO switch
on rk3399"), an additional pinctrl state was added whose default pinmux
is for 8ch i2s0. However, Puma only has 2ch i2s0. It's been overriding
the pinctrl-0 property but the second property override was missed in
the aforementioned commit.

On Puma, a hardware slider called "BIOS Disable/Normal Boot" can disable
eMMC and SPI to force booting from SD card. Another software-controlled
GPIO is then configured to override this behavior to make eMMC and SPI
available without human intervention. This is currently done in U-Boot
and it was enough until the aforementioned commit.

Indeed, because of this additional not-yet-overridden property, this
software-controlled GPIO is now muxed in a state that does not override
this hardware slider anymore, rendering SPI and eMMC flashes unusable.

Let's override the property with the 2ch pinmux to fix this.

While at it, add a GPIO hog for this software-controlled GPIO to make it
explicit and also make it reserve the pin through the pinctrl subsystem
to make sure nobody can mistakenly request it for something else: better
have a non-working feature than eMMC/SPI being corrupted "randomly"!

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Quentin Schulz (2):
      arm64: dts: rockchip: fix eMMC/SPI corruption when audio has been used on RK3399 Puma
      arm64: dts: rockchip: override BIOS_DISABLE signal via GPIO hog on RK3399 Puma

 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 36 ++++++++++++++++++++++++---
 1 file changed, 33 insertions(+), 3 deletions(-)
---
base-commit: e4fc196f5ba36eb7b9758cf2c73df49a44199895
change-id: 20240731-puma-emmc-6-c141e891220b

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
