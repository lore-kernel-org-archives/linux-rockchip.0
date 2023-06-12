Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71E83C7EE2E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jun 2023 14:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K5ln5rgR8Q+i/SaMU2kS4YyAMr+GgBP4BcLNYWjZhj8=; b=AcSsdoM+XEytVL
	xqpROgIyjuXVA6hkA7Z+wdrDx50yAy1gP5n8EgZYuqOHMy75+eDOVXNANEq9VaqDbRpPbvCg7MKUv
	DGCsp4ezt21uHxK9vkaZnIb9RCx/ek5LpcxQpmyhjghuBp5gpr/vtpn5Sg80WvlQlAx9Z6UCLJiZR
	t6EWyY0NW10A9jhy22y4VawMF7CVOEEZsY25seQrk/+RK1YC/+R8x8JB/L064ixAdLdUrI/7JiesV
	NWUcbkVMKPfFdRRKXy7WsT8jBxtXHxSR2TtkWGQ9ZpxDuScdkIEsF08KxVVxevSmbV8F5phmWD0yL
	z9Nd3ypQY+sOIaoprdfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8igv-004KJ6-0J;
	Mon, 12 Jun 2023 14:38:45 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8igs-004KGU-2m
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jun 2023 14:38:44 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f6d7abe9a4so32587245e9.2
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Jun 2023 07:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686580720; x=1689172720;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Qpp1USHGcqO04WoWBbryL5M8e9S80vQGjt+eEysyPmM=;
        b=qW3mxqp1UEKpHcv7ICrOiqLR0JCzOb7gUubLgpnxcZsMVeUNL17oNcibiuW5nNxgpJ
         n6EF9BdfZoPx+qFTuNBqiLegJ0Bx3yQ1Qpg6nF8NrywKQH3GC2olIgyE6AndvoKPMc/M
         fKyzqwgO17RJ7ey04hiWMW7bNhq+Yov2J02fwhqOPJZn04ugeyNY4WnE0ATv/mUw6zNB
         f7ZzN4wSQc3eS1/0HDAw7ma8WyQdVhm6bbWSdPC3c0wAWUlfr6LlH+hhzOJKskm24WRE
         2KN2JB1+XluXt65G7rZgiUrxPQGyhDMqHmISloRtV08H5vsmSeW8l1vwPiTWGsKNO0d7
         GBkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686580720; x=1689172720;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qpp1USHGcqO04WoWBbryL5M8e9S80vQGjt+eEysyPmM=;
        b=aku90iEY3LRBiYSVPviaHfI25/crOpYC431j5U74uBUZnw6OofwrVCfhyqH/pcC07B
         pvupmz/30Dkmz5JnJaIblW3VaoP/KZOtoduFQPbiqpETxRIBK2aAfJl1RNs55sUy/uh5
         bLh2vQQMIBYQeH6hdnOXICNmwR3qphA17hZJwXLeKBgxpLhctnOJbmUGpk7XPOUssBuD
         r1FZ9spTlL83O+GVH6iOLq6SUh7HVisKkfvXtj14FtELC5XtqYu0mwv87II1UI1Wlc1f
         8nPivYW5Wy6fEE6Olp2Relf3EO+eHypYReibhVpOQQfQffkUyF49ogdosgep1jrDmulm
         kVUA==
X-Gm-Message-State: AC+VfDyOQyRVjseGCf0E6xYHUKtmj5Zj3A75XO+fy/9rYsDjXzpaHrxh
	rasJd/l2s98evRqUjfdF0Zg=
X-Google-Smtp-Source: ACHHUZ4JXuS1VBcsFH33Jc5dY/EQj6s0sCmTvbnDSzwOcOUKv0+vt+vFWoQcOyPs2UGUzpUrNVQc+g==
X-Received: by 2002:adf:cd05:0:b0:30a:e9a9:a4e4 with SMTP id w5-20020adfcd05000000b0030ae9a9a4e4mr3912546wrm.51.1686580720220;
        Mon, 12 Jun 2023 07:38:40 -0700 (PDT)
Received: from archbox.v.cablecom.net (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id e40-20020a5d5968000000b002fda1b12a0bsm12721064wri.2.2023.06.12.07.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 07:38:39 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Sebastian Reichel <sre@kernel.org>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-rockchip@lists.infradead.org,
	stable@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] power: supply: rk817: Add missing module alias
Date: Mon, 12 Jun 2023 16:36:52 +0200
Message-ID: <20230612143651.959646-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_073842_898182_A1116A66 
X-CRM114-Status: UNSURE (   9.89  )
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

Similar to the rk817 codec alias that was missing, the rk817 charger
driver is missing a module alias as well. This absence prevents the
driver from autoprobing on OF systems when it is built as a module.

Add the right MODULE_ALIAS to fix this.

Fixes: 11cb8da0189b ("power: supply: Add charger driver for Rockchip RK817")
Cc: stable@vger.kernel.org
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 drivers/power/supply/rk817_charger.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 1a2143641e66..76b991e112da 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -1211,3 +1211,4 @@ MODULE_DESCRIPTION("Battery power supply driver for RK817 PMIC");
 MODULE_AUTHOR("Maya Matuszczyk <maccraft123mc@gmail.com>");
 MODULE_AUTHOR("Chris Morgan <macromorgan@hotmail.com>");
 MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:rk817-charger");
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
