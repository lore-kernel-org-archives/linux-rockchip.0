Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 835B4C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jan 2022 23:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSVedzxHmoaLEPcu5e0y1lGkjN1vr1wHd9RIpxh3v3c=; b=N499yHl/6gq8lG
	QZQt2qgH6Ii74oZbmLjGV3ynHKwtoa6fnCjmLhAgQN7gxbjFMSvVO21vn8bJHvepbkZahKH1lmJgf
	GSY1ziRmtRA5cd1rswE1kSvzpQj7GW/dHHAMQqtOziX9yXANEE+WLnmy1O6TaFElkW3/xwklhCZth
	POOEfqwFkpgEqYDPaS5YaNLM+BMQrp3h29/ESxv6ND0hF9NJR2hqu6D/C7eovEztWqkXTRYjR57/t
	9S9i6AGYalY2WHc1fKcnfTdYnLTFxEaarlkuoa6ZJ2R0lEyXnNYDYEIzbjHJ9QHi/BH+znXcnKBC8
	0XGDlH7OwjtYJjCwXGew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8VbM-00ANeQ-Vg; Fri, 14 Jan 2022 23:03:21 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8Vad-00ANIQ-Os
 for linux-rockchip@lists.infradead.org; Fri, 14 Jan 2022 23:02:37 +0000
Received: by mail-pf1-x42e.google.com with SMTP id p37so4059878pfh.4
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jan 2022 15:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K2v+tf3/coBADjHlh/X456ouYdTDi9mxyKcdvb4sAww=;
 b=VoKx/O+RdQ97dNYCMkBu/pvrz+/Fne9QTD5/ufOzQc2tIbl2VwuKirYICxRUmOaxU7
 bzMP9wvZcj0rii2XVRaGz2CB77+ByOkbDWFdmqSt03chP8478o1isqsZ72dK5ERh1qCg
 ZD1l5mA8b+oYH1T/dEcNRmhZAhXZfQvq12+jI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K2v+tf3/coBADjHlh/X456ouYdTDi9mxyKcdvb4sAww=;
 b=BfPe4HCKtyRG2ENlPvUiiyEPxpRgFCiJlSAcIx/D5pwRuVtL3p3sKuwATWuXare9cr
 C/OpPSPepHAAfP7pWMBPPKvnEqrp8H3/cnp9sQYDVNR1K9kaht3XYSBS5cekhGYvRgch
 k2Qu24w4TURLFSgKM1VdLPMCOGNs8rpUMkXN2He3CB/IOg+Ar2550YmI62FPtm/6zRLT
 vVP3cKlgUcchM3sSJy039BQ0uC4MkXU1aJWuwPqRizG/36pHlX7YU+V2sZ7qBRXbi+Ww
 dznWrEpFO8r4ilfbSKdkYgXIdq41mB7SMBFQGeDugM+Fvh9vFgXi30dmPmCPYzDsCMk3
 aMCg==
X-Gm-Message-State: AOAM531kxzl7mzsl1+Y06Q7me1gim/HoF4gRCAOvoOupaq6NtlM2JFyd
 Y29SOxu17+Lx8e1/P9oKUyc1Ig==
X-Google-Smtp-Source: ABdhPJyJxad9FH/It6rpaHOKDPCSlkdbKW/X7HtmB2tbRUwLIpcP+QTk8BQyjl2RIOc9OttHVlG6qw==
X-Received: by 2002:a05:6a00:1413:b0:4bf:a0d7:1f55 with SMTP id
 l19-20020a056a00141300b004bfa0d71f55mr10925475pfu.13.1642201353019; 
 Fri, 14 Jan 2022 15:02:33 -0800 (PST)
Received: from localhost ([2620:15c:202:201:76ab:ede1:503d:1c39])
 by smtp.gmail.com with UTF8SMTPSA id l27sm5307598pgb.0.2022.01.14.15.02.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jan 2022 15:02:32 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org, Lin Huang <hl@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 3/3] ASoC: rk3399_gru_sound: Wire up DP jack detection
Date: Fri, 14 Jan 2022 15:02:09 -0800
Message-Id: <20220114150129.v2.3.I3c79b1466c14b02980071221e5b99283cd26ec77@changeid>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
In-Reply-To: <20220114230209.4091727-1-briannorris@chromium.org>
References: <20220114230209.4091727-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_150235_842498_09A26E73 
X-CRM114-Status: GOOD (  13.43  )
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

Now that the cdn-dp driver supports plug-change callbacks, let's wire it
up.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

(no changes since v1)

 sound/soc/rockchip/rk3399_gru_sound.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
index e2d52d8d0ff9..eeef3ed70037 100644
--- a/sound/soc/rockchip/rk3399_gru_sound.c
+++ b/sound/soc/rockchip/rk3399_gru_sound.c
@@ -164,6 +164,25 @@ static int rockchip_sound_da7219_hw_params(struct snd_pcm_substream *substream,
 	return 0;
 }
 
+static struct snd_soc_jack cdn_dp_card_jack;
+
+static int rockchip_sound_cdndp_init(struct snd_soc_pcm_runtime *rtd)
+{
+	struct snd_soc_component *component = asoc_rtd_to_codec(rtd, 0)->component;
+	struct snd_soc_card *card = rtd->card;
+	int ret;
+
+	/* Enable jack detection. */
+	ret = snd_soc_card_jack_new(card, "DP Jack", SND_JACK_LINEOUT,
+				    &cdn_dp_card_jack, NULL, 0);
+	if (ret) {
+		dev_err(card->dev, "Can't create DP Jack %d\n", ret);
+		return ret;
+	}
+
+	return snd_soc_component_set_jack(component, &cdn_dp_card_jack, NULL);
+}
+
 static int rockchip_sound_da7219_init(struct snd_soc_pcm_runtime *rtd)
 {
 	struct snd_soc_component *component = asoc_rtd_to_codec(rtd, 0)->component;
@@ -315,6 +334,7 @@ static const struct snd_soc_dai_link rockchip_dais[] = {
 	[DAILINK_CDNDP] = {
 		.name = "DP",
 		.stream_name = "DP PCM",
+		.init = rockchip_sound_cdndp_init,
 		.dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
 			SND_SOC_DAIFMT_CBS_CFS,
 		SND_SOC_DAILINK_REG(cdndp),
-- 
2.34.1.703.g22d0c6ccf7-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
