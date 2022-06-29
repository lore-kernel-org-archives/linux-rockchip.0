Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 906AFC43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jun 2022 08:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qcd/M92714T1vBcyhPdS3zXBDnOgR7dHKf8l9dJBuUA=; b=q/s5h66714azu1
	y/cjegHNPGMsZojLZdpvy5sosFKI6V8i618atXjodq5ocN4lN78SgIbhOphZV/mfURv2txocP4HVC
	0OKmNfTUiYQmxZ1AjJc770wBqOSQeXcF7k/DaAahG9VEhl30vaxF9QbzBKWOI348VDFOvIqaMhAic
	HoEJt10xSb765+sn/y6a0pONVMrhkQq/BGu1U5ZsEolMstlFuDDiG/0jiQRk6yhjLgtDBW4lm7xX5
	oFJEMRXCWeipHtTmiFM8do3+P9glxVLRSuat9I93u1klN2Bf+FnAQzXgOSKkKGAMZVEL3M9/iKb54
	xHm0yPR/TybO6NhWCCZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Sgz-00AHgV-S9; Wed, 29 Jun 2022 08:04:57 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6SgY-00AHTq-NU
	for linux-rockchip@lists.infradead.org; Wed, 29 Jun 2022 08:04:34 +0000
Received: by mail-pl1-x631.google.com with SMTP id x20so7767972plx.6
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jun 2022 01:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tphUaJRWmGfbf+rcQQvvdTAaHw/IgKryhTSbMG303fk=;
        b=kbp3SymyDcrr+av2CLzAaJ76U24aRBFW6qsAWMQJGR2htBnuWGvLCgalt6z/9/NmEc
         NYAfdcJUNOfMQCpCkh4e9mKK6tdsIRgQA3MxiqiHyNqa8GjPRZJajLDPkoWHecHitd0N
         Xx9kXZJ5tjyhVlfINrOFta2j0NZ+Epkj0WilE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tphUaJRWmGfbf+rcQQvvdTAaHw/IgKryhTSbMG303fk=;
        b=LaLWDmXPVZTTonxlrc32A4ld1K/TDx2u1LkA6OplIrGhiFK0Giy92LhDTbK4YuOUqb
         0Q4yFY3sQdjVjPLSZ9vXI6NWFWQqGFDpOGu/6TOYx+6rKTU4nJo+xrBWx2dyrdWjF1gx
         CYfqpeWCjr98seDuifVZF7prOZMKMwqWLipXkI9UPOsQjaAUV7TzsJWdB0Wk8NyUEiDM
         uJ09UmlRYrFKs26TlAAsCA4qWupGMZ/G7SmD2ycxscsasmBOUQHcEQxl1vW5pwG9oY2s
         MhtUdcyRIU17PTZeF0GrjDVh+utwUZPLT7xZJUAUxGTtsnTgFQEMnXGQF0JKDh/Wgl5F
         ZMJQ==
X-Gm-Message-State: AJIora9u3lMZi2kSx64J2fSXqt+qOjoizPOuE5KZbMWjLPDQSDra+nAk
	7zlfBXxYJip9vQC9Q0YmP1TBkA==
X-Google-Smtp-Source: AGRyM1vD7+R3YGDCxJmwjPFiWHdqVH/Qs7cs5QFTjqLhaftK9VZtL0He5C1/fsJNXhqqZ4K3pDox+A==
X-Received: by 2002:a17:902:7481:b0:16b:7a53:3b4c with SMTP id h1-20020a170902748100b0016b7a533b4cmr8071158pll.54.1656489869151;
        Wed, 29 Jun 2022 01:04:29 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id 11-20020a63164b000000b0040d4c8e335csm10579256pgw.75.2022.06.29.01.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 01:04:28 -0700 (PDT)
From: Judy Hsiao <judyhsiao@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Chen-Yu Tsai <wenst@chromium.org>,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v1 1/2] ASoC: rockchip: i2s: Remove unwanted dma settings in rockchip_i2s_probe
Date: Wed, 29 Jun 2022 08:04:21 +0000
Message-Id: <20220629080421.2427933-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.0.rc0.161.g10f37bed90-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_010430_785559_0AABABE8 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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

Remove the unwanted dma settings in rockchip_i2s_probe.

Fixes: 44f362c2cc6d ("ASoC: rockchip: i2s: switch BCLK to GPIO")
Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 sound/soc/rockchip/rockchip_i2s.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 0ed01624a2db..285b6455be28 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -817,14 +817,6 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 
 	i2s_pinctrl_select_bclk_off(i2s);
 
-	i2s->playback_dma_data.addr = res->start + I2S_TXDR;
-	i2s->playback_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
-	i2s->playback_dma_data.maxburst = 4;
-
-	i2s->capture_dma_data.addr = res->start + I2S_RXDR;
-	i2s->capture_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
-	i2s->capture_dma_data.maxburst = 4;
-
 	dev_set_drvdata(&pdev->dev, i2s);
 
 	pm_runtime_enable(&pdev->dev);
-- 
2.37.0.rc0.161.g10f37bed90-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
