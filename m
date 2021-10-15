Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF510C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 21:07:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 79FBD611C8
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 21:07:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 79FBD611C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GG0X4qK3LVBgBFFeexnaXjhZ5RR2mKG681Papl16jcg=; b=rZ5fi8+9vi0S3P
	7nPsitEdYb8R3Oh57jvRVRq8XhR8gIXEnLOTkkM4QyqKex1ihnOjnJkdQSV+xhXgRxpfGBSMKxAjj
	GGRRJin7J0xMGnq0djoLJ0hSXfE5ND/o8ur9vkbJFBie/mvv3ozvr8l+xoP7OPF3HHYLHxjnlRolo
	Z19VFOGbEIfmIP32XNh/8kamoT7sTrDhLqNNGKEB/mwzOfk16vGmF+jzPmN/paJIg/9NWFQSqf/Ri
	5+OY7yY2yRmxNxHQBgZoFslIsjni0p9FoKj7q42rNcYjNCAzYIf/jlxnQbLJzo5thIv23MZf/Twbk
	nbTbipsJPEdVos6qhe4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbUQf-008m15-23; Fri, 15 Oct 2021 21:07:49 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbUQc-008m04-74; Fri, 15 Oct 2021 21:07:47 +0000
Received: by mail-lf1-x133.google.com with SMTP id n8so46586111lfk.6;
 Fri, 15 Oct 2021 14:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bC5/do6YaE4lPDo0l97sBVrMnwWkBfvui2f3ar33Hc4=;
 b=eYZpMby4iGA+yh0NGF+8l+PJgizeDoLcmjeHyV4wtpwUUMvIQ3AXzmd7sgsMKFaAEZ
 HGwEWFsnA97BC5nK+vWjNWmsqMZ1Im1rXEY1pB+nOsZ6WjOO8J5sIu6bld0z5TfTDJp4
 nW8LdiaYhaDDgRW3w1oYL3q+CgM6oBiybdB+JAvQLP5CDM1kzoLNiqOdZ5+q9aUqW5Fh
 LjA+irP2bBP9CUjvT5nVex/k8Ng3w7CGm6lIea3dkjWeVYyIajfpVaz4erDghnSWB9QH
 1MWXfqPPPWTdbi+W92psmMlulWP2oV2+G6KaHPsRCyKzXxGhzPE7WaF0VB4CIkc9zhv7
 9yUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bC5/do6YaE4lPDo0l97sBVrMnwWkBfvui2f3ar33Hc4=;
 b=HLaGKyhTlA63QZJT/HwCR3A7xis9HGOq+5dsG6V9CUdcYg0h/JfUqb1i2aTqMVIhk2
 SEiNWM24gFCoRXD9UO0QT677mrD+qlA0eP2F482w4MCRMi2aTa8NZ8WGua4GvcZ2yWcu
 c6H8PRE9mK+9nBLfzRrXr0T5FuYpW/JhCqRkWQJAtJXh1+/LbuzfnK4imcbCpxiv2ekv
 WZmM6or8txTG04E/goVg0fp0N27JqBatXd7xEN/vIJpOq86WzmRkjXK4r3rabhlBeeyu
 iA3App6q3mcl8FrrOnu1zGJfxv2mCGUF8MI3sMC3e7ol13a4UFD6CmcxtIwGqt1VlalS
 F0RQ==
X-Gm-Message-State: AOAM533alQC3FUDNBbGG1BSjBFsZLZDQU0cU4U0VfJwBg/MFfrG2PZGF
 vJsPVMsEojCKpPzoF7Khm1M=
X-Google-Smtp-Source: ABdhPJwkecQzQcx4sJp1365mMubW5NhJvbb3QNHQkc1WY9qZz7N2viBUYDjQts57NocZZ1Q8Ya36dg==
X-Received: by 2002:a2e:bc03:: with SMTP id b3mr15169664ljf.54.1634332063982; 
 Fri, 15 Oct 2021 14:07:43 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id a29sm125876ljq.37.2021.10.15.14.07.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 14:07:43 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: rockchip: i2s-tdm: Fix refcount test
Date: Fri, 15 Oct 2021 23:07:29 +0200
Message-Id: <20211015210730.308946-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_140746_296783_825AF1A0 
X-CRM114-Status: GOOD (  16.26  )
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

During development of V5 of the i2s-tdm patch series, I replaced
the atomic refcount with a regular integer, as it was only ever
accessed within a spinlock.

Foolishly, I got the semantics of atomic_dec_and_test wrong, which
resulted in a test for 0 actually becoming a test for >0.

The result was that setting the audio frequency broke; switching
from 44100 Hz audio playback to 96000 Hz audio playback would
garble the sound most unpleasantly.

Fix this by checking for --refcount == 0, which is what it should
have been all along.

Fixes: 081068fd6414 ("ASoC: rockchip: add support for i2s-tdm controller")
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 396277eaa417..5d3abbada72a 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -408,7 +408,7 @@ static void rockchip_snd_txrxctrl(struct snd_pcm_substream *substream,
 		else
 			rockchip_disable_rde(i2s_tdm->regmap);
 
-		if (--i2s_tdm->refcount) {
+		if (--i2s_tdm->refcount == 0) {
 			rockchip_snd_xfer_clear(i2s_tdm,
 						I2S_CLR_TXC | I2S_CLR_RXC);
 		}
-- 
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
