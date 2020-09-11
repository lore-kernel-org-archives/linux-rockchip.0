Return-Path: <SRS0=BI/a=CU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D46C2BC11
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2020 10:23:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4416420758
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2020 10:23:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="vNMxq28s";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NUSrvRqm"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4416420758
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BniDkKCTIEcuZ6hHjThOCgZPohnq/loA74ZYsblHL0U=; b=vNMxq28s0Zjm75a0ai1RAFtNGO
	dIkvAJdV03v7NZ2H4qStzRRbOMWWK60g7mR+Mcxk7ITi+qjogmcLaSnFATSO4va9S6qZXVsvELggR
	RZ2YNGR/TnQCHqZfQBG/o77IvyciEWmsZfuGfIeEcIrVC3kYr4lpybI3aMF1krrEQiOpke4uq06F2
	4+B4voeSOqPWpz89GQ4QvACy41dGceDIB6B/1MlKjjo9PeA4yfcbnAwjQcBw2ETE+P8tQYU5Sq1iO
	4wyRqWzpxAYDvsB975BlwTopRPeOJG14gd+tGKY/piVWsM5yW5w4237hU9Wbif4ZMb7CSbjDm4Lrh
	HnBA6ExA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kGgD6-0003D1-9w; Fri, 11 Sep 2020 10:23:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGgD3-0003BO-4E
 for linux-rockchip@lists.infradead.org; Fri, 11 Sep 2020 10:23:14 +0000
Received: by mail-pg1-x544.google.com with SMTP id s65so5261350pgb.0
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Sep 2020 03:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0vYasziV4Ler0VCEn6KqQHtlj4BJcAoBCUWQkLB1w7Q=;
 b=NUSrvRqmlAloG2hxHlBBY9dwtvyS3x7PRz4DWrxcP1VxixL3oFi1tQkrc6zUtmwk3t
 Pf5tRZOqNcx1Lj6UzHx79lq3hraKZgedTohZVKjJECewlOILUAC+s7bmn+I7bp5KeIWw
 K5QNQSYGmLgaOoNg3SV36FbV/8oOg644m3kSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0vYasziV4Ler0VCEn6KqQHtlj4BJcAoBCUWQkLB1w7Q=;
 b=VpwiI33dVvD/w2wDhOWRD0bPU7rCcrH3256CA4GZMzctPj4TletZNDSJFYokTCk0SA
 wqeX/Yo5zKRf/8HiKXsm4kWsnja04LWZgwcdRZ95EgjrLCJP5NgEJqb0Vhvn7PHWqUSa
 zqdqJA+LkmUjXvbxz+U/Pr0q3P+hY6aPsDXexKLfzDigJ2a2Rh3F3KkR8pJZoou2PNLv
 l31OL7/S/VVGrgF/cTs/x4DWTQFOTYDbOpG2N37jxDk15ISSbglLUPKzgLM1GDgzDZWs
 utvuP99eHaRoXo1g0Uu8/uD1lK3QHFT6p8O56qDYYJYOSdDxelKI2+8pDyNX9k4IhKHx
 SrhA==
X-Gm-Message-State: AOAM532Uy2esY+PM/ZGpC8xMOn7RUqGvMteA5SMPHkIP6tKxIatFj4XI
 UJb54Kmr6aMI1FZQXymMEqlEqw==
X-Google-Smtp-Source: ABdhPJyYmaJmk1RDpFXLOPsLGNOg/bKTZV0+TMJnDMZBrL1SlRoSUzLsu3q6S6akaad+bQjg/sYm1Q==
X-Received: by 2002:a63:3710:: with SMTP id e16mr1201441pga.140.1599819788638; 
 Fri, 11 Sep 2020 03:23:08 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:de4a:3eff:fe7d:d39c])
 by smtp.gmail.com with ESMTPSA id u123sm1852804pfb.209.2020.09.11.03.23.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Sep 2020 03:23:07 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 0/3] Add documentation and machine driver for SC7180 sound
 card
