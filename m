Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4686C6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 16:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIWidRO0/V0dIcoJ1LiWCw38OS+PqVV96dxsEdEQFkg=; b=yGUthcmZcPb24H
	4X6K+yBQG0E0OApbCtOx8FqYaxx2HA4XjYtpwGCmLDy7+gyg02nudi/Zjv+Tr7Z1hbCS0pbZFtdos
	cXviBqBx48/r61xM+9TnO4HgcI/ifDo2e+NHskogrFS3gtmfYXYYlTkxBMcyVe5C+hwlwHhWwS9og
	fiGNILGE4ogr2h86hQESNlsq2MPhiUuusyILJQZtcfgYqco+Z+M2mYvnDn8+Qqm/eJjOEXd0sRrsf
	axMbSXSkoE+mItjf58nzUNTxzxm9+f3uq9IOo9wQz2KI79j9CbjzLoU9g41bv8rJOhyk2glWP+aT7
	RKTPIRe4Izqjkv0VVWFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obl7Y-004uqm-F7; Fri, 23 Sep 2022 16:01:44 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obl7U-004uoe-2r
	for linux-rockchip@lists.infradead.org; Fri, 23 Sep 2022 16:01:42 +0000
Received: by mail-lj1-x22d.google.com with SMTP id a10so636558ljq.0
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Sep 2022 09:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=qD5daDl+vOOq8ftqpSntpNHnZTdUee7vKc03+FuNLqE=;
        b=frMna9iFlWzEGyx0Bbvws0MCcBQUbsF3MTVOyTIuVian7SjUD/rxMIy83v/AmMSm+V
         KXimR0rBBYb4QvS+H+5whIQE3u2TVLq292mrkR32AgGMsYyiSzdNm7bv8oBSlv7F3sjG
         ufZOyDkzIKtu3o2BaWJsOE0jI7HB4okG8SPqmhod4fcHrdTAwDmA9o9Fj1b6OEZ+X7bt
         hEfWZrW7J7MyLiKTBkaGrkla/Y3ACkUQtheAJXJOaqga6X/d3QDkxn/XbMVgAQNQpcHN
         2bMJ81NA6qeDWh6ioYwTKMzWfLt3ngYaHQMw5NZwe5Vn4eUY9w9VTPRQ/sEGUafeq28f
         ZTrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=qD5daDl+vOOq8ftqpSntpNHnZTdUee7vKc03+FuNLqE=;
        b=zPCE/zTyXMBmZQfByANsePIwaS/62oeXFvWfNpR2RjmWDpSAKos4K6w+PDVHn3Ga/g
         A4TdM1VzqB7SmncHlGCKqUGMVp8kn7ojKLV5tZCY/05aHuw/CpG0EOs8A/ANQbf6JG/I
         rJYVWjD5oPH1hDV0KOcW1UOAXtd2G+sMuyTopSSZCpmFomKVcdQXM2nBf+pdhp5GGFum
         3oOPm1EpZTSRNdag6SmnKzBxbaLsI8KAeFhif/rHuPgRAXFfiCeYeCV0tQWnEu9C7RhU
         5oWGUKFrdtybDc9jr+WEc+seze4rGm2vBjxP5djvrihsIDXX2jABb/HYsvUfltYSUBAG
         1INg==
X-Gm-Message-State: ACrzQf3NUijQqGq8T9raHpiuyrzjUJ8iUzouBrPbJIULxh09DYsJZHRO
	GLBoW4gSEmg0rMQZO0UcHRAiZVNHcG04Yg==
X-Google-Smtp-Source: AMsMyM7MJ8+hEFbUVcMFscwdqJVkR2/2iZaSZ5oUiuOQDrONTRwYc+gbIpN4ZwndxRMEtM5w2san/w==
X-Received: by 2002:a05:651c:305:b0:26a:915f:45e8 with SMTP id a5-20020a05651c030500b0026a915f45e8mr3131315ljp.6.1663948897086;
        Fri, 23 Sep 2022 09:01:37 -0700 (PDT)
Received: from U19.ag.local (static.187.76.181.135.clients.your-server.de. [135.181.76.187])
        by smtp.gmail.com with ESMTPSA id n24-20020a05651203f800b00494792ea34esm1498611lfq.273.2022.09.23.09.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 09:01:36 -0700 (PDT)
From: Alibek Omarov <a1ba.omarov@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Alibek Omarov <a1ba.omarov@gmail.com>
Subject: [RFC PATCH 3/3] dt-bindings: display: rockchip-lvds: add compatible string for RK3568
Date: Fri, 23 Sep 2022 19:01:15 +0300
Message-Id: <20220923160115.2946615-4-a1ba.omarov@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220923160115.2946615-1-a1ba.omarov@gmail.com>
References: <20220923160115.2946615-1-a1ba.omarov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_090140_146627_1EDADCD5 
X-CRM114-Status: UNSURE (   8.07  )
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

RK3568 SoCs have a single LVDS output, that use PHY shared by two display
pipelines: LVDS and MIPI DSI.

Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>
---
 .../devicetree/bindings/display/rockchip/rockchip-lvds.txt       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
index aaf8c44cf90f..ec8a8d05368a 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
@@ -5,6 +5,7 @@ Required properties:
 - compatible: matching the soc type, one of
 	- "rockchip,rk3288-lvds";
 	- "rockchip,px30-lvds";
+	- "rockchip,rk3568-lvds";
 
 - reg: physical base address of the controller and length
 	of memory mapped region.
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
