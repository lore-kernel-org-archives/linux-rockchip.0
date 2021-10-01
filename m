Return-Path: <SRS0=ewtI=OV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5B0C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 17:16:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6DCE461A85
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Oct 2021 17:16:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6DCE461A85
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4C+9R0pekc65qBMMH5P761dO5U4utI6LQXIfp1vkVfg=; b=EjQQMSYgOY6EV4
	lJLt9SlIDnLJHG8bVR+E0sojunZ8ZblcIp6+FLnw2CTrcEA6GzF6L+zWgXGscIk6cu/QdHF867Emj
	OItX/ptWBrnhbEsUBzCaC5qkqy70bxPz18a/77WujXcjjWzuIEOAWvGE19UGaE6/JVjK9DLyVvwl3
	Rt5gnNjwZlxj+/bk/32Pti5GJ3gh/A51DH6kMlioLUd94Pf4rBaeUbYU26O1aYMm24zT29PAMEdM3
	HEB9xbb6y8spSFehyYg5YcQkXYtO76TyHj9JIgP6H2A53nmpDJiWcFbMCUxykod4HB8SZ20A8/4I/
	ztwhtSTaObWU+1qQPWHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWM90-000xrY-W9; Fri, 01 Oct 2021 17:16:23 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWM8q-000xoJ-N6; Fri, 01 Oct 2021 17:16:14 +0000
Received: by mail-ed1-x530.google.com with SMTP id r18so37164505edv.12;
 Fri, 01 Oct 2021 10:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YfCu/nNwO7AGzA8uGp45U8eywpx0lfbMyI4anCyuLtI=;
 b=LyeRdr3V+ofrVQMoJDopsWuq+NNZNykiMUcYdt6S+eoTlab74HmZfz8t0RoEoPPil4
 vQC4MEDevmmiY0gxmlFT81eQNnoBhiZr878YhZPYF4mjWO5N2Mi+L4I9zSag3z7Fg0pC
 J54fsY2C6OgdNhH6LxH46aB/xxG+uIDyzaoD6xZDajrmNFJ3VNnA+viL3G4nYxXoTxZz
 /kOH5sninpvb/4ttLBcJzPRWLza2NDamVkPmDgApuyC2+/XZCKRc3Yo6zV/w/nrE9OZO
 U8E46qUcpus+2rvvvJqZZIJwZFiEauVl/Z4l1IwTSCG0zQBTbPKdMZNsYdFjC0Erkxk3
 wljw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YfCu/nNwO7AGzA8uGp45U8eywpx0lfbMyI4anCyuLtI=;
 b=M4P0D/1I8vVXiYEp0UeSCFywayCkQnyvLnkVg0Cqf4EdyJ6Dxuu96ONgAHSXG9RvLJ
 w4DVxKyrw2qXblRNOwGcOkX3v9Jq5LTUNBFFowTZm2aOVaa4rbG0In2WzBtHzaE7b6+7
 u1FydfdNcRVHpMVEn+WbmoyPWRn0bHU5YVbaxdD4T/jPz3z4XRePJk2+uby58OJP6yXE
 tRaa64fxe3wmUjpkwBA+ITImRyUPflMhxra+orVyKZy+OheODDO7rYjeKp+oE+PZsv2o
 LSS9AjzkL0NSLzcGwdeCnL0Vsvly/DaXt64otmwmlBaOwGmUcbU2qnjqeNUcimtDv6vr
 OEog==
X-Gm-Message-State: AOAM5339MVObD8ON1u3A7hWEqf0KFmo9yapYArRKeNBgZDZ6C3sUB5Bn
 m0dunLp/9OzFXjbUOAC3/gOIE2q6a/8=
