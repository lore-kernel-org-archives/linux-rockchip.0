Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05AEC4320A
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:43:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A921610CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:43:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7A921610CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/C71Kc4e5Arg2agMre/YatC3tVJEALM7xJnZYx6s3Ik=; b=Rgy05DrAiExZzE
	VsWpt1wPlvKrg5fIw5z389mUHLjyXIXe/ztnN+fdfxTBAgfux539wrHe9+jcwFyh26JIZYOl247AI
	A+IBFp0ADdj0KVckg5prHlBwYg1SeQXjcJ8Q18QVEm2lXw1rPLxFb6N/3Lqzu0le8vnoR0V/RWV6u
	Y5YNTNtxbEzOoJZgZnxHbV0jsHGN/UZqaa5mI2W9ZEuME+5tji8eP8vBUeNcAIXF8FeUB+gsvK5Ug
	jC3DzTdq+Qp4zkwTam1BQt0DeuhU4GK8A/Mv/MJbWPsz4g4Yqe31Vihithh2ext1Nk/aTYfjCCoR7
	8/xbE908m/XYRSRSbWtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEHYB-00BCFJ-6b; Thu, 12 Aug 2021 20:43:39 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEHWc-00BBPt-1v; Thu, 12 Aug 2021 20:42:03 +0000
Received: by mail-qt1-x834.google.com with SMTP id d2so6397082qto.6;
 Thu, 12 Aug 2021 13:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yXImnqZERav+3w/cyHb8wggYxQXzQW+9n8PpB8P0B2M=;
 b=usm5jESwVuEx39403DEzOX/iOpRPGkXcTdPc6I/xDG/6cl72ZcYCdVnAoCHJUeyZ9/
 KD5H3a0mCF5PjztxPo+5cr6SHbpbiJPCCEptDNN/2/bkj/O5kkopxXhmWAyjqLumLWO7
 aBfLXfcVC3Iv2KZtneyMTow7xHrRF7uuAUkxYwj6T5rTu4p3JBhjzsxPogYFZYD2KIkp
 h7VKKq6nD43UXSmTVJfcHKt2LDJqfSIFIWtIoVqIyOtOYWweeB75a+LG0eSsvl4JqSgi
 dBx1CjNXqcBlGLgxRS/cObY47JiCHWKWbyaSmXh0DoktqUH1u8G0p1YV0EV9yIgXAMpE
 L9Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yXImnqZERav+3w/cyHb8wggYxQXzQW+9n8PpB8P0B2M=;
 b=Ctt2LkbC1CVFA5kJZvxRemUgvshUdpUVWSfmOHPmZtMO+wxdj4GWC6S0uzxhakyuBZ
 yRd4twIaKUndzpbJ9P28BFx4S7QaF7v+9vgt+yuohykgma8GVhwxHc7GkcYbaaI6xJrU
 tacfpwJXQ8CyP/Nb9XhtecKU2RRu6kXaUq0WNlqVQsfS63epik32avP1ZQowjImL6Cr3
 WjodvluQ3udEiJtJb54SJrCsEHncapA1r6+P9oQMKcOc8A+AeMPhSnmAfj6NNBVGFZ/2
 yLSKW08UU/8vzDwD+aj9Q+RN7OfHG4SH5EK8FkzcKBkLU25Ht3kEBh1yMl4KiqsynG/X
 NjxQ==
X-Gm-Message-State: AOAM532D5fd9wqGkfMsQH3z/tPF8RfmIjL6F9GPyS9hx6DFJLud3yWiK
 NBIOZwV04NgENERpVY7LlPM=
X-Google-Smtp-Source: ABdhPJy2RX7/mb2/P2Gi72QdHX2DsNgx/ybOEpWl/TEzJP8z0OZU2joHZRJ1zmu0jAe+6w9/N6s6dg==
X-Received: by 2002:a05:622a:2c8:: with SMTP id
 a8mr5634300qtx.137.1628800921025; 
 Thu, 12 Aug 2021 13:42:01 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:e89f:d077:9161:1bd7])
 by smtp.gmail.com with ESMTPSA id m16sm1940361qki.19.2021.08.12.13.42.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 13:42:00 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/8] phy: phy-rockchip-inno-usb2: support standalone phy
 nodes
Date: Thu, 12 Aug 2021 16:41:12 -0400
Message-Id: <20210812204116.2303617-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210812204116.2303617-1-pgwipeout@gmail.com>
References: <20210812204116.2303617-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_134202_145077_1A1D4436 
X-CRM114-Status: GOOD (  13.29  )
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

New Rockchip devices have the usb2 phy devices as standalone nodes
instead of children of the grf node.
Allow the driver to find the grf node from a phandle.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 5d2916143df7..84a0c1d697da 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1081,12 +1081,19 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	if (!dev->parent || !dev->parent->of_node)
-		return -EINVAL;
+	if (!dev->parent || !dev->parent->of_node) {
+		rphy->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
+		if (IS_ERR(rphy->grf)) {
+			dev_err(dev, "failed to locate usbgrf\n");
+			return PTR_ERR(rphy->grf);
+		}
+	}
 
-	rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
-	if (IS_ERR(rphy->grf))
-		return PTR_ERR(rphy->grf);
+	else {
+		rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
+			if (IS_ERR(rphy->grf))
+				return PTR_ERR(rphy->grf);
+	}
 
 	if (of_device_is_compatible(np, "rockchip,rv1108-usb2phy")) {
 		rphy->usbgrf =
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
