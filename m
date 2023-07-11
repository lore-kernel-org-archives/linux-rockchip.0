Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFF3CC04A6A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 17:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNEqLUKPP/1yVMuLhkBZGcQe6SRi2YZl6QBUmJ/RWOo=; b=podip7Xziapz2E
	rdsbC/hHyJ+WkK7MdQpmsYh46mRzirodbNPgNlsPxjpwY7G4OMxGHYN1nXEl+7sO1P7O4W7MH3XIe
	ziellDEyiVctVA6KQT8CauJ03pXiZ6MAJzxNzqeK2iKaqXtgRDW4+H41tpw9PnvzTvG5Ju2ndQjpG
	71+HcKb83fNiAJX3z/NpQP9muBIfLH1TT41IsLD1TJpCykS5wsZMZyig+fPPVIh+FHVdD3M3SdMam
	CNvxCnoktk6pu/0+T4YP6sZLzYgxfAyB6riqEsEaP6bC4mBgNGslqPV9/7A6S+PKCDwyeWoBHu+3n
	zs4zVjt8teD6wjy/Z9vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJH25-00FWBo-28;
	Tue, 11 Jul 2023 17:20:13 +0000
Received: from mga11.intel.com ([192.55.52.93])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJH1L-00FVLC-2t;
	Tue, 11 Jul 2023 17:19:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1689095967; x=1720631967;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=u9L8bC8uc7avplPhBiWwS/Uu0Hqr1Wth57luzKoKJGU=;
  b=lJ5G2u7Ezhe1mn50yW5PUnTO7QWb/hAiWa51EWI6UUsqNL/eKk//JhGw
   jZYnPs8qrMtpC1hToPW2Am1BpbhAARAzRFXMx/mlzRQKPQij4yde1iPKw
   RR07Rk5ySeMYbrCQCJq1KsJtICpmAX+rX7zQvex0ldoBPadbXoO/kfIRT
   vl5O1w9HNFdB09QA528Z0wJ5BnRPPsrwdFzEj2F60RMgAGJuNPOQZxPqm
   0mNx4IkHpvusc49jjlmh3VFhoOlRnynRaoa+A42jhofdMXFls3At62gvf
   zfTfB2C6fZ5Y+SQ8CDVs8tHFJd+iqe63bQ5jZkwWL6jj2u8084u01XLu1
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="362148930"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; 
   d="scan'208";a="362148930"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2023 10:19:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="715240913"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; 
   d="scan'208";a="715240913"
Received: from black.fi.intel.com ([10.237.72.28])
  by orsmga007.jf.intel.com with ESMTP; 11 Jul 2023 10:18:02 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 896E669F; Tue, 11 Jul 2023 20:17:59 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Mark Brown <broonie@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Yang Yingliang <yangyingliang@huawei.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Amit Kumar Mahapatra via Alsa-devel <alsa-devel@alsa-project.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tharun Kumar P <tharunkumar.pasumarthi@microchip.com>,
	Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-trace-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Cc: Sanjay R Mehta <sanju.mehta@amd.com>,
	Radu Pirea <radu_nicolae.pirea@upb.ro>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Max Filippov <jcmvbkbc@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Richard Cochran <richardcochran@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v3 08/14] spi: Sort headers alphabetically
Date: Tue, 11 Jul 2023 20:17:50 +0300
Message-Id: <20230711171756.86736-9-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.40.0.1.gaa8946217a0b
In-Reply-To: <20230711171756.86736-1-andriy.shevchenko@linux.intel.com>
References: <20230711171756.86736-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_101927_973893_FE9C0C22 
X-CRM114-Status: GOOD (  12.66  )
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

Sorting headers alphabetically helps locating duplicates, and
make it easier to figure out where to insert new headers.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/spi/spi.c       | 42 ++++++++++++++++++++---------------------
 include/linux/spi/spi.h | 14 +++++++-------
 2 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 0259516a6943..9b096cbc9926 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -4,36 +4,36 @@
 // Copyright (C) 2005 David Brownell
 // Copyright (C) 2008 Secret Lab Technologies Ltd.
 
-#include <linux/kernel.h>
-#include <linux/device.h>
-#include <linux/init.h>
+#include <linux/acpi.h>
 #include <linux/cache.h>
-#include <linux/dma-mapping.h>
+#include <linux/clk/clk-conf.h>
+#include <linux/delay.h>
+#include <linux/device.h>
 #include <linux/dmaengine.h>
+#include <linux/dma-mapping.h>
+#include <linux/export.h>
+#include <linux/gpio/consumer.h>
+#include <linux/highmem.h>
+#include <linux/idr.h>
+#include <linux/init.h>
+#include <linux/ioport.h>
+#include <linux/kernel.h>
+#include <linux/kthread.h>
+#include <linux/mod_devicetable.h>
 #include <linux/mutex.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
-#include <linux/clk/clk-conf.h>
-#include <linux/slab.h>
-#include <linux/mod_devicetable.h>
-#include <linux/spi/spi.h>
-#include <linux/spi/spi-mem.h>
-#include <linux/gpio/consumer.h>
-#include <linux/pm_runtime.h>
+#include <linux/percpu.h>
+#include <linux/platform_data/x86/apple.h>
 #include <linux/pm_domain.h>
+#include <linux/pm_runtime.h>
 #include <linux/property.h>
-#include <linux/export.h>
+#include <linux/ptp_clock_kernel.h>
 #include <linux/sched/rt.h>
+#include <linux/slab.h>
+#include <linux/spi/spi.h>
+#include <linux/spi/spi-mem.h>
 #include <uapi/linux/sched/types.h>
-#include <linux/delay.h>
-#include <linux/kthread.h>
-#include <linux/ioport.h>
-#include <linux/acpi.h>
-#include <linux/highmem.h>
-#include <linux/idr.h>
-#include <linux/platform_data/x86/apple.h>
-#include <linux/ptp_clock_kernel.h>
-#include <linux/percpu.h>
 
 #define CREATE_TRACE_POINTS
 #include <trace/events/spi.h>
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index 32c94eae8926..21b77bdfac29 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -6,19 +6,19 @@
 #ifndef __LINUX_SPI_H
 #define __LINUX_SPI_H
 
+#include <linux/acpi.h>
 #include <linux/bits.h>
+#include <linux/completion.h>
 #include <linux/device.h>
-#include <linux/mod_devicetable.h>
-#include <linux/slab.h>
+#include <linux/gpio/consumer.h>
 #include <linux/kthread.h>
-#include <linux/completion.h>
+#include <linux/mod_devicetable.h>
 #include <linux/scatterlist.h>
-#include <linux/gpio/consumer.h>
-
-#include <uapi/linux/spi/spi.h>
-#include <linux/acpi.h>
+#include <linux/slab.h>
 #include <linux/u64_stats_sync.h>
 
+#include <uapi/linux/spi/spi.h>
+
 struct dma_chan;
 struct software_node;
 struct ptp_system_timestamp;
-- 
2.40.0.1.gaa8946217a0b


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
