Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07869C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jan 2022 20:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRwjqRjAdrnMTAJGZZy/0rdzZnH0LdzRRUYqWJWTh8w=; b=NrLRm+QX7jXPUD
	LeWmmkktYBq0W/pDI0++raNocQE3qrJrXOnpQ4Ra/MTKt9bIKR5LUatHqlq8teuwmacehnqQb31W9
	Bf06da7FI8Raovvc5D2hFDe1YeYLv2Ji6KO1rHXrBvREMHd4iShNBmtg19/EbatShjHzdPb4STFi6
	/yI2NExrM56wAhVgouBQX9NgYRzias1jktqgCgs/bru4kmi/+G+6U1yRf1KpGvTPIgN+I7KTWlpja
	DuWsshu4vE79r2ZdPtslCJzZ8wg9f5uZBbWRZE9rm2Bmnh0WmIp+y1g6hS1bHMhu6wiT5NT7YlSvA
	A5cHZN5jGm7LgbTmP9Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8T18-00A9zo-3a; Fri, 14 Jan 2022 20:17:46 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8T0g-00A9qq-16
 for linux-rockchip@lists.infradead.org; Fri, 14 Jan 2022 20:17:19 +0000
Received: by mail-pf1-x42c.google.com with SMTP id i129so3726622pfe.13
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jan 2022 12:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=10U/YKtex+AND9dtDxjk3FYBvBwLFUl9f2fbhlUXUs0=;
 b=XQy4pyO/wUwsYqGsKtflTgY0GMz4pfjd2qpY31JHWTpxrdp5kycdY6uXSFa3MXVWe6
 wq/hlaXeACBG7Euq/bmzfc3SM6AC4Pu4laUwxAAWlVJsx2bVy0Izg+KtkO5gPiaBeCOw
 LsILH7rVPeqwj+OUGJjnT/KYlOKhVhKT8tdiA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=10U/YKtex+AND9dtDxjk3FYBvBwLFUl9f2fbhlUXUs0=;
 b=42RXnIoiygEv8Op1rjVMkinqyK8xD2nDzRJR5u1jasFGGxZZesqHVyParHMSBRi1ob
 2/NbrviipHG54mgBTN2zuNq1Rez5A95nnGvvYIdsxI+3SQgJtVbUaOSohDtxbN4LbySZ
 zkgb25OofY+9muZeiSh91oVmiBJtjClYU9hMXnJY6UYW6ziInOrFAzVt7fNUSe10Nh0Z
 x+VPDCpnAqgy4vQMI21BMluimQ7y09hiq8kvPexn6+s90a01LZDTs5N2aciN1BblPNHR
 oPTtQtq9YPpCAv6idIVvu/dAgq+RMnQAltJvClg1n4edD+LY/PHvL19XIhFUKY1HR1rk
 MUtQ==
X-Gm-Message-State: AOAM530p0QPKHANFV9VzpjYL0e7/v5OUoEJWKNHLUvgGlrwIpdNnvz+I
 rVySV+FwzyOBxXmxnPXLSaqsV5dcc1lmCQ==
X-Google-Smtp-Source: ABdhPJxqbQOjbira1atGPpNHzh9Q82DXtSjtZWs+75WZcndu3r13+lzxdf+ODqr/TYUZIBqpyhshZg==
X-Received: by 2002:a63:6b81:: with SMTP id g123mr9615156pgc.140.1642191437321; 
 Fri, 14 Jan 2022 12:17:17 -0800 (PST)
Received: from localhost ([2620:15c:202:201:76ab:ede1:503d:1c39])
 by smtp.gmail.com with UTF8SMTPSA id g15sm2354365pfm.142.2022.01.14.12.17.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jan 2022 12:17:16 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, Brian Norris <briannorris@chromium.org>
Subject: [PATCH 3/3] ASoC: rk3399_gru_sound: Wire up DP jack detection
Date: Fri, 14 Jan 2022 12:16:52 -0800
Message-Id: <20220114121515.3.I3c79b1466c14b02980071221e5b99283cd26ec77@changeid>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
In-Reply-To: <20220114201652.3875838-1-briannorris@chromium.org>
References: <20220114201652.3875838-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_121718_098514_66829BE9 
X-CRM114-Status: GOOD (  13.46  )
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