X-Google-Smtp-Source: ABdhPJxA92NBJBLyMapmOz4v0fbfmiaX7QSS24orSuF3nZDF9oaOr8tQQkhTejP9C6G1X5Djap2gww==
X-Received: by 2002:a17:906:2cc9:: with SMTP id
 r9mr7744000ejr.138.1633108570339; 
 Fri, 01 Oct 2021 10:16:10 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id h10sm3588130edf.85.2021.10.01.10.16.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Oct 2021 10:16:09 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: 
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/4] Rockchip I2S/TDM controller
Date: Fri,  1 Oct 2021 19:15:27 +0200
Message-Id: <20211001171531.178775-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_101612_830867_BBA4C76A 
X-CRM114-Status: GOOD (  30.61  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hello,

this is version 5 of the I2S/TDM driver patchset. A big thanks
to everyone who has provided their valuable feedback so far.

Changes in v5:
 driver:
 - change comment style of the first comment to C++ style
 - make refcount non-atomic, as it's only ever used inside
   a spinlock
 - use newer SND_SOC_DAIFMT_CB* defines
 - change ternary statements to if/else conditions
 - make _clk_compensation_put return 1 if clock changed
 - implement set_bclk_ratio callback
 - always set half frame sync mode in TDM mode
 - automatically enable mclk-calibrate mode when the clocks for
   it are specified in the device tree
 bindings:
 - add Reviewed-by: Rob Herring
 - drop rockchip,frame-width property (done by set_bclk_ratio)
 - drop rockchip,fsync-half-frame property
 - drop rockchip,mclk-calibrate property
 dts:
 - drop empty codec block from Quartz64 device tree

Changes in v4:
 driver:
 - factor TDE/RDE enable/disable into their own inlined functions
 - add an RDE disable in a location where it looks like it was
   forgotten (rxctrl else), judging by corresponding TDE code
 - remove parentheses around CLK_PPM_MIN/MAX values
 - wording + titlecasing in the clock compensation control
 - use if statement in precious_reg instead
 - refactor rockchip_i2s_io_multiplex to have the switch statements
   in a function call to make the function less unwieldy
 - get rid of IS_ERR checks around clk enable/disable calls where
   already checked before by the probe
 - reworded some error message strings
 - fix potential deadlock in txrxctrl found by Sugar Zhang
   using spin_lock_irqsave
 - fix potential deadlock in trcm_mode found by Sugar Zhang
   using spin_lock_irqsave
 - use devm_platform_get_and_ioremap_resource in probe
 - only set DMA things if controller has capture/playback ability.
   Did not move this into init_dai because I'd then need to pass in
   the res and probe it earlier in the function, and it's also used
   elsewhere in the probe function
 - use _get_optional_exclusive for reset controls, as some controllers
   only have capture or playback capability
 bindings:
 - remove status = "okay" since that's the default
 - change the path configs to be an enum
 - rename "foo" to "bus"
 - make resets optional as controller may lack either playback or
   capture capability, and therefore also doesn't have a reset.
   At least one reset is still required, because a controller with
   no playback and no capture is not very useful

Changes in v3:
 driver:
 - alphabetically sort includes
 - check pm_runtime_get_sync return value, act on it
 - remove unnecessary initialisers in set_fmt
 - use udelay(15) in retry code: 10 retries * 15 = 150, so at worst
   we wait the full i2s register access delay
 - fix some weird returns to return directly
 - use __maybe_unused instead of #ifdef CONFIG_PM_SLEEP, also put
   __maybe_unused on the runtime callbacks
 - use (foo) instead of foo in header macros for precedence reasons
 - when using mclk-calibrate, also turn off/on those clocks during
   suspend and resume operations
 - remove mclk_tx and mclk_rx reenablement code in remove
 - move hclk enablement further down the probe, and disable it
   on probe failure
 - make reset controls mandatory, since the bindings state this too
 - use _exclusive for getting the reset controls
 - change reset assert/deassert delays to both be 10 usec
   (thank you Sugar Zhang!)
 - properly prepare and enable all mclks in probe, especially before
   calling clk_get_rate on them
 - if registering PCM fails, also use the cleanup error path instead of
   returning directly
 - bring back playback and capture only but in the way Sugar Zhang
   suggested it: set those modes depending on dma-names
 - rework clock enablement in general. Probe now always enables these,
   instead of relying on the pm resume thing
 - add myself to MAINTAINERS for this driver
 dt bindings:
 - fix a description still mentioning clk-trcm in the schema
 - document rockchip,io-multiplex, a property that describes the
   hardware as having multiplexed I2S GPIOs so direction needs to
   be changed dynamically
 - document rockchip,mclk-calibrate, which allows specifying
   different clocks for the two sample rate bases and switch between
   them as needed
 - dma-names now doesn't have a set order and items can be absent to
   indicate that the controller doesn't support this mode
 - add myself to MAINTAINERS for these bindings

Changes in v2:
 - remove ad-hoc writeq and needless (and broken) optimisation in
   reset assert/deassert. This wouldn't have worked on Big Endian,
   and would've been pointless on any other platform, as the
   overhead for saving one write was comparatively big
 - fix various checkpatch issues
 - get rid of leftover clk-trcm in schema
 - set status = "okay" in example in schema instead of "disabled"
 - change dma-names so rx is first, adjust device trees as necessary
 - properly reference uint32-array for rx-route and tx-route
   instead of uint32
 - replace trcm-sync with two boolean properties, adjust DT changes
   accordingly and also get rid of the header file
 - get rid of rockchip,no-dmaengine. This was only needed for
   some downstream driver and shouldn't be in the DT
 - get rid of rockchip,capture-only/playback-only. Rationale being
   that I have no way to test whether they're needed, and
   unconditionally setting channels_min to 0 breaks everything
 - change hclk description in "clocks"

Nicolas Frattaroli (4):
  ASoC: rockchip: add support for i2s-tdm controller
  ASoC: dt-bindings: rockchip: add i2s-tdm bindings
  arm64: dts: rockchip: add i2s1 on rk356x
  arm64: dts: rockchip: add analog audio on Quartz64

 .../bindings/sound/rockchip,i2s-tdm.yaml      |  198 ++
 MAINTAINERS                                   |    7 +
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |   31 +-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   26 +
 sound/soc/rockchip/Kconfig                    |   11 +
 sound/soc/rockchip/Makefile                   |    2 +
 sound/soc/rockchip/rockchip_i2s_tdm.c         | 1848 +++++++++++++++++
 sound/soc/rockchip/rockchip_i2s_tdm.h         |  398 ++++
 8 files changed, 2520 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
 create mode 100644 sound/soc/rockchip/rockchip_i2s_tdm.c
 create mode 100644 sound/soc/rockchip/rockchip_i2s_tdm.h

-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
