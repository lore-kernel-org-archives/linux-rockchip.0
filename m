Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8897AC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 22:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lrU/5UKKiPQKh8JP6G5w75mtHSHtp4Ob3f+fbbH4whM=; b=VNIzazktokSyot
	VXoI5d95k8ry0BhVTlvlRnZLE6p8qhReAARXSZR1dQMqgPBlFJH6udlXbvxHoqunLz1sgobjF51of
	PKwFi10pbJZukFPNFyGzl9JEOHpD7XAe2hURt60Z6K2V4Wv7O5o3Xppi4jMBdzdmEeFt3A4ohibbi
	j9eZTGMyHN2Ath3X2s8J4Yfaq4aunLGPmq4NUr0k4MUOjgegA8obC24X6gxcqF0StBefpVr51qCTf
	2ryaSQk3wUBH/90JM/hG4pLwIxNHkU6Mo/gxkS/o5KNYLXiYoTFdGZdI6Sz8WABY7ldNz26M2UDcK
	hOxt9qNDvxOngRj+pUvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1xbz-004XSB-Qa; Thu, 16 Jun 2022 22:05:11 +0000
Received: from mga07.intel.com ([134.134.136.100])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1xbf-004XK2-0l; Thu, 16 Jun 2022 22:04:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655417091; x=1686953091;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=16VgkFnDUAPnUMogOVCeb93snA9dZAeCyiMXw7+CLi0=;
  b=aONNJManeIRNflbM/QNOI6IPL8Z/IHYn1vXVFIn8DTVhfQjN2d6riVL7
   7SHaUDVCbFFQ/O1eYARgC1t2i6C6Vhj93ArEu0gBJnzYc0qAm4QIzmTfQ
   ShjM2RA8/3r41cC+BS2OTS60GGA0foxpwWF4DLw7OeYq6fd3kp8Bliy7G
   3Ymt5kPgo1kkJ+DrRJkBccY2K0zwaToSpeydtxnPhJPPxDsnvFKH2Bh1s
   B+6FnmEfGgEDQM7AVHQfBP95QKIMO9binmJXAezu5bWD636A4QXEwHVN/
   8T7XTqMJLmGFdnQDsU4WtKUDw89gZcoXHQXeyvayKeYD9uSjj2RcwErRz
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="343323052"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; 
   d="scan'208";a="343323052"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2022 15:04:50 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; 
   d="scan'208";a="728085027"
Received: from buckkenx-mobl.amr.corp.intel.com (HELO pbossart-mobl3.intel.com) ([10.212.52.70])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2022 15:04:49 -0700
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
To: alsa-devel@alsa-project.org
Cc: tiwai@suse.de,
	broonie@kernel.org,
	Cezary Rojewski <cezary.rojewski@intel.com>,
	=?UTF-8?q?Amadeusz=20S=C5=82awi=C5=84ski?= <amadeuszx.slawinski@linux.intel.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>,
	Kai Vehmanen <kai.vehmanen@linux.intel.com>,
	Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 09/11] ASoC: rockchip: pdm: use pm_runtime_resume_and_get()
Date: Thu, 16 Jun 2022 17:04:25 -0500
Message-Id: <20220616220427.136036-10-pierre-louis.bossart@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616220427.136036-1-pierre-louis.bossart@linux.intel.com>
References: <20220616220427.136036-1-pierre-louis.bossart@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_150451_137081_A52ABEB9 
X-CRM114-Status: GOOD (  10.23  )
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

Simplify the flow.

Signed-off-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Reviewed-by: Bard Liao <yung-chuan.liao@linux.intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Reviewed-by: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
---
 sound/soc/rockchip/rockchip_pdm.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index 64d9891b6434f..066e29b7879d1 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -688,11 +688,9 @@ static int rockchip_pdm_resume(struct device *dev)
 	struct rk_pdm_dev *pdm = dev_get_drvdata(dev);
 	int ret;
 
-	ret = pm_runtime_get_sync(dev);
-	if (ret < 0) {
-		pm_runtime_put(dev);
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret < 0)
 		return ret;
-	}
 
 	ret = regcache_sync(pdm->regmap);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
