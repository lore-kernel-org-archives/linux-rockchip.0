Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FE6FC04A95
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Oct 2022 12:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVLMfB5jHm9AP297dYxkZ7aQBzpXC8O+fBWy7lZWJBI=; b=2QLrbXQUw9WIHs
	N+yq5BcRe+GGCIXZ0ujyrqSYlGVOqMx7w3tGhp+9/3joLn8RjpiVkvLS57q7xLHypUYd5JbuZNAJq
	kCpLIJTVbRa4TQgAZacHg4QC6LWNGbSGo72y1hDfxtlK/8Eq8YTPeMFc/waYkhyvKo0qjGmD6d4k/
	PXXOcvlf2O0kGdz/4cqvgtmlS90wSjv+8vfyH/YxDyQVPcJChwqOV4kx6xztrfFSMvtzL/7CAopIF
	JR3pOKTo2HfpUoEj1CgQf0I/m+Edvx0Ifnhs5dMx34cBer9G5/1mEvoZ6UarfbjvSPKYeKy/vlpYD
	TfCOi7bltA1tSF1Lvg0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onJGB-005EEo-AJ; Tue, 25 Oct 2022 12:42:23 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onJFp-005E2U-91; Tue, 25 Oct 2022 12:42:02 +0000
Received: by mail-wr1-x42d.google.com with SMTP id j15so10092812wrq.3;
        Tue, 25 Oct 2022 05:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vIKotX5ooYCDPVEKi3IZCfl55eak5yxZs56MABYXuTk=;
        b=WM9o7GxTlXLmPNHjXk2Fn1+OVVEmRPipyhgvnOuYvoqTrzNOxH1gBm7FQLhnAG3AtX
         E3FkjRghlQQoSWLyK5i95gFBdGiD9sShrvBlg2LkIKJ3Cuqeq0jNFbOOklfwvpGCDxTN
         qrIKz6Z9rEuahjhhtdWP8D7OWZS24e8w0tcIW128tcn5KbQzDeZ8AS87BAAWjRMtArDX
         16Ti6CdwDxDcsTO6H4+NpzzskolLqwR4Vdu68xIorqXov7Q91Crf10M+VjbCxIeq07Hk
         b3WsaG5U3lrbesOzUDIHnhQnL/+mJdsruiBxaOxpiRDJfbqLTgdYMcIi3taTmS8SJxkn
         wPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vIKotX5ooYCDPVEKi3IZCfl55eak5yxZs56MABYXuTk=;
        b=d5bu11iLVBJ8/5FXwJuTw+S7WRmI8naKaC572FbM3s7Z61y3XalH06a1OLIKsv5Soi
         7zTB50UGnQAM5SSdakVAnOxeY5BsX68QqoLePv9I9u53XQ8YCoO/5D2BvLMsV4/j868h
         Pfyhu0ldzR3RNWzMqXHkWSz6aSE4P8SwBoWI89YAk0Q0BYJRLNOxr9SQ3u2ZjuqWkZy5
         YDVwzBMPfCgsFrTiSgjk7bv3ZsRLSboY+fUyh1126sPf+uviSnAFix+7/242vceeQk7w
         pJ1puuNTUGOrdXnDPlqzFckFBCZach+gIbV/gwHq3SlzLL5TdOBeDcJjyec8K5e5aIDz
         /zSg==
X-Gm-Message-State: ACrzQf15TzFhfu5/BCPj/6M+6w60GASGOanONmrrz5WBru+x9mAxSJ2H
	uh5c62p1PD+XbKW4DsoIydE=
X-Google-Smtp-Source: AMsMyM60B8oxsFHLS4Cs0RPNNh1I7NmYcXnq2aWXeGunVPT5z/H92YLK84eclOwVh4IjAMrLrTtXCw==
X-Received: by 2002:a1c:4454:0:b0:3cf:4792:d3ad with SMTP id r81-20020a1c4454000000b003cf4792d3admr886197wma.5.1666701718486;
        Tue, 25 Oct 2022 05:41:58 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id ay19-20020a05600c1e1300b003a1980d55c4sm11250664wmb.47.2022.10.25.05.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Oct 2022 05:41:58 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] ASoC: rockchip: i2s_tdm: Make the grf property optional
Date: Tue, 25 Oct 2022 14:41:30 +0200
Message-Id: <20221025124132.399729-3-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
References: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_054201_355613_D2CB5E65 
X-CRM114-Status: GOOD (  16.56  )
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

Only IO Multiplex and two TRCM modes need access to the GRF, so
making it a hard requirement is not a wise idea, as it complicates
support for newer SoCs which do not do these things.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 2550bd2a5e78..917f17107891 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -756,6 +756,12 @@ static int rockchip_i2s_io_multiplex(struct snd_pcm_substream *substream,
 	if (!i2s_tdm->io_multiplex)
 		return 0;
 
+	if (IS_ERR_OR_NULL(i2s_tdm->grf)) {
+		dev_err(i2s_tdm->dev,
+			"io multiplex not supported for this device\n");
+		return -EINVAL;
+	}
+
 	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
 		struct snd_pcm_str *playback_str =
 			&substream->pcm->streams[SNDRV_PCM_STREAM_PLAYBACK];
@@ -1222,6 +1228,12 @@ static int common_soc_init(struct device *dev, u32 addr)
 	if (trcm == TRCM_TXRX)
 		return 0;
 
+	if (IS_ERR_OR_NULL(i2s_tdm->grf)) {
+		dev_err(i2s_tdm->dev,
+			"no grf present but non-txrx TRCM specified\n");
+		return -EINVAL;
+	}
+
 	for (i = 0; i < i2s_tdm->soc_data->config_count; i++) {
 		if (addr != configs[i].addr)
 			continue;
@@ -1568,10 +1580,6 @@ static int rockchip_i2s_tdm_probe(struct platform_device *pdev)
 		return ret;
 
 	i2s_tdm->grf = syscon_regmap_lookup_by_phandle(node, "rockchip,grf");
-	if (IS_ERR(i2s_tdm->grf))
-		return dev_err_probe(i2s_tdm->dev, PTR_ERR(i2s_tdm->grf),
-				     "Error in rockchip,grf\n");
-
 	i2s_tdm->tx_reset = devm_reset_control_get_optional_exclusive(&pdev->dev,
 								      "tx-m");
 	if (IS_ERR(i2s_tdm->tx_reset)) {
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
