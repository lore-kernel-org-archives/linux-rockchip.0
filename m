Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6154EC3A5A7
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Dec 2022 06:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zlFRlzuFS8WtehgvZHxhgMqGiMxcf6QBemkDfbyOhsM=; b=WUnK7MlIkGQDuY
	lMq6Ov6CSTzO+fEPf0drP93hXNCFT/SR/EGX3gkOdUK833Ev9wDK6znNfbv91BFSK5Piyyb5LTM7/
	3mgsrFgJYLwUWetl0oyN43hjaxaBp2oFnyOg8FCjoHd3lZbVu6ww0pW7vHrPLtgeToll0mcVssThj
	amADNnl/oOldWQcz6k55uB532/ML5PnIe4p8QzH036buXd6mV3n5xTPZnzKOKQZV+3ovUQM8xvZFr
	AMZVHjaLF+PpjCCDSwSROAubkW9QNfZww3z2MRrqcOzduBJHZuVc7Qtcn0056NU8vSzl5QVUSJTVJ
	BQeIWFTicM3E8+oT+bgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3AEv-003PfC-Va; Thu, 08 Dec 2022 06:18:38 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3AEc-003OWM-4l; Thu, 08 Dec 2022 06:18:19 +0000
Received: from kwepemm600017.china.huawei.com (unknown [172.30.72.57])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NSP821v15zRpdL;
	Thu,  8 Dec 2022 14:17:22 +0800 (CST)
Received: from zelda.huawei.com (10.175.103.14) by
 kwepemm600017.china.huawei.com (7.193.23.234) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 8 Dec 2022 14:18:13 +0800
From: Wang Jingjin <wangjingjin1@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
	<tiwai@suse.com>, <heiko@sntech.de>, <sugar.zhang@rock-chips.com>,
	<alsa-devel@alsa-project.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <wangjingjin1@huawei.com>
Subject: [PATCH v2] ASoC: rockchip: spdif: Add missing clk_disable_unprepare() in rk_spdif_runtime_resume()
Date: Thu, 8 Dec 2022 14:39:00 +0800
Message-ID: <20221208063900.4180790-1-wangjingjin1@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.103.14]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemm600017.china.huawei.com (7.193.23.234)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221207_221818_382617_C5543601 
X-CRM114-Status: UNSURE (   7.14  )
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

rk_spdif_runtime_resume() may have called clk_prepare_enable() before return
from failed branches, add missing clk_disable_unprepare() in this case.

Fixes: f874b80e1571 ("ASoC: rockchip: Add rockchip SPDIF transceiver driver")
Signed-off-by: Wang Jingjin <wangjingjin1@huawei.com>
---
changes in v2:
- Match the subject to the content
---
 sound/soc/rockchip/rockchip_spdif.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/rockchip/rockchip_spdif.c b/sound/soc/rockchip/rockchip_spdif.c
index 8bef572d3cbc..5b4f00457587 100644
--- a/sound/soc/rockchip/rockchip_spdif.c
+++ b/sound/soc/rockchip/rockchip_spdif.c
@@ -88,6 +88,7 @@ static int __maybe_unused rk_spdif_runtime_resume(struct device *dev)

 	ret = clk_prepare_enable(spdif->hclk);
 	if (ret) {
+		clk_disable_unprepare(spdif->mclk);
 		dev_err(spdif->dev, "hclk clock enable failed %d\n", ret);
 		return ret;
 	}
--
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
