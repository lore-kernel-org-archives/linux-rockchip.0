Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEBBCC54EAA
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jan 2023 18:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MaplCAifc9UFFajKjKf/gVVm+FAhXLOR3pWFmQ5QkQQ=; b=n0oxdbrRBug4kO
	LVwfwFQBVHCrcsyAtgjthM2eFO5XfSvwatkS0adGcLc/fjt3nBgbhG55wGNUHDYZ8xOprsQv5S1RA
	tdRBdN/6JOn3+ynjWI9RUIkFHD9hj0rYyngTiRpgAhRqY0/o3h6WXe/y9Fd9ylCP+cu0bNtRoGh8k
	GBJ6HlAiA3wpPZiCFvPEYhAOsyjw4I7u+oH966QoQ4muFMUHKwfTZDObEwyP2Ppr+qYBik91JOBi1
	wDYgOuJ8hgU17ob+RIRfmBxDlA9elv0YeyNnzP7abAnsQ/JCNxTwZpNYdEkdl4RXkZz1NcfovNQJW
	jP39SYOdisKr8UaonBRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKNrq-004vrL-CA; Tue, 24 Jan 2023 18:17:58 +0000
Received: from [2601:1c2:d80:3110::9307] (helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKNrf-004vpH-11; Tue, 24 Jan 2023 18:17:47 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	alsa-devel@alsa-project.org,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] ASoC: Kconfig: fix spelling of "up to"
Date: Tue, 24 Jan 2023 10:17:46 -0800
Message-Id: <20230124181746.19028-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
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

Fix spelling in sound/soc/ Kconfig files:
s/upto/up to/
(reported by codespell)

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org
Cc: Jaroslav Kysela <perex@perex.cz>
Cc: Takashi Iwai <tiwai@suse.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
---
 sound/soc/rockchip/Kconfig |    2 +-
 sound/soc/tegra/Kconfig    |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff -- a/sound/soc/rockchip/Kconfig b/sound/soc/rockchip/Kconfig
--- a/sound/soc/rockchip/Kconfig
+++ b/sound/soc/rockchip/Kconfig
@@ -13,7 +13,7 @@ config SND_SOC_ROCKCHIP_I2S
 	select SND_SOC_GENERIC_DMAENGINE_PCM
 	help
 	  Say Y or M if you want to add support for I2S driver for
-	  Rockchip I2S device. The device supports upto maximum of
+	  Rockchip I2S device. The device supports up to maximum of
 	  8 channels each for play and record.
 
 config SND_SOC_ROCKCHIP_I2S_TDM
diff -- a/sound/soc/tegra/Kconfig b/sound/soc/tegra/Kconfig
--- a/sound/soc/tegra/Kconfig
+++ b/sound/soc/tegra/Kconfig
@@ -144,7 +144,7 @@ config SND_SOC_TEGRA210_SFC
 	  Config to enable the Sampling Frequency Converter (SFC) which
 	  converts the sampling frequency of input signal to another
 	  frequency. It supports sampling frequency conversion of streams
-	  upto 2 channels (stereo).
+	  up to 2 channels (stereo).
 	  Say Y or M if you want to add support for Tegra210 SFC module.
 
 config SND_SOC_TEGRA210_AMX
@@ -171,7 +171,7 @@ config SND_SOC_TEGRA210_MIXER
 	tristate "Tegra210 Mixer module"
 	help
 	  Config to enable the Mixer module which can help to mix multiple
-	  audio streams. It supports mixing of upto 10 input streams,
+	  audio streams. It supports mixing of up to 10 input streams,
 	  where each stream can contain maximum of 8 channels. It supports
 	  5 output each of which can be a mix of any combination of 10
 	  input streams.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
