Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52EE7C48BC3
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Feb 2024 10:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UwnnZgF0lFYHAu5jfq2jOp2xYsZ5SGCKQdFeMefDluY=; b=zpKpNgctvNIR0K
	R5KCep8VW71YX4u22bKQ3K1doNuaxMbb2mL1rRkf5Y9UbzCEAx4SLJrLUfIowRN6MTTEM2nWCDafy
	WKtTRKQMCR9VPI0RxznottwBHOM4NNCYCG9/uzP+mE7BqD/HaJSykhJcEWGfUMndLRj/YXfNIxKLk
	iUYgZ5+tKNUh0INUYQ3Oyi/ks1pHLoG0Ag5UE0za1Yi+ltrzw6woGD1lWHB6pURoyQPfOwq7H29Jg
	CY1tBJcPawkGzySwmxN8XYO/ZDulut35/ovhiODWj8JFq7pBDzG1LojdIJ739W51DlYZJuwlhrt1l
	xLN/e2bQqPyCHxmPJHDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcjkz-00000000TPM-3tDZ;
	Wed, 21 Feb 2024 10:23:17 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcjku-00000000TL2-3RYL;
	Wed, 21 Feb 2024 10:23:14 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 25C7C240007;
	Wed, 21 Feb 2024 10:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708510987;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=c7Q53kbT3bjQcV8xVao/3i3dAchySM+PlajClMKqNFk=;
	b=Z+C7gWTCwj5OYnsG/9n0xIlEKB4Ifk6Fka8R41FN6StbxnGXofHNAlizuI7zZEahLoJGtl
	HkYdnSkJfREYGwbNBHwqAyHXb212nK7HprNQiGZz9VG3MybFFtdjvY0f5tJ65xnIZErUzn
	UERW1wX8uGgvDrLZ9ICO0gl0R4F5PaPc6lxwCGkoqMZ/4pakqlw59CLhJ9ymM+5A19LSqb
	9PdqyFq+mFYBM+ngEEXvfnFcymrdIQK54coO0Sj0hOJQ++wOSv0MJC3cM3XpmTTdIPWQ0n
	MSuHg3E4LbNKtKP5Vcxy6+yRXIZfTIQsQa/+fZJ9qP84+o25j9u82Rk1ybJMsg==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: [PATCH v3 0/7] Add support for the internal RK3308 audio codec
Date: Wed, 21 Feb 2024 11:22:44 +0100
Message-Id: <20240221-rk3308-audio-codec-v3-0-dfa34abfcef6@bootlin.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPTO1WUC/32NQQ7CIBBFr9LM2jEU2tq68h6mCwpoJypjoBJNw
 93FHsDl+/n//RWiC+QiHKsVgksUiX0BtavAzNpfHZItDFJIVct6wHBTSvSoX5YYDVtnULdt20+
 6H5rBQhk+g7vQe5Oex8IzxYXDZ/tI8pf+1SWJAs1BWNGJUmm608S83MnvDT9gzDl/AXuYUoO2A
 AAA
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.12.4
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_022313_175910_023A97CB 
X-CRM114-Status: GOOD (  17.10  )
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

This series adds a driver for the internal audio codec of the Rockchip
RK3308 SoC, along with some related patches. This codec is internally
connected to the I2S peripherals on the same chip, and it has some
peculiarities arising from that interconnection.

For proper bidirectional operation with the internal codec at any possible
combination of sampling rates, the I2S peripheral needs two clock sources
(tx and rx), while connection with an external codec commonly needs only
one.

Since v5.16 there is a driver for the I2S in
sound/soc/rockchip/rockchip_i2s_tdm.c, but in some cases it does not
configure correctly the clocks, resulting in an unnecessarily inaccurate
rate. Patch 1 fixes this.

Patches 2-4 adds the codec driver along with the bindings and a new helper
macro.

Patches 5-7 add to the SoC DT file two I2S controllers (those which are
internally connected to the internal codec) and the codec itself and enable
the driver in the ARM64 defconfig.

Luca

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---

Changes in v3:
 - Add the I2S clock fix patch and remove a previous fix which is now superseded
 - Codec driver: fix silent playback until a given amplitude of sigital
   value, seen at >= 96 kHz rate
 - various other changes, listed per-patch
 - Link to v2: https://lore.kernel.org/r/20231219-rk3308-audio-codec-v2-0-c70d06021946@bootlin.com

Changes in v2:
 - largely rewrote the codec driver to use DAPM and lots of improvements
   and cleanups
 - removed the RK3308 audio card and related patches
 - various other changes, listed per-patch
 - Link to v1: https://lore.kernel.org/all/20220907142124.2532620-1-luca.ceresoli@bootlin.com/

---
Luca Ceresoli (7):
      ASoC: rockchip: i2s-tdm: Fix inaccurate sampling rates
      ASoC: dt-bindings: Add Rockchip RK3308 internal audio codec
      ASoC: core: add SOC_DOUBLE_RANGE_TLV() helper macro
      ASoC: codecs: Add RK3308 internal audio codec driver
      arm64: defconfig: enable Rockchip RK3308 internal audio codec driver
      arm64: dts: rockchip: add i2s_8ch_2 and i2s_8ch_3
      arm64: dts: rockchip: add the internal audio codec

 .../bindings/sound/rockchip,rk3308-codec.yaml      |  98 ++
 MAINTAINERS                                        |   7 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |  56 ++
 arch/arm64/configs/defconfig                       |   1 +
 include/sound/soc.h                                |  12 +
 sound/soc/codecs/Kconfig                           |  11 +
 sound/soc/codecs/Makefile                          |   2 +
 sound/soc/codecs/rk3308_codec.c                    | 993 +++++++++++++++++++++
 sound/soc/codecs/rk3308_codec.h                    | 579 ++++++++++++
 sound/soc/rockchip/rockchip_i2s_tdm.c              | 352 +-------
 10 files changed, 1765 insertions(+), 346 deletions(-)
---
base-commit: 20fb305a716356265e9479719502b5a012e0d869
change-id: 20231219-rk3308-audio-codec-a5558ba8949d

Best regards,
-- 
Luca Ceresoli <luca.ceresoli@bootlin.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
