Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00390FA3741
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 15:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1YQwZKNamNXjHLZBEqV6Hm6B59lkIl3o7bsxC5H0i0=; b=PHkzkFp6XGNV5N
	1XG/hY68DKh6W4haQ4V5Y/QOwAyJCZTteti+fkAc83Rs/NZclNoFk1pDSfsUWd7mx6ZmJPmFBqYPA
	GrSn7N+UFhBaj4bsAGzQNVN6c2iyqcM/Y+1uj1DRvWjje6hcZP9M/GCHevMNg1YxleNlpf9NVmVzl
	AiNrWkzwd+zGps1LTR57P0308IRxJ7HI1hs1GXNsZqhKy+0MavbXFOD6S9FuKnoHT+TchZRQqUIOy
	Gnz03BFWvBFDKjOqicnL+U4PMLS0dD7EY37YRC6KkS/yzquujaD2BVexjWo2HnwGypQbCaWYQxmxF
	9n1brUmJBM+Roel+5MRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX2n-00Cl0P-ET; Mon, 31 Oct 2022 15:49:45 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX2k-00Ckya-73
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 15:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667231382; x=1698767382;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=zVza61ODT+oGt5B80NGqLzU3XwebMfpluHyEQSk6bS8=;
  b=DySkUeBrXgkEqgex0ER2Ep8R2AZTbO+WP7oE9Z2gXnfA19Jq3b+mT6P+
   ODxyC52erVohTMBSd0X+nLqyd9+sr5xmqVPJTTMRsc9oFyqYS4bmkRYxe
   reovuQqFnzaYx7wsdkXyJi45RzWxLzyhEoDYCyHWR6S5WDOI8Gh9pePwo
   fw4GUsGSyrCS7aZXnNsuApLsbIZEAVFcF22yTuZe6bbmEM1Yp+1H3K5VS
   BvUAIcbV621GmGKyDgedVimwuE4brqsgilfADnPFLkLSJIKOlulUxZnbJ
   gXZ5gJJeZ9y1YFiZ2y8DQP5VG05A6gI6YaBfi0uu1JMt0wHK/hcJQ0lvE
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="288645091"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="288645091"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2022 08:49:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="776178900"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="776178900"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
  by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2022 08:49:38 -0700
From: Cezary Rojewski <cezary.rojewski@intel.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org
Cc: tiwai@suse.com,
	perex@perex.cz,
	amadeuszx.slawinski@linux.intel.com,
	pierre-louis.bossart@linux.intel.com,
	hdegoede@redhat.com,
	lgirdwood@gmail.com,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Syed.SabaKareem@amd.com,
	Vijendar.Mukunda@amd.com,
	AjitKumar.Pandey@amd.com,
	jiaxin.yu@mediatek.com,
	trevor.wu@mediatek.com,
	Cezary Rojewski <cezary.rojewski@intel.com>
Subject: [PATCH 2/7] ASoC: Intel: Drop da7219_aad_jack_det() usage
Date: Mon, 31 Oct 2022 17:02:22 +0100
Message-Id: <20221031160227.2352630-3-cezary.rojewski@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031160227.2352630-1-cezary.rojewski@intel.com>
References: <20221031160227.2352630-1-cezary.rojewski@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_084942_333668_F5F89CD5 
X-CRM114-Status: GOOD (  11.51  )
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

Do not access the internal function directly, do so through
component->set_jack() instead.

Signed-off-by: Cezary Rojewski <cezary.rojewski@intel.com>
---
 sound/soc/intel/boards/bxt_da7219_max98357a.c | 3 +--
 sound/soc/intel/boards/kbl_da7219_max98357a.c | 3 +--
 sound/soc/intel/boards/kbl_da7219_max98927.c  | 3 +--
 sound/soc/intel/boards/sof_da7219_max98373.c  | 4 ++--
 4 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/sound/soc/intel/boards/bxt_da7219_max98357a.c b/sound/soc/intel/boards/bxt_da7219_max98357a.c
index 7c6c95e99ade..c593995facaa 100644
--- a/sound/soc/intel/boards/bxt_da7219_max98357a.c
+++ b/sound/soc/intel/boards/bxt_da7219_max98357a.c
@@ -19,7 +19,6 @@
 #include <sound/soc-acpi.h>
 #include "../../codecs/hdac_hdmi.h"
 #include "../../codecs/da7219.h"
