Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01D4CC25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 22:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/SPhJXz48rN/UhZX05480sgsW3GqfY7aTK3F6ZFtFc=; b=F5CTdV4/zgGYEl
	CCLvkLXX979tCismN9hFAweTUVHlY5CIWj2IU163aYoarqePKh8gcR3KAIMrB0eFSmdwAtpd+p3j2
	UyI4Ya29tegADIZ8vyOQNIB0OmwVVPJuN+bU5J5+ABKZOpE3kzppFKdpQk8O8wW8Tq2wlsOcdtbBX
	ebr8uN4JGRHMJFDD0hA7BTJavlsQPm5YBFCZ2T6M9GkU/RMF0vKR5htaaxkbh1hDpgvwYxfmjIJYd
	C4RJ2BibzVmdZwKRErTzhujYVNo8HGaQfm2e7rXxzdoJKRXdeu0bRVHvgfYj6MBMOG5zWP8BuBpk0
	x4sfZnIAWXl7rsc8/wCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEyuT-00000007iTu-2maK;
	Wed, 05 Jun 2024 22:15:09 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEyuN-00000007iOs-1mbg;
	Wed, 05 Jun 2024 22:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717625703; x=1749161703;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=j//q7PxjjHf16S9qzs6ZEZBUjOL4lL+BxQBw8TkTaeo=;
  b=MnC0jCyIbQ6lnXObxhmH7noTKOsUtc8u9Pe3/J/7bkRei7cwkdKdt6N2
   Zbum7ZVRDaUiOVwEPAHRbFUPunphzkRcNOSMkm6ZQ5vdDArKLppPkKZ8V
   xhmIG4mUxTLROa9o0L3JfKvuvF+3Fhd2IwWtQ9Umlrc3/GrCsprLKSEfj
   Wac0fRnnDyyyl/R7qoZf1ZanXHgIQDiCOrn1GTTbQFNc1RJY22uBTFoi4
   RAor4lbxJ1US+R21Fjb3rmbNYvwKYLtaxGHESF+sDcr7cwbF4Xr6Ej05X
   zaKZJxF10F2IPySbRrEdqkzZdR929eBPibWyvpZqnMVmgnbeO/ElJwZLl
   w==;
X-CSE-ConnectionGUID: QgPcP8arRXmW6f5nAJ2PSw==
X-CSE-MsgGUID: jVuIlwypTsmOrzbIj3TFNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="24895439"
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; 
   d="scan'208";a="24895439"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jun 2024 15:14:58 -0700
X-CSE-ConnectionGUID: HzH0miWtQ1OXdvC2WG594w==
X-CSE-MsgGUID: 8j0hPRi+QvK0cEgtvL2Q3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,217,1712646000"; 
   d="scan'208";a="38168540"
Received: from black.fi.intel.com ([10.237.72.28])
  by orviesa006.jf.intel.com with ESMTP; 05 Jun 2024 15:14:49 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id B9E0434B; Thu, 06 Jun 2024 01:14:47 +0300 (EEST)
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
	linux-arm-msm@vger.kernel.org,
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
Subject: [PATCH v2 2/6] ASoC: fsl: Remove unused of_gpio.h
Date: Thu,  6 Jun 2024 00:27:25 +0300
Message-ID: <20240605221446.2624964-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1336.g36b5255a03ac
In-Reply-To: <20240605221446.2624964-1-andriy.shevchenko@linux.intel.com>
References: <20240605221446.2624964-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_151503_791273_740F0AC5 
X-CRM114-Status: UNSURE (   9.03  )
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

of_gpio.h is deprecated and subject to remove. The drivers in question
don't use it, simply remove the unused header.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 sound/soc/fsl/imx-es8328.c | 1 -
 sound/soc/fsl/imx-rpmsg.c  | 2 --
 2 files changed, 3 deletions(-)

diff --git a/sound/soc/fsl/imx-es8328.c b/sound/soc/fsl/imx-es8328.c
index 5b9648f3b087..3ef92f6dfc6b 100644
--- a/sound/soc/fsl/imx-es8328.c
+++ b/sound/soc/fsl/imx-es8328.c
@@ -8,7 +8,6 @@
 #include <linux/of.h>
 #include <linux/of_platform.h>
 #include <linux/i2c.h>
-#include <linux/of_gpio.h>
 #include <sound/soc.h>
 #include <sound/jack.h>
 
diff --git a/sound/soc/fsl/imx-rpmsg.c b/sound/soc/fsl/imx-rpmsg.c
index 0f1ad7ad7d27..ce98d2288193 100644
--- a/sound/soc/fsl/imx-rpmsg.c
+++ b/sound/soc/fsl/imx-rpmsg.c
@@ -5,9 +5,7 @@
 #include <linux/of_platform.h>
 #include <linux/of_reserved_mem.h>
 #include <linux/i2c.h>
-#include <linux/of_gpio.h>
 #include <linux/slab.h>
-#include <linux/gpio.h>
 #include <linux/clk.h>
 #include <sound/soc.h>
 #include <sound/jack.h>
-- 
2.43.0.rc1.1336.g36b5255a03ac


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
