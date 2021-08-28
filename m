Return-Path: <SRS0=b+1m=NT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69683C432BE
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 14:02:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0450B608FB
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 14:02:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0450B608FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qpWf3+2Nj11kZMaz1KQzXtNPwpzNXsyHp2seAOQ/ZhY=; b=u592eoTTXQS1sP
	BDLkdr+ut0UZljhyi1+GMPvEI+qIPbD6nsOfXDT0LjEKbkrsXdV1Ftc8uv5e7X2mZjoP5Bhmrv+X6
	rh7QOkA1MaaihcZFmDn26aNim9BV3INwWF3E1yrqBp+3d7RbQhv947rhfjqWWDuZhPHQnIS/Y4MQR
	VyFPq6EGh5Ma9rJaHqD0XDfV0QRFqKsOHXfdtdqGpHhTuknmJXNAE62iP+bK0eMxe6UDYXHIjKi9c
	h94yEbvrZC2IFnoOFmzAbglngrKUPNoKL5LAaHbtKVsBTkHDzXcWPGSmAmi1VitXleuNDRXrF6ba9
	oSDKRkUzScpO8or0F/3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJyuY-00EIw2-49; Sat, 28 Aug 2021 14:02:18 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJyuS-00EIvI-It; Sat, 28 Aug 2021 14:02:16 +0000
Received: by mail-ej1-x636.google.com with SMTP id i21so20379367ejd.2;
 Sat, 28 Aug 2021 07:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dGMD8G1jIPuTkP7k4fL/JNaabjrqckiKTYDIJ4uuuE0=;
 b=GbNbCHzhYOTSJwpk8QpPayaXfLVMx3hzQag0i1ovxDU8buCO+kdz7SVUxd++BPbnuQ
 h/fqLmzZgFg+t6vs4plyajV/fX4vK05/eEZiFkXIWWpgISSy2DBiZKR254KJoby7WkwX
 jt8TclTBhwiwfGP9JqjNk2UoH2QiTQm+Fox+LgfWm38So4gzzxVxBqEZMwhlwSdgr6Im
 6jjnr3TQVFVnwvXkXDp0x3lPLWaKFOmKowOaRGd4C8A5nOIynhqCrXCLfpCIZ2W6SqUK
 eHKGIXO7z25tbuxJqD61mqaCSrF6xpm4z3lHbFMSrLjWmrzdi3RKWSqzFMO3b5MF4stg
 oyQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dGMD8G1jIPuTkP7k4fL/JNaabjrqckiKTYDIJ4uuuE0=;
 b=gh58Ox42K4yzT5Gfc4qzW5k34JbH1yNZo+xkVuQloIoNiSPj4SqfXqFEtPq12tYAI/
 339hD2iOSBYpI5yNaCc6aM5+tIXv2ktws2OhD8E2/LyKcRSENMWz+FMNzlWYs89BXLUM
 96KNLfmFD1UTaM/rCwC07GOn3iVw2FWfVlLoTFHNy6NA2NKDkgSbxcJCotGg3DnEO4ar
 6LB5e9zWRQQxd006Hyh5M8vnKRhLnncEGg2lCWfc1RW6dJR763G1YfQ/xZJLD1WfHAfW
 L2KeTo7Y7MrFL98fXW5xhyy5wiVlNDaBB0SYryih7Dmpxtxsv1oommFOnpMyYQpLJD4R
 tkiA==
X-Gm-Message-State: AOAM533a4Mc31zkV7TjpRTxQY8Ogw5bj78rRyXJcCZojtcQ55dIFCIRp
 OXhES5/XoiLju44zHu+Xfac=
X-Google-Smtp-Source: ABdhPJw6u0+tq5UMYxj/3pOPrn8zfR/ErHG3LVTAGGRJqwoXlKkcOEk6Mimyf1b4/vxX247Xe2v0TA==
X-Received: by 2002:a17:906:3383:: with SMTP id
 v3mr10421811eja.213.1630159330279; 
 Sat, 28 Aug 2021 07:02:10 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id cn16sm4953982edb.87.2021.08.28.07.02.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Aug 2021 07:02:09 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: 
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] Rockchip I2S/TDM controller
Date: Sat, 28 Aug 2021 16:02:00 +0200
Message-Id: <20210828140205.21973-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210828_070212_672368_235A83AE 
X-CRM114-Status: GOOD (  26.23  )
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

this is version 3 of the I2S/TDM driver patchset. A big thanks
to everyone who has provided their valuable feedback so far.

I've decided to omit the original cover letter for this version,
as it got quite long and had some things that are outdated or
weren't the case as I've discovered from better understanding
the driver code.

I've decided not to remove the synced reset code. The udelay
matter has been settled, and it is code that most likely works,
even if I cannot test it right now. The implementation of half
a reset controller is ugly, but specifying a generalised n-reset
synchronised reset is a bit more complex to do than just doing it
for 2, so I'd prefer putting that work off until later.

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
 sound/soc/rockchip/rockchip_i2s_tdm.c         | 1845 +++++++++++++++++
 sound/soc/rockchip/rockchip_i2s_tdm.h         |  398 ++++
 8 files changed, 2541 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
 create mode 100644 sound/soc/rockchip/rockchip_i2s_tdm.c
 create mode 100644 sound/soc/rockchip/rockchip_i2s_tdm.h

-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
