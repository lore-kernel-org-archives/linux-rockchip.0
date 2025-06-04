Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78A90C5B549
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jun 2025 04:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqdFDycHzkltMrCm+agsu1waQCIWeiJTeHcGWApyq3E=; b=Lf/Jzj6zxEVsdt
	IbKNNDYZ8l1GQ6oeEsbM8flH+carSVN5K9K2Mo0iUBVTdxPkZD/ekje2k2hXFG5jzyeDC35wJR4Vs
	NhLlNqPI5eMWxHsnA284N1rU6COCyU/jyGSsDdidWPDu/ajJdeyxDG3yb3sERfBk2XMgsDKmxESns
	RqWdMO3krJ9+jCc3viT9W/wCkDhMMDMcYBX9+tCyCs0oEzWG2u6yFZSKuM7S3nP4mojEUxlmwcO+l
	SGnGh8ZeqmxKSImkjRz9suFeeinSUbTQRQ16OJJ0RLqtq6IT76poFt0uYDrgsIVs/6/1JuRFQzcg5
	Pq8cby0y22iVyjBNy9wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMfWm-0000000CWyE-1Y2b;
	Wed, 04 Jun 2025 04:15:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMean-0000000CQCD-25fa;
	Wed, 04 Jun 2025 03:15:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=V63vTjuwoFtgGMpJOlXqXBxEmJHYPs9tb/LadwgzozM=; b=mZUcvcCtHnGkCwp/ePixawuAzF
	fAQG/pdUDFyGJUy8X45nQf5G5x642JbNAyNJxzL4uHiqKsuyXvYcfVtMonWShXovzWWCWvYIBMMSW
	cNVYYdPTJFyGNHnIqfnaSF+qUcpA6WspkFPrDdG5cEkIcfQIT44q4vho4sAuHjRjOss9+89UuQ6Ta
	Zn1IbvYlaKzlESYdYE8sqVK6OsEkhEl2AfVblJCAb34AGzkElBmyweFMlfaIiu9+ONi/f/rho+cCF
	lH3aMpPMu0MUOafB4Jiztd/JQ+3QgXQadCnDiusLvvKq4SuaSu/w8WyICPg0b+lGKJgRgc2fNc/G3
	SUj7Wj+Q==;
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMeah-00000000quC-3gWh;
	Wed, 04 Jun 2025 03:15:03 +0000
X-UUID: e9d6c1a440f111f0b29709d653e92f7d-20250604
X-CTIC-Tags: HR_CC_AS_FROM, HR_CC_COUNT, HR_CC_DOMAIN_COUNT, HR_CC_NAME, HR_CTE_8B
	HR_CTT_MISS, HR_DATE_H, HR_DATE_WKD, HR_DATE_ZONE, HR_FROM_DIGIT_LEN
	HR_FROM_NAME, HR_SJ_DIGIT_LEN, HR_SJ_LANG, HR_SJ_LEN, HR_SJ_LETTER
	HR_SJ_NOR_SYM, HR_SJ_PHRASE, HR_SJ_PHRASE_LEN, HR_SJ_WS, HR_TO_COUNT
	HR_TO_DOMAIN_COUNT, HR_TO_NO_NAME, IP_TRUSTED, SRC_TRUSTED, DN_TRUSTED
	SA_TRUSTED, SA_EXISTED, SN_TRUSTED, SN_EXISTED, SPF_NOPASS
	DKIM_NOPASS, DMARC_NOPASS
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:20a17d1e-75ba-47a2-ba7d-a6d74aa42065,IP:0,U
	RL:0,TC:0,Content:-5,EDM:25,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:15
X-CID-INFO: VERSION:1.1.45,REQID:20a17d1e-75ba-47a2-ba7d-a6d74aa42065,IP:0,URL
	:0,TC:0,Content:-5,EDM:25,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:15
X-CID-META: VersionHash:6493067,CLOUDID:6caa1a8caebfa93cf8e8ac62306754ce,BulkI
	D:250604111342F3O22LJQ,BulkQuantity:0,Recheck:0,SF:17|19|38|66|78|81|82|10
	2,TC:nil,Content:0|50,EDM:5,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,B
	EC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD
X-UUID: e9d6c1a440f111f0b29709d653e92f7d-20250604
X-User: xiaopei01@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1678508614; Wed, 04 Jun 2025 11:13:40 +0800
From: Pei Xiao <xiaopei01@kylinos.cn>
To: nicolas.frattaroli@collabora.com,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Pei Xiao <xiaopei01@kylinos.cn>
Subject: [PATCH 2/2] ASOC: rockchip: Use helper function devm_clk_get_enabled()
Date: Wed,  4 Jun 2025 11:13:30 +0800
Message-Id: <3b3d8f60e553af09a51b501b8ff5406fa5e898dd.1749006565.git.xiaopei01@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1749006565.git.xiaopei01@kylinos.cn>
References: <cover.1749006565.git.xiaopei01@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_041500_626880_2CC8DCC3 
X-CRM114-Status: UNSURE (   9.64  )
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

Since commit 7ef9651e9792 ("clk: Provide new devm_clk helpers for prepared
and enabled clocks"), devm_clk_get() and clk_prepare_enable() can now be
replaced by devm_clk_get_enabled() when driver enables the clocks for the
whole lifetime of the device. Moreover, it is no longer necessary to
unprepare and disable the clocks explicitly.

Signed-off-by: Pei Xiao <xiaopei01@kylinos.cn>
---
 sound/soc/rockchip/rockchip_sai.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_sai.c b/sound/soc/rockchip/rockchip_sai.c
index 79b04770da1c..2ec675708681 100644
--- a/sound/soc/rockchip/rockchip_sai.c
+++ b/sound/soc/rockchip/rockchip_sai.c
@@ -1448,16 +1448,12 @@ static int rockchip_sai_probe(struct platform_device *pdev)
 				     "Failed to get mclk\n");
 	}
 
-	sai->hclk = devm_clk_get(&pdev->dev, "hclk");
+	sai->hclk = devm_clk_get_enabled(&pdev->dev, "hclk");
 	if (IS_ERR(sai->hclk)) {
 		return dev_err_probe(&pdev->dev, PTR_ERR(sai->hclk),
 				     "Failed to get hclk\n");
 	}
 
-	ret = clk_prepare_enable(sai->hclk);
-	if (ret)
-		return dev_err_probe(&pdev->dev, ret, "Failed to enable hclk\n");
-
 	regmap_read(sai->regmap, SAI_VERSION, &sai->version);
 
 	ret = rockchip_sai_init_dai(sai, res, &dai);
@@ -1512,8 +1508,6 @@ static int rockchip_sai_probe(struct platform_device *pdev)
 	if (pm_runtime_put(&pdev->dev))
 		rockchip_sai_runtime_suspend(&pdev->dev);
 err_disable_hclk:
-	clk_disable_unprepare(sai->hclk);
-
 	return ret;
 }
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