Date: Fri, 11 Sep 2020 18:22:56 +0800
Message-Id: <20200911102259.3667381-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200911_062313_203741_A9AC32BE 
X-CRM114-Status: GOOD (  16.89  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Taniya Das <tdas@codeaurora.org>, alsa-devel@alsa-project.org,
 Banajit Goswami <bgoswami@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, Rohit kumar <rohitkr@codeaurora.org>,
 Cheng-Yi Chiang <cychiang@chromium.org>, Patrick Lai <plai@codeaurora.org>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 dgreid@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 devicetree@vger.kernel.org, tzungbi@chromium.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-arm-msm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, dianders@chromium.org,
 Takashi Iwai <tiwai@suse.com>, Mark Brown <broonie@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Note:
- The machine driver patch is made by the collaboration of
  Cheng-Yi Chiang <cychiang@chromium.org>
  Rohit kumar <rohitkr@codeaurora.org>
  Ajit Pandey <ajitp@codeaurora.org>
  But Ajit has left codeaurora.
- This patch series needs HDMI DAI name defined in sc7180-lpass.h.
  https://patchwork.kernel.org/patch/11745565/

Changes from v1 to v2:
- Ducumentation: Addressed all suggestions from Doug.
- Machine driver:
  - Fix comment style for license.
  - Sort includes.
  - Remove sc7180_snd_hw_params.
  - Remove sc7180_dai_init and use aux device instead for headset jack registration.
  - Statically define format for Primary MI2S.
  - Atomic is not a concern because there is mutex in card to make sure
    startup and shutdown happen sequentially.
  - Fix missing return -EINVAL in startup.
  - Use static sound card.
  - Use devm_kzalloc to avoid kfree.

Changes from v2 to v3:
- Ducumentation: Addressed suggestions from Srini.
- Machine driver:
  - Reuse qcom_snd_parse_of to parse properties.
  - Remove playback-only and capture-only.
  - Misc fixes to address comments.

Changes from v3 to v4:
- Ducumentation: Addressed suggestions from Rob.
 - Remove definition of dai.
 - Use 'sound-dai: true' for sound-dai schema.
 - Add reg property to pass 'make dt_binding_check' check although reg is not used in the driver.
- Machine driver:
 - Add Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>

Changes from v4 to v5:
- Documentation: Addressed suggestions from Rob.
 - Add definition for "#address-cells" and "#size-cells".
 - Add additionalProperties: false
 - Add required properties.

Changes from v5 to v6:
- Documentation: Addressed suggestions from Rob.
 - Drop contains in compatible strings.
 - Only allow dai-link@[0-9]
 - Remove reg ref since it has a type definition already.

Changes from v6 to v7
- Documentation:
  - Add headset-jack and hdmi-jack to specify the codec
    responsible for jack detection.
- HDMI codec driver:
  - Use component set_jack ops instead of exporting hdmi_codec_set_jack_detect.
- Machine driver:
  - Removed aux device following Stephan's suggestion.
  - Use headset-jack and hdmi-jack to specify the codec
    responsible for jack detection.
  - Add support for HDMI(actually DP) playback.

Changes from v7 to v8
- Documentation:
  - Remove headset-jack and hdmi-jack.
- Machine driver:
  - Let machine driver decide whether there is a jack on the DAI.

Changes from v8 to v9
- hdmi-codec driver:
  - Fixed the naming.
- Machine driver:
  - Fixed unused fields.
  - Moved snd_soc_card_set_drvdata
  - Keep the naming of HDMI as dai name until v5 of lpass-hdmi patches.

Ajit Pandey (1):
  ASoC: qcom: sc7180: Add machine driver for sound card registration

Cheng-Yi Chiang (2):
  ASoC: hdmi-codec: Use set_jack ops to set jack
  ASoC: qcom: dt-bindings: Add sc7180 machine bindings

 .../bindings/sound/qcom,sc7180.yaml           | 130 +++++++++
 include/sound/hdmi-codec.h                    |   3 -
 sound/soc/codecs/hdmi-codec.c                 |  12 +-
 sound/soc/mediatek/mt8173/mt8173-rt5650.c     |   5 +-
 .../mediatek/mt8183/mt8183-da7219-max98357.c  |   5 +-
 .../mt8183/mt8183-mt6358-ts3a227-max98357.c   |   5 +-
 sound/soc/qcom/Kconfig                        |  12 +
 sound/soc/qcom/Makefile                       |   2 +
 sound/soc/qcom/sc7180.c                       | 267 ++++++++++++++++++
 sound/soc/rockchip/rockchip_max98090.c        |   3 +-
 10 files changed, 422 insertions(+), 22 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,sc7180.yaml
 create mode 100644 sound/soc/qcom/sc7180.c

-- 
2.28.0.618.gf4bc123cb7-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
