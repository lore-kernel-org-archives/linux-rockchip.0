Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D3E8C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 10:50:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC4E66135F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 10:50:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AC4E66135F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXJnrR1KUSEdtWXKQPjR4jyZOpxIAgtxucpHKRmYI7I=; b=pheQxujiRrYYj8
	ODRaqFD04ByMoHPAYWPaUFwVXmCsPw+wPUoexqh38c59U2Os8RoI7p4IELRbl3bnB0RJKmNak9gRV
	tbqUYBoYRznCj3nOvZUZ+gx7P5AqEybM+9MD5Mz1vYrYaLfkVFAVMEnaUdrSsC/0YM9v2xsB0OKrJ
	YW2UT+046mWD1uwBsmfKDTdU4ofa9Qb+U2KyRc8In7Wo1LjqM73NNUMVp2d3tgwdh1Lb12bUEZ7xO
	+wGoHdt0xYoKbXXHhxTOsmMIUoh5QYwIn82mIaw8fwNJD/iUw12cxEARGLW7kK4jWMF0+kWbuh7f3
	U9alyW3zjVmTgD9ibzLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI7XF-00GPuX-Vi; Mon, 23 Aug 2021 10:50:34 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI7WH-00GPWx-Gg; Mon, 23 Aug 2021 10:49:35 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id F199AC29AB;
 Mon, 23 Aug 2021 18:49:24 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32763T139760957703936S1629715760494266_; 
 Mon, 23 Aug 2021 18:49:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <baf9491ccda4f1533c758f7a8d319fa9>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 10
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 02/15] ASoC: rockchip: i2s: Fixup clk div error
Date: Mon, 23 Aug 2021 18:48:16 +0800
Message-Id: <1629715710-21137-3-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_034933_785775_804047EB 
X-CRM114-Status: GOOD (  13.32  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

MCLK maybe not precise as required because of PLL,
but which still can be used and no side effect. so,
using DIV_ROUND_CLOSEST instead div.

e.g.

set mclk to 11289600 Hz, but get 11289598 Hz.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 sound/soc/rockchip/rockchip_i2s.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index c9d5c52..05fce2c 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -280,10 +280,10 @@ static int rockchip_i2s_hw_params(struct snd_pcm_substream *substream,
 	if (i2s->is_master_mode) {
 		mclk_rate = clk_get_rate(i2s->mclk);
 		bclk_rate = i2s->bclk_ratio * params_rate(params);
-		if (bclk_rate == 0 || mclk_rate % bclk_rate)
+		if (!bclk_rate)
 			return -EINVAL;
 
-		div_bclk = mclk_rate / bclk_rate;
+		div_bclk = DIV_ROUND_CLOSEST(mclk_rate, bclk_rate);
 		div_lrck = bclk_rate / params_rate(params);
 		regmap_update_bits(i2s->regmap, I2S_CKR,
 				   I2S_CKR_MDIV_MASK,
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
