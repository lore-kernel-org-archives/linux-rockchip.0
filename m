Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BBF2ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 15:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fO/E3VTc4ueLDDQM7ZeQvziFeTvi+fldr9/pGnp7Tq4=; b=FfZP9JKzidFOif
	l3QOcsu3794dKA8i52uq0mst/oAEwIDxJf6rq4Mcc2tnARMtiwca57l/4tGzOryFemeu+UFLVVtbq
	+lQVnSqYb6M8bh480yr3fMil+6hQx/GR9RgCAQVYVU+Y+ZjqmbgrJM4WHjFvC7znCa5NpN/9j4Xip
	wz4cYgQiKSSEnJaamcwkm0HKEM2b0+wmGSgGcaF2tjWGAw0rC9pm55WwIxMP37wJl6HTO/w1HhxgU
	sHS5mg5L4hOc7j0afbRCLE3V1fFyc3AsVd2l5UvY9GmsB0zZTEqIjUuVGV+IrFonbN4fjTj6WfFIy
	uLGYyicLP76KCxPJCy3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX2w-00Cl70-H2; Mon, 31 Oct 2022 15:49:54 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opX2u-00Ckya-CH
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 15:49:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667231392; x=1698767392;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=rgsxk/6r32PcnLFA3JXrkPIS2/t0MfvefVFGqwYtZGE=;
  b=P5Q63/byZOS/Q+KIfu9z8MzwhQy4+zEPeJtccZcTG1Ahd2mzgxG53/ae
   PrFgkda4coYj31QZe3hyTI8z2MLZ9EOyT49JNYT4FHTNk/gDDzQwPDKDI
   Vbfbj1CxLKhha+X7q531CEE4Sb6MC8NPH0pmUfwiNIltGGJoM/LFAbc3b
   U6j3yVtJxOZS2p/u+Y9uI7XovBXq9nJpwxIGpfmB+co1JVVFkpD+nGJi5
   P+O/8jKBLHPli+q/2/RMBY5cYpSurrhPZR6zj8pMxl5rC0Btetu2e479J
   wLaKwxjQPY8A9EKvYvn6on+x3fgh6wrJL64hpdSfRLcwzpXKapKLHdYQb
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="288645123"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="288645123"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2022 08:49:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="776178930"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; 
   d="scan'208";a="776178930"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
  by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2022 08:49:48 -0700
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
Subject: [PATCH 5/7] ASoC: amd: Drop da7219_aad_jack_det() usage
Date: Mon, 31 Oct 2022 17:02:25 +0100
Message-Id: <20221031160227.2352630-6-cezary.rojewski@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031160227.2352630-1-cezary.rojewski@intel.com>
References: <20221031160227.2352630-1-cezary.rojewski@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_084952_502390_39F38C39 
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
 sound/soc/amd/acp-da7219-max98357a.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/amd/acp-da7219-max98357a.c b/sound/soc/amd/acp-da7219-max98357a.c
index ef1b4cefc273..375417bd7d6e 100644
--- a/sound/soc/amd/acp-da7219-max98357a.c
+++ b/sound/soc/amd/acp-da7219-max98357a.c
@@ -21,7 +21,6 @@
 
 #include "acp.h"
 #include "../codecs/da7219.h"
-#include "../codecs/da7219-aad.h"
 #include "../codecs/rt5682.h"
 
 #define CZ_PLAT_CLK 48000000
@@ -82,7 +81,7 @@ static int cz_da7219_init(struct snd_soc_pcm_runtime *rtd)
 	snd_jack_set_key(cz_jack.jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);
 	snd_jack_set_key(cz_jack.jack, SND_JACK_BTN_3, KEY_VOICECOMMAND);
 
-	da7219_aad_jack_det(component, &cz_jack);
+	snd_soc_component_set_jack(component, &cz_jack, NULL);
 
 	return 0;
 }
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
