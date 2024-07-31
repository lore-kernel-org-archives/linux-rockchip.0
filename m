Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24574C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 11:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYF18dbC3+rUP9kB880bk6YqAIEYcHYxN/P0us3n03Y=; b=dJFnd9Y0beE6De
	p8OBUfwLTprZdaNX8mczSVVGXpfTqno+Sk2S1CfXCmdrZuP/ESKixUtPGFJRVRt5A9yQfbKtdYx95
	Yxq9/bHmQEYpO9CTYicqO0WttB80DSkZ1YBCtXuRtlRqShzYwW1kjG3TEFFlugHCd96yVem/96/rU
	5R/kehOosvpPCbSa4HG0JQgLiO7KRlGv7e9oxu4dNdmHLCNbtRZPjZHWSfNdSoMKKBh101GeGtsjH
	chc3RDM4BfIHDFlTyRA9NrqFVFJj5GqGTFyF/+jVj0MzyZ0MtUKTL8rSlzaQrvq0ImrXeanGcKQUn
	g4lg0ndcijhumeCceYoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7BR-00000000qK4-1CB7;
	Wed, 31 Jul 2024 11:07:53 +0000
Received: from smtp-190a.mail.infomaniak.ch ([2001:1600:4:17::190a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7A5-00000000pei-0o00
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 11:06:33 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4WYq680kh6zZf4;
	Wed, 31 Jul 2024 13:06:24 +0200 (CEST)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4WYq6725w9zQwk;
	Wed, 31 Jul 2024 13:06:23 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Wed, 31 Jul 2024 13:05:28 +0200
Subject: [PATCH 1/2] arm64: dts: rockchip: fix eMMC/SPI corruption when
 audio has been used on RK3399 Puma
MIME-Version: 1.0
Message-Id: <20240731-puma-emmc-6-v1-1-4e28eadf32d0@cherry.de>
References: <20240731-puma-emmc-6-v1-0-4e28eadf32d0@cherry.de>
In-Reply-To: <20240731-puma-emmc-6-v1-0-4e28eadf32d0@cherry.de>
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
X-CRM114-CacheID: sfid-20240731_040629_444826_730E5F6B 
X-CRM114-Status: GOOD (  15.14  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

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

Fixes: 91419ae0420f ("arm64: dts: rockchip: use BCLK to GPIO switch on rk3399")
Cc: stable@vger.kernel.org
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index ccbe3a7a1d2c2..a782e614d9bba 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -409,6 +409,7 @@ vdd_cpu_b: regulator@60 {
 
 &i2s0 {
 	pinctrl-0 = <&i2s0_2ch_bus>;
+	pinctrl-1 = <&i2s0_2ch_bus_bclk_off>;
 	rockchip,playback-channels = <2>;
 	rockchip,capture-channels = <2>;
 	status = "okay";
@@ -417,8 +418,8 @@ &i2s0 {
 /*
  * As Q7 does not specify neither a global nor a RX clock for I2S these
  * signals are not used. Furthermore I2S0_LRCK_RX is used as GPIO.
- * Therefore we have to redefine the i2s0_2ch_bus definition to prevent
- * conflicts.
+ * Therefore we have to redefine the i2s0_2ch_bus and i2s0_2ch_bus_bclk_off
+ * definitions to prevent conflicts.
  */
 &i2s0_2ch_bus {
 	rockchip,pins =
@@ -428,6 +429,14 @@ &i2s0_2ch_bus {
 		<3 RK_PD7 1 &pcfg_pull_none>;
 };
 
+&i2s0_2ch_bus_bclk_off {
+	rockchip,pins =
+		<3 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>,
+		<3 RK_PD2 1 &pcfg_pull_none>,
+		<3 RK_PD3 1 &pcfg_pull_none>,
+		<3 RK_PD7 1 &pcfg_pull_none>;
+};
+
 &io_domains {
 	status = "okay";
 	bt656-supply = <&vcc_1v8>;

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
