Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7512C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 02:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hUVbwCivrblUHzWyY1DncQGUIY28/2LDriGd3dtyNuY=; b=tCsluHg/mckD3Q
	z2Mkpp+QLQlt1jifdSmIFQifORFKgmqKKru7cmXc9Nsm0tW0vzqAuj90hEND2XuwUJZE6jprQ6aoe
	JfJLrG7s70t6k+2U2t+JBra2/xeXRO9s5ESUicx03Ts5/7jqeq1vbBdeL8qIQ7ZfvDTsvdHgm8j6T
	XqMTYtGy9nOtS9m1JAWyqrkeYg2ntrkwfu6yW1VODtwnMsXH8HPr26cH1cx3xcBU2t23mP2kBCyg+
	ghdOi/q+NDBKPcKm1KASO7QzFIZP0zSuZF6DlZTZ0u8xTK/2LC5OB+AF3+m/QW3+ZAJLwULAGCiIL
	/rY5+SqzqPvMGnDIpkBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTx5e-007Z8P-MQ; Tue, 15 Mar 2022 02:39:14 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTx5c-007Z6o-2E
 for linux-rockchip@lists.infradead.org; Tue, 15 Mar 2022 02:39:13 +0000
Received: from kwepemi500019.china.huawei.com (unknown [172.30.72.54])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4KHct72GDVzcbJR;
 Tue, 15 Mar 2022 10:34:07 +0800 (CST)
Received: from kwepemm600014.china.huawei.com (7.193.23.54) by
 kwepemi500019.china.huawei.com (7.221.188.117) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Tue, 15 Mar 2022 10:39:03 +0800
Received: from huawei.com (10.175.127.227) by kwepemm600014.china.huawei.com
 (7.193.23.54) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.21; Tue, 15 Mar
 2022 10:39:02 +0800
From: zhangqilong <zhangqilong3@huawei.com>
To: <frattaroli.nicolas@gmail.com>, <tiwai@suse.com>, <perex@perex.cz>,
 <heiko@sntech.de>
CC: <lgirdwood@gmail.com>, <broonie@kernel.org>,
 <linux-rockchip@lists.infradead.org>, <alsa-devel@alsa-project.org>
Subject: [PATCH -next] ASoC: rockchip: Fix PM usage reference of
 rockchip_i2s_tdm_resume
Date: Tue, 15 Mar 2022 10:54:15 +0800
Message-ID: <20220315025415.2593762-1-zhangqilong3@huawei.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemm600014.china.huawei.com (7.193.23.54)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_193912_352738_581CBCC7 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

pm_runtime_get_sync will increment pm usage counter
even it failed. Forgetting to putting operation will
result in reference leak here. We fix it by replacing
it with pm_runtime_resume_and_get to keep usage counter
balanced.

Fixes:081068fd64140 ("ASoC: rockchip: add support for i2s-tdm controller")
Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 5f9cb5c4c7f0..d3b710406941 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -1738,7 +1738,7 @@ static int __maybe_unused rockchip_i2s_tdm_resume(struct device *dev)
 	struct rk_i2s_tdm_dev *i2s_tdm = dev_get_drvdata(dev);
 	int ret;
 
-	ret = pm_runtime_get_sync(dev);
+	ret = pm_runtime_resume_and_get(dev);
 	if (ret < 0)
 		return ret;
 	ret = regcache_sync(i2s_tdm->regmap);
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
