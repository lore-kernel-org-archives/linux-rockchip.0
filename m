Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BE09C25B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 15:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wC5SePIyGMSNimI9ZPZ1SijuBFD1V70819XZEg/vFO8=; b=0wqHVEs2vsGUGr
	DRzkejIr9E8eI/vy4foWf5Y4fjGM9StaCQ4f9q+CHE0uQae+fsCVlwEaytjSXRL4Cu62TtbMh0NYj
	3/V0Z+RQILZ5J6Rddxk8NV8NGNsuNUGMhwa5YngsZAcfyMpjDCQ6rKnzObT+C0SOE31TFXcdzPEAI
	KGCCjFpuJB4bBnzmc7JlOSh1/BZRXQIMMoUyvkis6G5nvlrurKVgwadm5mV295LcYwHk6I5vrIf1r
	GX2PiW4FzE6Qdju1NCU+W3kfOPV5RzDxiK9eNrIyP+JOpReyVqr/VsOpciMGzacXfKfFwgtnPPF85
	M2/Rs786u1ywSUB5Uqgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD4E6-0000000Agte-2MPW;
	Fri, 31 May 2024 15:31:30 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD4DZ-0000000AgVC-3R6H;
	Fri, 31 May 2024 15:31:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717169457; x=1748705457;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=SGwfez3lrOf2K/YTWirwKNhphy+WK2Ug6UhveRqerj0=;
  b=j/f7YWimoLjiMqdaC5XY8cstSdPJedBIqBYUZ/DnKAPvgN0IDL+SvKeL
   +7qLiOs8ughKATjaneOWwsvNmvYb6/O2j9JgDjuE1kCyta0U9S9vBN9sc
   61k1Imqdd5DbWJNH4N3J5TcMQh1/1XJejYeHpXDq9IWtELnHvbnvybrP3
   QPX0PZVy3OfoInbQC6owALHCAcDNEjdeQaf1KjP9pV1ZT9gp4HxvnX5ab
   KsjOb2aN0bQSIk+k5lGoUMUg0ukr0eHQV9vLdCJdjHuIoUCd8qC2Ie+Up
   ulwqQYBVTfTfnhRsIO/kdapo5/5qxuj0cUBMG1oDFMiOusUnFweHU2PRb
   Q==;
X-CSE-ConnectionGUID: eoSzWBHuR6OfjL/jMC6dlw==
X-CSE-MsgGUID: IZGxwW7xQzetwbe8bqcZbQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="24348169"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; 
   d="scan'208";a="24348169"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2024 08:30:57 -0700
X-CSE-ConnectionGUID: R+7+mf/zRxCcV6DbRi4D6A==
X-CSE-MsgGUID: +8jCcKrWQP6iKzrYNSNOUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; 
   d="scan'208";a="73678789"
Received: from black.fi.intel.com ([10.237.72.28])
  by orviesa001.jf.intel.com with ESMTP; 31 May 2024 08:30:49 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id EA704679; Fri, 31 May 2024 18:30:39 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Charles Keepax <ckeepax@opensource.cirrus.com>,
	Rob Herring <robh@kernel.org>,
	Weidong Wang <wangweidong.a@awinic.com>,
	Mark Brown <broonie@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Shenghao Ding <shenghao-ding@ti.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Alper Nebi Yasak <alpernebiyasak@gmail.com>,
	Chancel Liu <chancel.liu@nxp.com>,
	linux-sound@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	patches@opensource.cirrus.com,
	linuxppc-dev@lists.ozlabs.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	David Rhodes <david.rhodes@cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Kevin Lu <kevin-lu@ti.com>,
	Baojun Xu <baojun.xu@ti.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: [PATCH v2 5/6] ASoC: generic: Replace of_gpio.h by proper one
Date: Fri, 31 May 2024 18:29:32 +0300
Message-ID: <20240531153038.1590171-6-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1336.g36b5255a03ac
In-Reply-To: <20240531153038.1590171-1-andriy.shevchenko@linux.intel.com>
References: <20240531153038.1590171-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_083058_020914_01304EBC 
X-CRM114-Status: GOOD (  11.10  )
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

of_gpio.h is deprecated and subject to remove.
The driver doesn't use it directly, replace it
with what is really being used.

Acked-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 sound/soc/generic/audio-graph-card2-custom-sample.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/generic/audio-graph-card2-custom-sample.c b/sound/soc/generic/audio-graph-card2-custom-sample.c
index 1b6ccd2de964..8e5a51098490 100644
--- a/sound/soc/generic/audio-graph-card2-custom-sample.c
+++ b/sound/soc/generic/audio-graph-card2-custom-sample.c
@@ -5,8 +5,9 @@
 // Copyright (C) 2020 Renesas Electronics Corp.
 // Copyright (C) 2020 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
 //
+#include <linux/device.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/of_gpio.h>
 #include <linux/platform_device.h>
 #include <sound/graph_card.h>
 
-- 
2.43.0.rc1.1336.g36b5255a03ac


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
