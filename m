Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0604CC27C50
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 15:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhS78d8Dbtpm05PGy96yBwlDJj2eECyJSyv2l0YY6tc=; b=gf/X+x1wt9PZy0
	hLHtoW/DbqptUQZeuPVGl5LRRIUSDtRDgBw6o4g/KKZ41T9Qi+RwXc8RlJ9p8b1yF4xsdBmvCKLmS
	haRcoHalgYW1Ao69MCbkil4hAkdv1oxK2LptWOlb5gLDDafUtPrFMXPdY130xpPFVxXgJgdaj9cKG
	h4zjh+P6gA6NjWD2uFqXj+wvoAWJCbj+cs1Hkx2Yd2kOy/p0qZlk955hDGBMqzVcONbBVPaNfWQd1
	1saUVbJR50PyTqEMSZVYLoozKv7jcfNfaiEdJ0VPyuLu7EHuTednQAtRPr0iPDd3UEXdYj1izHkQ6
	EnO0akcpBank41X9owhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD4ES-0000000Ah87-31V8;
	Fri, 31 May 2024 15:31:52 +0000
Received: from mgamail.intel.com ([198.175.65.17])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD4Di-0000000AgeE-37RQ;
	Fri, 31 May 2024 15:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717169466; x=1748705466;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=sA6qI//FTL7pgyGldUMsd1jU+l556RY52OWXWgjHnto=;
  b=eSF45pq1QjAZ3zPZDNQXqcHDSX9NpgUjnTq8VClVx0Wid/ml9emR9Dhr
   I2MOa3as0O/Zn7ndrbUc5OeMlBTH5T0duXVLns4JhLpsYF1K9kdflc8qx
   hBe4UdscvxNIG52K63EEaEJIRE/jUaCoGSajII6WiPVPurD+ETq+VANF9
   8hDTBIvsaNAIR1Hu3s62Z3/p6Ig0r5afZYjthKuR4K4UDagHDzWhCwQ54
   A02sFtzXWqm45EDls1u0wtAHYWrGdXlMywDxyKJDvfDPq8LCmy6BSMNbp
   ubGLsPWrqpaW8wUFggNClQjMGJDzetP5Y1XFKrIZvVkP0PNGkZqPMk6sU
   w==;
X-CSE-ConnectionGUID: JcW9B8BOTYGaKxKvRwNLrg==
X-CSE-MsgGUID: NKsfbGB3RduiaZ3CV4h+zw==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13839681"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; 
   d="scan'208";a="13839681"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 May 2024 08:30:57 -0700
X-CSE-ConnectionGUID: hHqXtMjBQrmkR3of3UKpuQ==
X-CSE-MsgGUID: 7H/Fjvj9SyuUz1KNLZXrwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; 
   d="scan'208";a="40627351"
Received: from black.fi.intel.com ([10.237.72.28])
  by fmviesa003.fm.intel.com with ESMTP; 31 May 2024 08:30:49 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 04665692; Fri, 31 May 2024 18:30:39 +0300 (EEST)
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
Subject: [PATCH v2 6/6] ASoC: samsung: Replace of_gpio.h by proper one
Date: Fri, 31 May 2024 18:29:33 +0300
Message-ID: <20240531153038.1590171-7-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1336.g36b5255a03ac
In-Reply-To: <20240531153038.1590171-1-andriy.shevchenko@linux.intel.com>
References: <20240531153038.1590171-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_083106_886893_A78D343E 
X-CRM114-Status: GOOD (  12.30  )
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
 sound/soc/samsung/aries_wm8994.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/samsung/aries_wm8994.c b/sound/soc/samsung/aries_wm8994.c
index a548ac33dd94..01716df0c842 100644
--- a/sound/soc/samsung/aries_wm8994.c
+++ b/sound/soc/samsung/aries_wm8994.c
@@ -1,11 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <linux/extcon.h>
+#include <linux/gpio/consumer.h>
 #include <linux/iio/consumer.h>
 #include <linux/input-event-codes.h>
 #include <linux/mfd/wm8994/registers.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_gpio.h>
 #include <linux/regulator/consumer.h>
 #include <sound/jack.h>
 #include <sound/pcm_params.h>
-- 
2.43.0.rc1.1336.g36b5255a03ac


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
