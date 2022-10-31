Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0D38FA3741
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 15:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrC/4HKW/67zXEd0J82En+qk8QAL7D9uSa+/Wfy/rGk=; b=4YKaySoEC8lnY1
	wemOtMswynEpaYGmorQ2S9Cd7FyA/GBDfRtGbRlAvJSVawnEVj8l2AWyWsp7gNtTuDXT1+OesLJVv
	l/PNqqOSJ2qgFiGfRkXIsJLZDs2hCS4bWT8ou5vR3miEIqYzVaDGOXf+C2DG9siKbpnXx0Vun0DXw
	vhk59BFJ3CDGvrhuB80FAP1WKZUZVinbs+x3v7eI5H2ePTcStiBLIfm2cM0VVyqDsjcBpv9KAvEaa
	lrp6N+tdT7RJIq4xMhurdFSIKynWerJ6VuFukmgHsvREr2kydg13Pfi+CN7T2MGu4HjgsAaoHiYU6
	pAuSEdexrEbN3V8RMxIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX2z-00ClA2-WF; Mon, 31 Oct 2022 15:49:58 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX2x-00Ckya-1x
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 15:49:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667231394; x=1698767394;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=tT9hePL8GvHil/QRyJUeqhX3qTF0HyqiJPv0VHYrHvk=;
  b=cL8ij7CIp3CKXdv7CCWY4PzsTM731RzhxbNlXmimZICNaD4NZ6rGH2qo
   zI9tGSrZ2LB0/Oo8dpJxbguYKBdgUWhDb/H+h5N7I+JbylWZpUq5cKoCC
   SeIUMTJzFCd52pFuk9ZMEueJ9245OOrQqZgZJFMWbzf9M6AkOWGWGKsDm
   RQdoOM2b/Yp2P5BEM/+io0Xvw6nyqpEuSIu7g+FQNv1i82aAxaapHxX3S
   xyV61syEdSlER1TD7ce4PRlHOZzUcM9ibnmarxvXLNe3BrIby6X9dWHis
   KbbOjPulHgkUGzQtTYt8C2zKiMBeSl/FHdOrKWtPzNBNjNWxFChi0MnSJ
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="288645139"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="288645139"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2022 08:49:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="776178940"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="776178940"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
  by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2022 08:49:51 -0700
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
Subject: [PATCH 6/7] ASoC: Intel: avs: Drop da7219_aad_jack_det() usage
Date: Mon, 31 Oct 2022 17:02:26 +0100
Message-Id: <20221031160227.2352630-7-cezary.rojewski@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031160227.2352630-1-cezary.rojewski@intel.com>
References: <20221031160227.2352630-1-cezary.rojewski@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_084955_148771_0FA0832B 
X-CRM114-Status: GOOD (  10.26  )
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
 sound/soc/intel/avs/boards/da7219.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/intel/avs/boards/da7219.c b/sound/soc/intel/avs/boards/da7219.c
index 503a967a1c3a..ad86cef101cc 100644
--- a/sound/soc/intel/avs/boards/da7219.c
+++ b/sound/soc/intel/avs/boards/da7219.c
@@ -16,7 +16,6 @@
 #include <sound/soc-dapm.h>
 #include <uapi/linux/input-event-codes.h>
 #include "../../../codecs/da7219.h"
-#include "../../../codecs/da7219-aad.h"
 
 #define DA7219_DAI_NAME		"da7219-hifi"
 
@@ -110,7 +109,7 @@ static int avs_da7219_codec_init(struct snd_soc_pcm_runtime *runtime)
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_3, KEY_VOICECOMMAND);
 
-	da7219_aad_jack_det(component, jack);
+	snd_soc_component_set_jack(component, jack, NULL);
 
 	return 0;
 }
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
