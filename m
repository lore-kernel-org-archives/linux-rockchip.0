Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10411C53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 15:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mh0eHH6eUfPKnq+X7XDGJATW0du1rzVt34qv7PvF9vc=; b=hDMUMGu6EDwLDB
	0DT89ktj0NuqXK+fV0aLktRpB9yQpWwlEhTFwy7FX/EysLeNIAIt6chukdFc3jgHWlHtQ82ABtedu
	0VJGan+5hwddaRBmKqyx4boZTCgbmYUsH4Ycm7ArRLa2o6GQuVg69KXWGwpDF0mJl9OIxkcYP6Ol4
	8X7sXHFZDvKJiUh9VLyHuqKtVDtL9K1arPgfEvMXyqUbim1Gg3JJAHfxmynT4fNti2xY8MWXT3C6B
	02gnOpP7DRsvfcqOFkYqJqCkB35/hVj2XCiY+NJjYM0ixDCkkj0bT9uqI2NRDP7AldrP5htc+fU43
	915h764h8l/8QLoE2tIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp6gc-00000008TKQ-3uvF;
	Wed, 29 Jul 2026 15:59:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp6ga-00000008TIb-2rpy
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 15:59:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=s49YJnP9lIyfeh8+sVIwMzyzQ8yPHBn53FpQ4mjBhdA=; b=w+lyqyzKY2Uf8zR4igTWQUaUZX
	fr2F9mZszOA9w8aqSXA7osl5sI/JJno5QwkZw7Ea7deqH3+2BbaR6gV01D8XDT1R6T8Z8D3SNe62+
	whLHlSrfh7K5kyuOFI4RMd3IuCOEnp38NugRhzwzs6zGQgREIF4c8fsJPvik0JeV92jNHJX9jch8+
	hQLHAbzreXHD34Y3Uj8Sdf4fhfcEKqbH6qRHK+g8qnH43n6iUKn7S2PpeQbSkSeKkruFRhYXt8dKQ
	GeYvTv9BeAsdMoDgMfY75JKrkdCnc4YtBcoQHZRvYIEsmfe3UYD3nGhbkDDTy05yGBdMfavjq/h8X
	Eme5uyoQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH V10 0/4] Add Anbernic RG Vita-Pro
Date: Wed, 29 Jul 2026 17:59:04 +0200
Message-ID: <178534073338.533990.3074787273203851372.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260728203832.166402-1-macroalpha82@gmail.com>
References: <20260728203832.166402-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_085912_722992_B79115BF 
X-CRM114-Status: GOOD (  27.15  )
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


On Tue, 28 Jul 2026 15:38:28 -0500, Chris Morgan wrote:
> Add support for the Anbernic RG Vita-Pro, based on the Rockchip RK3576 SoC.
> 
> Changes Since V1:
>  - Updated documentation filename to matche compatible string.
>  - Corrected order of allocating IRQ in charger driver and switched
>    to using devm managed function to allocate work queue.
> Changes Since V2:
>  - Corrected issue with naming of panel binding document and added
>    fallback compatible string.
>  - Switched to devm helpers in panel driver. Note that
>    devm_drm_panel_add() is currently only in the drm-next branch.
>  - Optimized setting GPIOs for panel driver.
> Changes Since V3:
>  - Fixed numerous issues identifed by Sashiko bot, mainly relating
>    to unclamped or improperly clamped values from within the
>    charger driver.
>  - Corrected hard-coded values in the panel driver unprepare routine
>    as well as correcting an improperly checked return condition.
> Changes Since V4:
>  - Fixed errors identified by Sashiko bot on charger driver that could
>    result in an improper value being written to the registers.
>  - Corrected some error handling in the panel driver.
> Changes Since V5:
>  - Corrected minor errors in documentation and added default values.
>  - Further corrected clamping behavior in charger driver.
> Changes Since V6:
>  - Additional corrections as suggested by Sashiko bot to fix potential
>    edge cases during probe for sgm41542.
>  - Corrected an improperly shifted value being written to register for
>    sgm41542.
>  - Changed a MV value to UV in sgm41542 driver to simplify function.
> Changes Since V7:
>  - Added PM functions to sgm41542 driver per request from Sashiko,
>    which stops the hardware watchdog during suspend.
>  - Switched from device_init_wakeup() to devm_device_init_wakeup().
>  - Confirmed a state change in IRQ handler for sgm41542 to ensure we
>    don't update input current limit except when the vbus goes from
>    not okay to okay.
>  - Removed panel patches, which have already been accepted upstream.
>    Please note that this *may* cause an error about missing bindings.
>    See commit 0fd6ead8270270d859a28d0196a4b47e7d6845b8 in linux-next.
> Changes Since V8:
>  - Added linux/bitfield.h header to prevent compile errors on certain
>    platforms.
>  - Added regulator to Kconfig as a dependency.
>  - Added mutex to IRQ handling function.
>  - Added update to watchdog enable field in suspend routine to ensure
>    watchdog status "goes back to the way it was" after resume.
>  - Sashiko complains of an issue if userspace updates values after
>    devm_power_supply_register() is called but before the hardware
>    limits are set from the device tree. While this is possible the
>    threat of a problem should be very low given that the hardware
>    limits are set immediately afterward and would overwrite any
>    wrong values from userspace (should happen within a few
>    milliseconds). Unfortunately, given that the function to get these
>    limits requires the power supply be registered in order to read
>    the battery node, it's not something that can be easily fixed at
>    this time. Since it's an *extremely* unlikely edge case, I think
>    that's acceptable.
> Changes Since V9:
>  - Made a few minor tweaks as suggested by sashiko.dev.
>  - Adopted new init function for __power_supply_register() so that I
>    can have the proper min and max values from the firmware prior to
>    exposing the charger to userspace. New init function is part of
>    this series here: https://lore.kernel.org/all/20260720011144.1280219-2-vincent.cloutier@icloud.com/
> 
> [...]

Applied, thanks!

[3/4] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
      commit: 74aab5a3042e56681eb8170bad84789fb42eae60
[4/4] arm64: dts: rockchip: Add Anbernic RG Vita-Pro
      commit: aaed846aa94076aa670c60089a7143a0f43327b4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
