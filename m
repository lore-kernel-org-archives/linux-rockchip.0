Return-Path: <SRS0=Nc53=EX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C594C2D0E4
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 11:26:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8755D2222E
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 11:26:24 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XA/EAW2P";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="O5bBWmVT"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8755D2222E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PHxXQnWKfnqn6gxWLUZrRKwp9oK5EiLJTAaqrypNKJ8=; b=XA/EAW2PPPNNyEvO/eU4Tb7s3k
	PrXDc2oiNYAjXrF29HS1Hs6e8xxeaYnQgBDYnwUOq0FKspsKJEYWsf/aMkYzguCeQ1//e8NUIZyK0
	WbARpVBD+dfa4JeoIVUVk0fbZ8aP4McuV88pa3tK6oq2G4W2v0SkWW1XyvwcyTYu+RzTea3S45swG
	FvVDdtiGxyRE1zXfAsmspvi1QajPTyqAceVggu39IgfbzTxkW6vy8w/TKQckg3DIwBtTlAwfaNuvr
	hYAEhts27aWM63lp/uc/nJ2VWfOXBKf+EnEF0FggxOT8Pxr0GBfwBbYLCG2Wvz6GlDJMvLY64z9Sz
	os7dA7jA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kez7r-0005Yd-9m; Tue, 17 Nov 2020 11:26:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kez7m-0005WQ-5H
 for linux-rockchip@lists.infradead.org; Tue, 17 Nov 2020 11:26:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id w14so17086689pfd.7
 for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2020 03:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5QH8l3HzZjblS+KPiXb77NBbNTh6S8myLIAJDUGNsj8=;
 b=O5bBWmVTPEBh/wG/pGQE0dEyVrFSP9Ty3BF956K66kZY8Ga5Bv0ZO+dPKZdFwQnUU6
 8Re+odTtvmBPW/Pe/ey4gvN2NwnMSTVjO0THOf/mTGSSmHPJE1u1htYGpGgjUweZl0hu
 Y3d/hvn8/ZvmSbXbLF2FhktSTDJEfHaB5FbPU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5QH8l3HzZjblS+KPiXb77NBbNTh6S8myLIAJDUGNsj8=;
 b=eZtMJZqyYkBzuQ7oOAICEYuCb7vEgvuCrpQzG0ZP6GMy32Qaig4L3vJXeFM0dYO+03
 FZNiv1JEgiZGIbqpAMNAjgXA//Nj8RIt6peDq1AR5LanN7HDAKzP2dhiT87OMqTf9ZlS
 J7kiE4UYI5/PGORcIhWvYzVqUZb1xlndafJp20xqYQRfieKCLyECS3oMmiv8ASJGZfBi
 DS5tTxcuT1vWb8//E/cmWBTApdMDFMOgU9P+8l/sVkcZtgX7MjicWgGs8qmM8yYA8Qlu
 hRSCuC2UKS89X9H4IMKGH8PzcL2uu4F96Iqc4lgPqHmkKPxdFPZlkJIa42tZ3mcVrQts
 VfWA==
X-Gm-Message-State: AOAM533JEfstKz+3Pvhx55ALYJQ2TfL3DgqLaKxC/1Dgbf2P00qacwmF
 Joe/WRFzVZEpAJ6ghFY2BNTw5Q==
X-Google-Smtp-Source: ABdhPJyrnAjBQ/jtFgnI1ZSF/1TLY+kjZEhSgcrRqfC80FgaKc4a5J8gFviPhqMlAnXOMeI4QK8f7A==
X-Received: by 2002:aa7:9414:0:b029:18c:23f6:bc6d with SMTP id
 x20-20020aa794140000b029018c23f6bc6dmr18205106pfo.21.1605612370295; 
 Tue, 17 Nov 2020 03:26:10 -0800 (PST)
Received: from localhost ([100.102.99.29])
 by smtp.gmail.com with ESMTPSA id t20sm2843368pjg.25.2020.11.17.03.26.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Nov 2020 03:26:09 -0800 (PST)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: hdmi-codec: Get ELD in before reporting plugged event
Date: Tue, 17 Nov 2020 19:26:03 +0800
Message-Id: <20201117112603.210620-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201117_062614_270809_348D04B1 
X-CRM114-Status: GOOD (  14.39  )
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
Cc: alsa-devel@alsa-project.org, dianders@chromium.org,
 Srinivasa Rao <srivasam@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>,
 Takashi Iwai <tiwai@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, Rohit kumar <rohitkr@codeaurora.org>,
 tzungbi@chromium.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, dgreid@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, judyhsiao@chromium.org,
 linux-arm-kernel@lists.infradead.org, Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

In plugged callback, ELD should be updated from display driver so that
user space can query information from ELD immediately after receiving jack
plugged event.

When jack is unplugged, clear ELD buffer so that user space does not get
obsolete information of unplugged HDMI.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 sound/soc/codecs/hdmi-codec.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/sound/soc/codecs/hdmi-codec.c b/sound/soc/codecs/hdmi-codec.c
index 403d4c6a49a8..f0e0e1836000 100644
--- a/sound/soc/codecs/hdmi-codec.c
+++ b/sound/soc/codecs/hdmi-codec.c
@@ -692,10 +692,16 @@ static void plugged_cb(struct device *dev, bool plugged)
 {
 	struct hdmi_codec_priv *hcp = dev_get_drvdata(dev);
 
-	if (plugged)
+	if (plugged) {
+		if (hcp->hcd.ops->get_eld) {
+			hcp->hcd.ops->get_eld(dev->parent, hcp->hcd.data,
+					    hcp->eld, sizeof(hcp->eld));
+		}
 		hdmi_codec_jack_report(hcp, SND_JACK_LINEOUT);
-	else
+	} else {
+		memset(hcp->eld, 0, sizeof(hcp->eld));
 		hdmi_codec_jack_report(hcp, 0);
+	}
 }
 
 static int hdmi_codec_set_jack(struct snd_soc_component *component,
-- 
2.29.2.299.gdc1121823c-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
