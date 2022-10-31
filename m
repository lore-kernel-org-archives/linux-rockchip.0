Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA4AEFA3741
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 15:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZjDanLNeFxOtfzCyHvAEcpDFzTNOJE7p8o03gyrRims=; b=SP4DeaXIGupFoo
	v5Nnyoq++5w9eXF1XbJ5ifl5C5DupK44WVT+nYP0mLCPWAQuIWjFZmqGVOqQGQ3lIJipVWN03fxoc
	KgpM11LqmOiPEMK1F0Z8JdgSvKNZXeb1PFJg8tfqHVfeSlgnkHWGKc9URawb0y90AhGHewIhZ+w4w
	5Im2gZMvnNWWMpAZgh+6XqHDwMt62owwnyjrkF1/To+KsPc/bB7ksU4J8LAu/ld6eOPmlnsh1pmcs
	QlDn6iZJ4x42utw2s5p85KL/n+6o7n+EaErbCLZx7RNnk9dOwtqXkpaF8YxTMchjnNVCUk/teZ9tn
	6DHJVKKlecgI8qfiQU0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX2r-00Cl3N-FI; Mon, 31 Oct 2022 15:49:49 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX2p-00Ckya-Ic
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 15:49:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667231387; x=1698767387;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=PPsobXz7PwRLli089/iR1UgdapPNYt2Ba6WY9lRPD5w=;
  b=EH6VSN2dndAH3i07NY+XNOSV6o+bbDCECsJeBYRZeBryMTKe7QZYZroq
   FvLSH9MZoL1G9VCpOxrKyJ0QU3fCCvBPQpdr846kxe1OXspX0LpnXN14Y
   mHXVK50rwcGFGHF4nEy7DPOwqlTFbPtk1ftjTDjvr+X0gH4bZs/cvw3S7
   4Tfs2XZb2lUfxpDnkQ/F//noASIq2VjZ1a8wkf/v+LAXvCK9XJwR6/ouy
   T5NiOOHlzGPEYxsdIHdo44XkQiqnL8Aj5n56Qu/rqQgWvOsCGoExev0Tr
   AkGYgmGkfZJQvZC5Y3LHUmKzzqW3aYPL+wKM/DDL2EnIdcARGOfk4jyWB
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="288645104"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="288645104"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2022 08:49:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="776178907"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="776178907"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
  by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2022 08:49:42 -0700
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
Subject: [PATCH 3/7] ASoC: mediatek: Drop da7219_aad_jack_det() usage
Date: Mon, 31 Oct 2022 17:02:23 +0100
Message-Id: <20221031160227.2352630-4-cezary.rojewski@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031160227.2352630-1-cezary.rojewski@intel.com>
References: <20221031160227.2352630-1-cezary.rojewski@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_084947_664600_876EBD7A 
X-CRM114-Status: GOOD (  11.21  )
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
 sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c        | 3 +--
 sound/soc/mediatek/mt8186/mt8186-mt6366-da7219-max98357.c | 4 ++--
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c b/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
index 9f22d3939818..97dbb31c412e 100644
--- a/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
+++ b/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
@@ -14,7 +14,6 @@
 #include <sound/pcm_params.h>
 #include <sound/soc.h>
 
-#include "../../codecs/da7219-aad.h"
 #include "../../codecs/da7219.h"
 #include "../../codecs/rt1015.h"
 #include "../common/mtk-afe-platform-driver.h"
@@ -592,7 +591,7 @@ mt8183_da7219_max98357_headset_init(struct snd_soc_component *component)
 	snd_jack_set_key(
 		priv->headset_jack.jack, SND_JACK_BTN_3, KEY_VOICECOMMAND);
 
-	da7219_aad_jack_det(component, &priv->headset_jack);
+	snd_soc_component_set_jack(component, &priv->headset_jack, NULL);
 
 	return 0;
 }
diff --git a/sound/soc/mediatek/mt8186/mt8186-mt6366-da7219-max98357.c b/sound/soc/mediatek/mt8186/mt8186-mt6366-da7219-max98357.c
index cfca6bdee834..db5d2bec7a95 100644
--- a/sound/soc/mediatek/mt8186/mt8186-mt6366-da7219-max98357.c
+++ b/sound/soc/mediatek/mt8186/mt8186-mt6366-da7219-max98357.c
@@ -11,10 +11,10 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/pm_runtime.h>
+#include <sound/jack.h>
 #include <sound/pcm_params.h>
 #include <sound/soc.h>
 
-#include "../../codecs/da7219-aad.h"
 #include "../../codecs/da7219.h"
 #include "../../codecs/mt6358.h"
 #include "../common/mtk-afe-platform-driver.h"
@@ -100,7 +100,7 @@ static int mt8186_da7219_init(struct snd_soc_pcm_runtime *rtd)
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_3, KEY_VOICECOMMAND);
 
-	da7219_aad_jack_det(cmpnt_codec, &priv->headset_jack);
+	snd_soc_component_set_jack(cmpnt_codec, &priv->headset_jack, NULL);
 
 	return 0;
 }
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
