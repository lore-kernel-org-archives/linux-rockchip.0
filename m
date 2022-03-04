Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDA99C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 01:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HAm64Eqq1CpLANAwuXuXYCH4icsy7KjdzdMhhypgrPY=; b=Qdf4RcjPcez0A8
	w2mWrw+bAEaZdrGjE3lcZoLpI1trz7pk6AlBiFbvomolfsBCYsAQsz3QIruZhmQsLZIyQ5hBK4wME
	DpG6xLG9T/iympLEmGYBV0f41i9CNWydkS3znE0BJwJU5pbrU8G09uvOHqSBBk4QIZKhcpiFrVyQs
	5Pw+qlCSV4MYCfleBnklS/Rl8DKRVFgU4APQOy2kQIE4YXF9rn8Jks8aa+KhgJgSOEpQl+/3epIh9
	lNld6SCHTU0TC6kQa/s1P56za3IBZpjHBlqyW46/PyrOztHLMPnmNfzkJILKxeQqaTRHei39fcUte
	LpkYb4fLumiaqssFBCZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPwZP-008E5R-QU; Fri, 04 Mar 2022 01:17:23 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPwZD-008E1h-Cd; Fri, 04 Mar 2022 01:17:12 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id f11so5541883qvz.4;
 Thu, 03 Mar 2022 17:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nef46n+0WiAiPTBLsF8EixaVYmTgFHXQPrMltQQQvcc=;
 b=pkXHG1K2UDN7+lz4dIByc+OJNuFrtjXMd/IOu9/RyQ4JPrwLat06ySKgkjThxRjWq2
 ryurXjG3x+vH97U5O0P8F6zkMq9iDuAo9VjTkWd8uzUIhO7+KrtNw++uzZw/qPftA3nH
 93oN9HbXjlYa3aiWW9zJEL9wPoMltff31cpxBinNJU4XqFI4w6bsfK2+iCO+NniuHrdJ
 fD8hLSOw0K3fYy8ccokUX7J0XWYiASsjDQm6Q2hh5UCKqhsefXkKr6g+6CO3/R0mofj3
 l2/H2Cs75lvJqFE+dXdquSzxrbIW1Qn7K9okj+tfvBO/uVY8QdjJLVvs3KyJqzjSS8iO
 rg8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nef46n+0WiAiPTBLsF8EixaVYmTgFHXQPrMltQQQvcc=;
 b=YIJ7osUQHd1FG/xlT4CHOaE4qE5DmSG2FrwYuuz0/3Yt9EdpJPZFd0pb74IQtCvwvz
 xZcdzX06QtqJzc+XGOLwjFaEgprRsH/FoMtXNfoQ7qJ43s9nYoow/x8p8xj/9iSOOPL9
 v1lcgiGBFnq7PmLMA/07p977p/jJQ3uP4w9pGEJj/ipP06H8VqVl7QDZSpSwwzldo/K1
 oW04QIu2paXiJIGVtiCUKDxRDsOomNMqY7hG/S5kRp2vG9Typs3JeSN+VjPo8xOcMmrD
 O5y56txb0Uw9uxcDrvn6U4gu+efj2cfUDWkBlji2MxJ51D1XNUh3vFC2xKDb/rzqQlEC
 iPKw==
X-Gm-Message-State: AOAM530S5rSeT49e2h4PUAUiqSGFCMcpFYu25EHljkm4fDG9OdcTfMWd
 KAZbzecj3fmfuwLqjb6Xlm4=
X-Google-Smtp-Source: ABdhPJyCiWhvNoSkjckC0Z87Kpf+RSjHvDOrCA++0nJbz586ipJnqDuk2Iyijkn7FlbFS+hA54yKUg==
X-Received: by 2002:a0c:9029:0:b0:431:37ad:c8d2 with SMTP id
 o38-20020a0c9029000000b0043137adc8d2mr26009012qvo.71.1646356629977; 
 Thu, 03 Mar 2022 17:17:09 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 x23-20020a05620a14b700b00648eb7f4ce5sm1725895qkj.35.2022.03.03.17.17.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 17:17:09 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: chi.minghao@zte.com.cn
To: mturquette@baylibre.com
Cc: sboyd@kernel.org, heiko@sntech.de, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH] clk/rockchip: Use of_device_get_match_data()
Date: Fri,  4 Mar 2022 01:17:03 +0000
Message-Id: <20220304011703.2061466-1-chi.minghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_171711_458366_AE45235D 
X-CRM114-Status: GOOD (  10.80  )
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
 drivers/clk/rockchip/clk-rk3399.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 306910a3a0d3..b1b67bfb63b8 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1634,14 +1634,8 @@ static const struct of_device_id clk_rk3399_match_table[] = {
 static int __init clk_rk3399_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
-	const struct of_device_id *match;
 	const struct clk_rk3399_inits *init_data;
-
-	match = of_match_device(clk_rk3399_match_table, &pdev->dev);
-	if (!match || !match->data)
-		return -EINVAL;
-
-	init_data = match->data;
+	init_data = of_device_get_match_data(&pdev->dev);
 	if (init_data->inits)
 		init_data->inits(np);
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