-#include "../../codecs/da7219-aad.h"
 #include "../common/soc-intel-quirks.h"
 #include "hda_dsp_common.h"
 
@@ -259,7 +258,7 @@ static int broxton_da7219_codec_init(struct snd_soc_pcm_runtime *rtd)
 	snd_jack_set_key(broxton_headset.jack, SND_JACK_BTN_3,
 			 KEY_VOICECOMMAND);
 
-	da7219_aad_jack_det(component, &broxton_headset);
+	snd_soc_component_set_jack(component, &broxton_headset, NULL);
 
 	snd_soc_dapm_ignore_suspend(&rtd->card->dapm, "SoC DMIC");
 
diff --git a/sound/soc/intel/boards/kbl_da7219_max98357a.c b/sound/soc/intel/boards/kbl_da7219_max98357a.c
index 329457e3e3a2..18365ce6bcba 100644
--- a/sound/soc/intel/boards/kbl_da7219_max98357a.c
+++ b/sound/soc/intel/boards/kbl_da7219_max98357a.c
@@ -19,7 +19,6 @@
 #include <sound/soc.h>
 #include "../../codecs/da7219.h"
 #include "../../codecs/hdac_hdmi.h"
-#include "../../codecs/da7219-aad.h"
 
 #define KBL_DIALOG_CODEC_DAI "da7219-hifi"
 #define KBL_MAXIM_CODEC_DAI "HiFi"
@@ -207,7 +206,7 @@ static int kabylake_da7219_codec_init(struct snd_soc_pcm_runtime *rtd)
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_1, KEY_VOLUMEUP);
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_3, KEY_VOICECOMMAND);
-	da7219_aad_jack_det(component, &ctx->kabylake_headset);
+	snd_soc_component_set_jack(component, &ctx->kabylake_headset, NULL);
 
 	ret = snd_soc_dapm_ignore_suspend(&rtd->card->dapm, "SoC DMIC");
 	if (ret)
diff --git a/sound/soc/intel/boards/kbl_da7219_max98927.c b/sound/soc/intel/boards/kbl_da7219_max98927.c
index 362579f25835..ad4223fee0c5 100644
--- a/sound/soc/intel/boards/kbl_da7219_max98927.c
+++ b/sound/soc/intel/boards/kbl_da7219_max98927.c
@@ -19,7 +19,6 @@
 #include <sound/soc.h>
 #include "../../codecs/da7219.h"
 #include "../../codecs/hdac_hdmi.h"
-#include "../../codecs/da7219-aad.h"
 
 #define KBL_DIALOG_CODEC_DAI	"da7219-hifi"
 #define MAX98927_CODEC_DAI	"max98927-aif1"
@@ -382,7 +381,7 @@ static int kabylake_da7219_codec_init(struct snd_soc_pcm_runtime *rtd)
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_3, KEY_VOICECOMMAND);
 
-	da7219_aad_jack_det(component, &ctx->kabylake_headset);
+	snd_soc_component_set_jack(component, &ctx->kabylake_headset, NULL);
 
 	return 0;
 }
diff --git a/sound/soc/intel/boards/sof_da7219_max98373.c b/sound/soc/intel/boards/sof_da7219_max98373.c
index e048e789e633..740aa11cb019 100644
--- a/sound/soc/intel/boards/sof_da7219_max98373.c
+++ b/sound/soc/intel/boards/sof_da7219_max98373.c
@@ -7,13 +7,13 @@
 
 #include <linux/input.h>
 #include <linux/module.h>
+#include <sound/jack.h>
 #include <sound/pcm.h>
 #include <sound/pcm_params.h>
 #include <linux/platform_device.h>
 #include <sound/soc.h>
 #include <sound/soc-acpi.h>
 #include "../../codecs/da7219.h"
-#include "../../codecs/da7219-aad.h"
 #include "hda_dsp_common.h"
 
 #define DIALOG_CODEC_DAI	"da7219-hifi"
@@ -184,7 +184,7 @@ static int da7219_codec_init(struct snd_soc_pcm_runtime *rtd)
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_1, KEY_VOLUMEUP);
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_3, KEY_VOICECOMMAND);
-	da7219_aad_jack_det(component, jack);
+	snd_soc_component_set_jack(component, jack, NULL);
 
 	return ret;
 }
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
