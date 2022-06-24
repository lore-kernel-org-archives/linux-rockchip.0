Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CD25C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 08:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=smemynp/ub/IIJJ0E82E6A91BbaPLTApnaqIx1dGoZQ=; b=Ama0W/CLdnyL3i
	yNxT5S4OJgrhqPaOioqGKYnWFdjz8Mbvmvi3GTmSbS3O/NuJG6C88KCx5568nSWBtKr9j5QjkqHfg
	Z6IUdKBo+mAH+xbXpfKhsjhIu7udwJzAP8KrEupstOgaBed933+vCDX6jpWpi2CtvtutRthQDkwQt
	cPnTZj0UwWNxmmAcsCSi0BMroA4s+pVmVZPu/yO/13GXh/okGzdFcPkIc2aYtzRMr2L243aOcacPn
	8kchMmFPlvqmkSRm6YixMfPSeoF5vs87HHuq+sqy/MRO7ExAPKSmxHN7sBnhlHnx6pUye6591+KFy
	O3K5rVmxYhShKeR3F55A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4efj-001AXl-MC; Fri, 24 Jun 2022 08:28:11 +0000
Received: from out30-133.freemail.mail.aliyun.com ([115.124.30.133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4efX-001AUo-Uh; Fri, 24 Jun 2022 08:28:01 +0000
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R171e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046049;MF=jiapeng.chong@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0VHGRu2S_1656059267;
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com fp:SMTPD_---0VHGRu2S_1656059267)
          by smtp.aliyun-inc.com;
          Fri, 24 Jun 2022 16:27:52 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: lgirdwood@gmail.com
Cc: broonie@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	heiko@sntech.de,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Subject: [PATCH] ASoC: rockchip: i2s: Fix missing error code in rockchip_i2s_probe()
Date: Fri, 24 Jun 2022 16:27:45 +0800
Message-Id: <20220624082745.68367-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_012800_199017_8210DDE6 
X-CRM114-Status: UNSURE (   8.05  )
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

The error code is missing in this code scenario, add the error code
'-EINVAL' to the return value 'ret'.

This was found by coccicheck:

sound/soc/rockchip/rockchip_i2s.c:810 rockchip_i2s_probe() warn: missing error code 'ret'.

Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 sound/soc/rockchip/rockchip_i2s.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index d300eee9ddaa..0ed01624a2db 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -807,6 +807,7 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 			i2s->bclk_off = pinctrl_lookup_state(i2s->pinctrl, "bclk_off");
 			if (IS_ERR_OR_NULL(i2s->bclk_off)) {
 				dev_err(&pdev->dev, "failed to find i2s bclk_off\n");
+				ret = -EINVAL;
 				goto err_clk;
 			}
 		}
-- 
2.20.1.7.g153144c


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
