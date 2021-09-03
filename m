Return-Path: <SRS0=3Vai=NZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDEAC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 23:16:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 80DA46056C
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 23:16:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 80DA46056C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+RvRz1Dz9jZygc3b10bQKKlPfpGLoBCT8b3DOpx674c=; b=XGXsJ/nGGw7G7j
	hSoR6Ywr3oMJSj6UD2GMB906+KrnaoZL6IIune0gN2S9rHgpAR4m3T7ppAEBAhTg0ul84Q6+kJzAE
	gaREZ4lWFmbzYMdwefewmTFzlrHWDGJoPeTR2JSBtL2EsDKrEsM50s6CtT62Ny+DjANN4FtCTMBvB
	w9mnZNS9KLelmo8FysdWmTPHfJ8/+gA5vwiyy/RaXqBsO0bJKAl8Fm458Qp/8l2zRuN4xA0ASodAh
	Huw/YtkBAePpwhv88wpDZlwZQ8h1tlyrgrdoHt3VGXQkpBky/AN1AMsqjPUHynE9vvnLvYhlhdKCq
	MEATL417xL0SI4hG1NZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mMIPi-00D9GR-8a; Fri, 03 Sep 2021 23:16:02 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mMIPf-00D9Fg-Gh; Fri, 03 Sep 2021 23:16:01 +0000
Received: by mail-ed1-x52e.google.com with SMTP id s25so1037682edw.0;
 Fri, 03 Sep 2021 16:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jmzC+5W6PuoiEpav3LGA2I32fo489OxZqYaZooLG7lc=;
 b=JW9vigKQ9309eJ+4y0IuwAsEGHtBo0JNhyp6fuYUHUT5VzmDppgkuFLZY9CskFv3Nn
 D9Xvg+z9cCH516mv5CxaYqAuffRObxMfD/dmf3Lq0g8409t8Qx9CLn/+iwOHqSnHUyMH
 D81K+B9bzIRu7FWG6z4aURM0KwnMfzhcb69HmmCnoVFPEO26g/Fpu0DmE9zjZrmoDrcK
 Mo6nBezyBIzCDkKLQoeMw+50JO33I7LUH8u+wiqGJp2vz4LzQVp3kMPiZFUfCt9MmBjt
 s5C+1jbesgw8GOWIBClSlh7Y+VCFmB5KylowId03JBvKT8Jk728apL9jZj7imQfvqCfr
 rDig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jmzC+5W6PuoiEpav3LGA2I32fo489OxZqYaZooLG7lc=;
 b=oE3D7ynI7cbD/gKKtROYsWbea7ffoalkomAhXZi2cdRI7bG9dxd7zwAMkMjHzUdXcl
 DXe0WAlcxy1/CG0V69sWmdrAT1ouE98e57PmJGx9pSvYV/hbFgvneYxKsy4k+b1asHae
 52tgCcE49B74yGQjdieZnUVIpg4rctpD//a6hPoobpXBv0+6VgBiRdLhNpyXtDzzHrQ5
 qbwLUf0Q03zo+onQqPqAl0j3SV7raUrUyulUFHi2+9uE+fduMg/3N1xXGOC9K5VaYekD
 FFmNJLggW6Pu2R1orrkQ/uL+tUgx4rd05IRK9ijD715CySVhQeRXcvX9imdCn+b55QOJ
 hg0A==
X-Gm-Message-State: AOAM5310oRttQ8vLakUtdxpIurPBmNE965vUnHekU2vPZD9UACF6dYRr
 RoXLVEletAuDz7NM6hpsMl4=
X-Google-Smtp-Source: ABdhPJyuRQaZGIsIbO9A9TerzEbIgATo1E295j/y36AwMPBpvYThnT+om998V6J+4YfapTYZekoU0A==
X-Received: by 2002:a05:6402:4cb:: with SMTP id
 n11mr1413449edw.292.1630710957408; 
 Fri, 03 Sep 2021 16:15:57 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id r11sm214068ejy.71.2021.09.03.16.15.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 16:15:56 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: 
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/4] Rockchip I2S/TDM controller
Date: Sat,  4 Sep 2021 01:15:32 +0200
Message-Id: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210903_161559_607402_7BC782BB 
X-CRM114-Status: GOOD (  27.05  )
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

this is version 4 of the I2S/TDM driver patchset. A big thanks
to everyone who has provided their valuable feedback so far.

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
  dt-bindings: sound: add rockchip i2s-tdm binding
  arm64: dts: rockchip: add i2s1 on rk356x
  arm64: dts: rockchip: add analog audio on Quartz64

 .../bindings/sound/rockchip,i2s-tdm.yaml      |  218 ++
 MAINTAINERS                                   |    7 +
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |   35 +-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   26 +
 sound/soc/rockchip/Kconfig                    |   11 +
 sound/soc/rockchip/Makefile                   |    2 +
 sound/soc/rockchip/rockchip_i2s_tdm.c         | 1832 +++++++++++++++++
 sound/soc/rockchip/rockchip_i2s_tdm.h         |  398 ++++
 8 files changed, 2528 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
 create mode 100644 sound/soc/rockchip/rockchip_i2s_tdm.c
 create mode 100644 sound/soc/rockchip/rockchip_i2s_tdm.h

-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
