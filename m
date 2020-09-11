Return-Path: <SRS0=BI/a=CU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78BCC433E2
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2020 17:47:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 525E021D81
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2020 17:47:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Pl0LojHC";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lF42bRcP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 525E021D81
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ow371DClDoDzlTqK+Lzwhhy0A8BgKQGS3JvzDMdA5g4=; b=Pl0LojHC/HsN6gxeZXgSvImZTR
	Gh4IgxadR7EU5qKz3Cj9sZath/HDfqiqTbr+K1S4heHuux3JeYW5lkbm4A+gEPEYTCRDSncwo1NjI
	HyVPZJMyaAb8pRdGdZHANRz1oD1ELHNm9PLizjr73fa6BWuQd9D5ZJgnuwncEijDiclurziwybvka
	yonUc1ACh3KAdh3vENi6Pb2XGMUJI24jzKGdfijr5wLbBjFu6BakJBCituA8oRMbjFpyTsFiMwSbN
	daO4tUlN2pWJ2xo6uL9G/INT4yCckNfCcqEDljpqs5J2fz1sDgVgoXoejLjqplbaJV8NUpQbMK/F+
	E9W/Sajw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kGn8q-0004Zu-9N; Fri, 11 Sep 2020 17:47:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGn8n-0004YT-86
 for linux-rockchip@lists.infradead.org; Fri, 11 Sep 2020 17:47:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id f18so7922236pfa.10
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Sep 2020 10:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CgMtX/bQdS+iljLhW5Xz3FoT/kLLfD7hEC/fOvVMJlE=;
 b=lF42bRcPysLjAz+4XpAo+NifmoYEPSBJzRIvemjHfGghsYHgR1QoV/gvIesYoL6itg
 fP82ZaiRVqJwao1iq3lLyvojkrdgQL4zeKJ0zjStTVlrHIvIY1mXMYowjT05Z+o2GJhC
 uSVPB7TOLIEkNXActRv3e8S3wyfIiHvKTLTuI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CgMtX/bQdS+iljLhW5Xz3FoT/kLLfD7hEC/fOvVMJlE=;
 b=V95wjJHk1WjG8PEE/Tp223NUGZ0EU/oNT6ws2kAs9XbyQR8MnXpvp4W/df1A3tG4Ie
 h1Vx5O6J6IOJ0mePWZj8/lZvVHdLm2/t1dZV4FJAPBRiWlAG1Crmi4x6NElle+9fwF/N
 OI4V3CPYXQRU7IwlIgAefXATM++DFEzx5cofbsMKsx0vzOVqR3CdK3xIJbl7tkOhKD54
 V6Tr9Cjm90El88fHqeojp7KwK0CgmYbjDj+zLX2d9VdY71UvbH+LAnHlyziJ8LISzneE
 WtuRALKMogLdEotEHYCLaRN3zGkEG9birIZKgdRRVUpeGAjVxbSf1uSv/JCCmn2mr9d8
 CRHg==
X-Gm-Message-State: AOAM532QpugvFUtFpYOW5jL20Vd3AUhWuOFE1VyF+gl6Jun7Xwdkw/UO
 +/1m0NQnCubTu6HVLNFNl7wqrQ==
X-Google-Smtp-Source: ABdhPJxNtBdyzMkYndGvJzc/+tnBt6ycOD7P1IyvK0XKGbemUwW2lU1PpHqixxbAgdo+QItKKfXxZA==
X-Received: by 2002:a17:902:8f88:b029:d0:cc03:3ba with SMTP id
 z8-20020a1709028f88b02900d0cc0303bamr3297714plo.40.1599846434800; 
 Fri, 11 Sep 2020 10:47:14 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:de4a:3eff:fe7d:d39c])
 by smtp.gmail.com with ESMTPSA id v13sm2349434pjr.12.2020.09.11.10.47.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Sep 2020 10:47:13 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v10 0/3] Add documentation and machine driver for SC7180 sound
 card
Date: Sat, 12 Sep 2020 01:47:02 +0800
Message-Id: <20200911174705.759011-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200911_134717_310037_C4B90D80 
X-CRM114-Status: GOOD (  17.47  )
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
 Srinivasa Rao <srivasam@codeaurora.org>, Stephan Gerhold <stephan@gerhold.net>,
 linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
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
- This patch series needs HDMI DAI name SC7180_LPASS_DP defined in sc7180-lpass.h.
  It will be posted in the newer patchset of https://patchwork.kernel.org/patch/11745565/

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

Changes from v9 to v10
- Documentation:
  - Let compatible string be more specific for board configuration to allow
    for future changes.
- Machine driver:
  - Fixed unused include and macro.
  - Add temporary macro SC7180_LPASS_DP for future change in sc7180-lpass.h.
  - Let sound card be dynamically allocated.
  - Change compatible string accordingly.

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
 sound/soc/qcom/sc7180.c                       | 266 ++++++++++++++++++
 sound/soc/rockchip/rockchip_max98090.c        |   3 +-
 10 files changed, 421 insertions(+), 22 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,sc7180.yaml
 create mode 100644 sound/soc/qcom/sc7180.c

-- 
2.28.0.618.gf4bc123cb7-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
