Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3702DC25B74
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 May 2024 23:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2jtsj2IvJ4vN7VVN/YKxbwD07aMH/5qsSvZtpZDVrw=; b=0sDDQDNrJKoV+Y
	vMyGCm3dfUjiwtZu9w1KiKiY5GtS/JoBRKgXyIHXb6solbim78st2BMpeu9Pvp6ikmcYEj6+d09xx
	Ki6Qkh0sm3PLtibbNnqPweF8nEv2MLe2KZWNyiRrvZcWQF/+r6/IvffbcycirnO/blAznPt5Le1TL
	6pQ1tm18bX71cL/rXn4aokbLEbbWkEh8mVX2pcMWGt9QSbcI8NYR2tp+Sfrwb9KEqZCDCCRrHnBiR
	+PPNLOsmgz+88KzOHy8UpVwu5Z75p9WVU8O9CxiPqor6X18x2QeKO/oIVAJTMNoJXEKEOoxF/E8lj
	L1nUmK/aI9/B+HQGwP7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sComN-00000008dMZ-1jKG;
	Thu, 30 May 2024 23:01:51 +0000
Received: from mgamail.intel.com ([198.175.65.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sColY-00000008cuN-18Uz;
	Thu, 30 May 2024 23:01:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717110061; x=1748646061;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AuYIRZwuv1vWCs2uWjv6nHv7VSkA6+15BzU0BIBlcXI=;
  b=mLbA9AUIsITTqfMOJuO53IlybMF9k28J6yt91uaqBAQtRVvpH44Hm9Zh
   0+1c/ShJxbczINJEJ4I7/ErZkYXHW4V8+XfVAqgH6fx18e9ihlvdrp8yS
   yfWnEXNzW3Qzv8y7Tx3lAnd0A/86vx+I7abZeqcOArY5WXrRYV7qSKrHT
   yoN+V+Awj5cpFzZjx/5Z+xHYFJlOu2eCvpMSER2FRWaUqqvOz4mA4PK6A
   qQMcAdkf0Fpxn5Fk70+VmhOYaVFDLWQygJTkmPTNLH7mI+8vZHUwMdJ14
   xeQfsOESn0K+GyDLqgcnFHJEDbfyztllXtmD3LIzPoRyrk7JIChCKkCkd
   Q==;
X-CSE-ConnectionGUID: HnnCDPqGQF+4YtfA0IP8HQ==
X-CSE-MsgGUID: OmrVNIabQ3KUKxXAMbQaXA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="24195389"
X-IronPort-AV: E=Sophos;i="6.08,202,1712646000"; 
   d="scan'208";a="24195389"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 May 2024 16:01:00 -0700
X-CSE-ConnectionGUID: sobAkPNVTae+BISEGqSQCg==
X-CSE-MsgGUID: iCEpUl0ZQQiPRNOUAbqr4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,202,1712646000"; 
   d="scan'208";a="40895353"
Received: from black.fi.intel.com ([10.237.72.28])
  by orviesa003.jf.intel.com with ESMTP; 30 May 2024 16:00:50 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 69C1F6AB; Fri, 31 May 2024 02:00:40 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Rob Herring <robh@kernel.org>,
	Weidong Wang <wangweidong.a@awinic.com>,
	Mark Brown <broonie@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Shenghao Ding <shenghao-ding@ti.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Alper Nebi Yasak <alpernebiyasak@gmail.com>,
	Chancel Liu <chancel.liu@nxp.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
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
	James Schulman <james.schulman@cirrus.com>,
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
Subject: [PATCH v1 5/6] ASoC: generic: Replace of_gpio.h by proper one
Date: Fri, 31 May 2024 01:58:51 +0300
Message-ID: <20240530230037.1156253-6-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1336.g36b5255a03ac
In-Reply-To: <20240530230037.1156253-1-andriy.shevchenko@linux.intel.com>
References: <20240530230037.1156253-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_160100_461139_07C35B30 
X-CRM114-Status: GOOD (  10.98  )
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
