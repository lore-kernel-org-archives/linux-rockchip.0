Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E243C54798
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Mar 2024 14:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SWXnjqvbLa3MIWiUr45ZFJp/NJC5EpmGq+MO/D6NRZQ=; b=20VHoHE6rd+bID
	X90DN3y7+u9xVr6SwsnkeIVWlwBsRsh7jJpFac6QI3ODJOLLfMSLsMQtQfA7tnApa60ojgRk1h5gL
	+FrM0LoBdtSvHYgBAYLM97IatN7NgRgDmQseoZQLshckkvo66F6OVcR8BTlQQW2qZ+QDKyjsabyfo
	X8zTCs2aTYOMxEJ2ZVEMbgRf792LextvqFZOp1deknm8UeK95mhHelEI+NZ+iLfO4ni1aOrOm6Xn6
	q3Ho7vIbIh7QS7k1nTYNXDNPZzGgBouP05/a5eiAfxt8U7moWAMFaINDf7RMMEtNqIO8fAJMTiwu6
	zwtlQnTmRYRKjdOo0ocg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhVuk-0000000E3Xv-3IQl;
	Tue, 05 Mar 2024 14:37:06 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhVud-0000000E3QY-086I;
	Tue, 05 Mar 2024 14:37:02 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id A6A66C000C;
	Tue,  5 Mar 2024 14:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709649415;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TJg4ITKqKfYu+30cWlqLbE1/5HrZuqX0Hab1UwoC7W4=;
	b=EJ6ffO+CilUDoGxB6CXLFXWxSLqvfHX6mSvkQL+hZx3IYr2FmSHrBFgZIckvbT7Asl9Ctb
	UGpIpgZxrTVBb2CIFN6b1gQzUW81pExICbPLuWNQJje8etp+4KnVVg+6Uoy0Jaw/krF4pB
	NwRnwyPMt9boxfyUuaOfwqo66wmHKfvi4DmFipPYLMS/qU4JicNflfk6aGulZOX8zVHdzr
	FeQ7etZ/gKV/uoAeMLuBx9Y+uIMkK29joDUL+pHhhXfWkRkA9INGzty22Btj1SFcJzDtiw
	z3W1D9fOOx5cv6JnBuw4AAT9e3RhdOWwEYGJ4H5lB2jsHA2HvqDnY/t5+xXi6A==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: [PATCH v4 0/7] Add support for the internal RK3308 audio codec
Date: Tue, 05 Mar 2024 15:36:27 +0100
Message-Id: <20240305-rk3308-audio-codec-v4-0-312acdbe628f@bootlin.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOst52UC/33NzQ6CMAzA8VchPTtTtoHgyfcwHsY+pFGZ2XDRE
 N7dQeLFGI//pv11gmgD2Qj7YoJgE0XyQw65KUD3ajhbRiY3cOSi5GXLwkUIbJh6GPJMe2M1U1V
 VNZ1qWtkayIf3YB09V/R4yt1THH14rT8SX6Z/ucQZMr1DgzXmFVkfOu/HKw1b7W+wgEl8EImcl
 z8RkRHjlJCqc9q6L2Se5zdMgvqQ+wAAAA==
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.13.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_063659_994412_A9089B39 
X-CRM114-Status: GOOD (  17.63  )
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

Patches 2-4 add the codec driver along with the bindings and a new helper
macro.

Patches 5-7 add to the SoC DT file two I2S controllers (those which are
internally connected to the internal codec) and the codec itself and enable
the driver in the ARM64 defconfig.

Luca

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
Changes in v4:
- several cleanups in the codec probe function
- Link to v3: https://lore.kernel.org/r/20240221-rk3308-audio-codec-v3-0-dfa34abfcef6@bootlin.com

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

 .../bindings/sound/rockchip,rk3308-codec.yaml      |  98 +++
 MAINTAINERS                                        |   7 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |  56 ++
 arch/arm64/configs/defconfig                       |   1 +
 include/sound/soc.h                                |  12 +
 sound/soc/codecs/Kconfig                           |  11 +
 sound/soc/codecs/Makefile                          |   2 +
 sound/soc/codecs/rk3308_codec.c                    | 974 +++++++++++++++++++++
 sound/soc/codecs/rk3308_codec.h                    | 579 ++++++++++++
 sound/soc/rockchip/rockchip_i2s_tdm.c              | 352 +-------
 10 files changed, 1746 insertions(+), 346 deletions(-)
---
base-commit: dfda120c512b3edca1436f770924e91b14f93a98
change-id: 20231219-rk3308-audio-codec-a5558ba8949d

Best regards,
-- 
Luca Ceresoli <luca.ceresoli@bootlin.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
