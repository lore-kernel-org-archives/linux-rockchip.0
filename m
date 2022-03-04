Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BA05C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 01:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gzhedgwrEb1Bu+U9fZdfYtAA24JzNMBFhJGj5QrogfE=; b=KJyB0gojQ78Zu9
	2eHC9BWs4MtYdMJIFEG89lWTQVECPS9BFNe8zGfT8wpQvcYDVFqR7DwEqO3xI2UV6/08GVrKfIz42
	5wR6ueukzJ0PB5PNTWm2J2L9ucbtBujtT4FbLJiO08O8EVUZu4mMxutNTCjAH2Ihgi9ADXqZsNc1I
	2b4aFsOYWEwS2pNawi4xuZd6rEPWMdfAgSqUPteirKOBqVHkjaN7zfqZ/PRgdklr+Nc5TuneMaCe+
	euMoqXzN9Gwqf6+BTEk1xrCXUEFGGB2vT3UP5Fjb6KNsudn9UKf2taQITqSUCCwI08mzb5CHXP5mY
	rbhN3hF5fw662GBO3Rzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPwaI-008EJ3-QT; Fri, 04 Mar 2022 01:18:18 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPwa5-008EEy-GQ; Fri, 04 Mar 2022 01:18:06 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id gm1so5532056qvb.7;
 Thu, 03 Mar 2022 17:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ggeqlOlOK5Q/SRrSVwrpS/gLuG/ZypMb8lhTqoNFRrE=;
 b=no7tMwc7EA/95jlcIFo05RFQAZKfo9PoFLJbzXw2aTnkwdRB+dZeJ7U470nh3jPdlu
 mJluOu4sgwofvTDAFXzQ2vtr4Lha0y89JRA56loSR6LJAbTTAIvW6MChCakrfSg9uxIC
 t/bV7xUGte31kBzZt8J6byCqQyZGA+WsifcwrLvqPInAZkd5Zt8Vzczfei32D2qlWbWS
 bg1yJXpp7BHzSR5hFzPnuAeGWB0pHtFZkPeBwY9TRRjFhuCtjRB9T8k7EMhn14K3vnX+
 LD15RuDzt97JEqANGIUQiSfYiszuVeMm/9hmOeBJegUZLBti6okYUWKpIk1VTGXRlJiU
 JNoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ggeqlOlOK5Q/SRrSVwrpS/gLuG/ZypMb8lhTqoNFRrE=;
 b=GCLaFmuOdju/SHzMPkO+C05f5pYGdSot7DzoOtLGcH6RTQq2S3wO9lTvAXgDveHND8
 h4/77uHLlk3YHCienLPJ39BHimZ6WOJNIusLdTh//jYxqYSnMHoljPUrxfIxSOk9aYOk
 eaUg5JfBkoZKermHFcBx1srm/BItYgkfYMJB6PNCMjuxBdzWMcGig4k+EiBz1+R5NumJ
 86NSDGE0wzk2E63TUO493jRquxEEG30OPFwl9sod9TIJZIVo+wBjPHpvXMsqk0xDrzeN
 s3fS60NQLsuaqWb+kSEtykSekc3rilGjeH6qAMYUqXe+eAo2p/acZTV5Y/n60V5J7BYk
 OO1Q==
X-Gm-Message-State: AOAM530toTYswEdIUKdiK7GaNUp5NFxgt3F/q7Q9guBaOHAAMhgu9N7L
 5MPDUy3PBOlqADBiRWJC6nk=
X-Google-Smtp-Source: ABdhPJzQTNpr7Wkq3+ARwqwy+LeiTyQ3YmPta2upHCMc6srbN/ncpprdDM8g61zbOTet7pygtjoZ4A==
X-Received: by 2002:ad4:448b:0:b0:432:393d:e8ae with SMTP id
 m11-20020ad4448b000000b00432393de8aemr26499737qvt.127.1646356684138; 
 Thu, 03 Mar 2022 17:18:04 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 u26-20020ae9c01a000000b0062ce6955181sm1814302qkk.31.2022.03.03.17.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 17:18:03 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: chi.minghao@zte.com.cn
To: kishon@ti.com
Cc: vkoul@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH] phy/rockchip: Use of_device_get_match_data()
Date: Fri,  4 Mar 2022 01:17:55 +0000
Message-Id: <20220304011755.2061529-1-chi.minghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_171805_582133_B7D13268 
X-CRM114-Status: GOOD (  11.55  )
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

From: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>

Use of_device_get_match_data() to simplify the code.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
---
 drivers/phy/rockchip/phy-rockchip-typec.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index d2bbdc96a167..d76440ae10ff 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -1105,15 +1105,14 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
 	struct phy_provider *phy_provider;
 	struct resource *res;
 	const struct rockchip_usb3phy_port_cfg *phy_cfgs;
-	const struct of_device_id *match;
 	int index, ret;
 
 	tcphy = devm_kzalloc(dev, sizeof(*tcphy), GFP_KERNEL);
 	if (!tcphy)
 		return -ENOMEM;
 
-	match = of_match_device(dev->driver->of_match_table, dev);
-	if (!match || !match->data) {
+	phy_cfgs = of_device_get_match_data(dev);
+	if (!phy_cfgs) {
 		dev_err(dev, "phy configs are not assigned!\n");
 		return -EINVAL;
 	}
@@ -1123,7 +1122,6 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(tcphy->base))
 		return PTR_ERR(tcphy->base);
 
-	phy_cfgs = match->data;
 	/* find out a proper config which can be matched with dt. */
 	index = 0;
 	while (phy_cfgs[index].reg) {
-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
