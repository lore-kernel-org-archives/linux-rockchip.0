Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F374C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 08:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PIy2o1zq6Nvn9DmGTFtZy4eXyQIFMHLgmqZO9n2T1p4=; b=JPMQlb/xlHEN0D
	W6dRCemcjH7haHRr84mdqZEwnkkiU98v9xGcPD7HObdrZaLQeClmTbtKQ6PXWYqCi+fdn28TaOYSb
	q4P5g91m6ULNbzcJJus9Jx/bh+pA7vunTf41Z9+peGOd8MdMtLiwJ9KGrTiejw/27YhxCr+R0lOHk
	HdYZL1xlWGjN+9fL7WPpHgKNxXwtdd9VuZHp/+BlgbOvi7pXedlf/dpcgjMeqwRzb4oBoe8Qn/F0G
	dcTWJP5a4xNBTAM80gTRhwkIOCoQ6JLy3x/heAVdYM19H9Sq658t61I+yc01RhVgtyyORm4QwOO4a
	ooxf9un4U3Z9M5oDVBRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nR8qi-00GUBd-8u; Mon, 07 Mar 2022 08:36:12 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nR8qV-00GU7b-AL; Mon, 07 Mar 2022 08:36:00 +0000
Received: by mail-pl1-x633.google.com with SMTP id n2so3616217plf.4;
 Mon, 07 Mar 2022 00:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=mNiCQomHe3AZpULgmNuzd/nevg4o0tLCGfPqsWacIDg=;
 b=kSq5RBX4GqueV2igKVHKCILxMbbWs7+3aAu+Vpq8k2nZErehVPHkMl7W3dmW4MpcGR
 kuA1JEdVxm1mqyxpKKZ/Z0PNvZ+h/nW5QLJUpuF9sepwi6TYVFwhMLi4cci1AmUk5NB8
 Ccu7E/UsHX7FYUx3/dr6/1w+f23vtFBZgC7u6PjZp40j2Lq6QD/r5C/gRndmIDtTrC0g
 Ds+LAeufJHywwhIgNDp2br/5ML3rm7unqaqsGu4hAWXe6c9ONh34KMKvrwyTTnx0Qr9b
 b3+7ekRl3eLkdnKqx/qU4XM8WlYTM0ju1/wX6FJHm7lgt/1tHSnskXKyQSfXUgmL2lol
 rPtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mNiCQomHe3AZpULgmNuzd/nevg4o0tLCGfPqsWacIDg=;
 b=PbcJyZU/BbIRoGYvjrHQkEHMioK3om2nMiQMZLV3T0mM0N7SpQlBztZmmDud+IzhfQ
 U03WIRUjhryG1WI/Gb2ObwVe+yjozZl82ncAt8KB1O9e+HHV69LgWUEfq7eniyHoj9lT
 +nQIZx/LYAQUpCEqCp922w98w9sYTIDGEOm44xUEg+57WXZmlzPDOjmlC8tvvqWTmYrp
 OcxokIp5UdGrP/BCUiqeFnKU4QOKd5Q7WA/kIRiPAi2c5JaPSPWf04ePXAYv5LMFoUXb
 2o9g1/UVbWrGI59Uzm3x0AN1MmGgnAVCJOdTvdlUNjPDF4ujEMASC4ULI2+/HBDRvYwx
 V7Rw==
X-Gm-Message-State: AOAM533Dv33AajGFzjyid+SsTBlsiyR5Vm6dTlAEuUd2sHpt+LzHjMrU
 6YllLDbKIY1f5bBiIfaiW3c=
X-Google-Smtp-Source: ABdhPJxOvB200XwC3KbSEeD9yNj4/yZaDfwprj85CYxXE7HWOzQrXXTiuZQc9KJCbRN0m7Ef8wgh/A==
X-Received: by 2002:a17:902:bb8f:b0:151:c488:cd24 with SMTP id
 m15-20020a170902bb8f00b00151c488cd24mr10673839pls.118.1646642158364; 
 Mon, 07 Mar 2022 00:35:58 -0800 (PST)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id
 o65-20020a17090a0a4700b001bef5cffea7sm14562495pjo.0.2022.03.07.00.35.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 00:35:58 -0800 (PST)
From: Miaoqian Lin <linmq006@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, Jianqun <jay.xu@rock-chips.com>,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: linmq006@gmail.com
Subject: [PATCH] ASoC: rockchip: i2s: Fix missing clk_disable_unprepare() in
 rockchip_i2s_probe
Date: Mon,  7 Mar 2022 08:35:52 +0000
Message-Id: <20220307083553.26009-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_003559_399168_B8B4FF06 
X-CRM114-Status: GOOD (  12.56  )
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

Fix the missing clk_disable_unprepare() before return
from rockchip_i2s_probe() in the error handling case.

Fixes: 01605ad12875 ("ASoC: rockchip-i2s: enable "hclk" for rockchip I2S controller")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 sound/soc/rockchip/rockchip_i2s.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index a6d7656c206e..4ce5d2579387 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -716,19 +716,23 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 	i2s->mclk = devm_clk_get(&pdev->dev, "i2s_clk");
 	if (IS_ERR(i2s->mclk)) {
 		dev_err(&pdev->dev, "Can't retrieve i2s master clock\n");
-		return PTR_ERR(i2s->mclk);
+		ret = PTR_ERR(i2s->mclk);
+		goto err_clk;
 	}
 
 	regs = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
-	if (IS_ERR(regs))
-		return PTR_ERR(regs);
+	if (IS_ERR(regs)) {
+		ret = PTR_ERR(regs);
+		goto err_clk;
+	}
 
 	i2s->regmap = devm_regmap_init_mmio(&pdev->dev, regs,
 					    &rockchip_i2s_regmap_config);
 	if (IS_ERR(i2s->regmap)) {
 		dev_err(&pdev->dev,
 			"Failed to initialise managed register map\n");
-		return PTR_ERR(i2s->regmap);
+		ret = PTR_ERR(i2s->regmap);
+		goto err_clk;
 	}
 
 	i2s->bclk_ratio = 64;
@@ -768,7 +772,8 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 		i2s_runtime_suspend(&pdev->dev);
 err_pm_disable:
 	pm_runtime_disable(&pdev->dev);
-
+err_clk:
+	clk_disable_unprepare(i2s->hclk);
 	return ret;
 }
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
