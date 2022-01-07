Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A619C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 23:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2e877OM1dmaz4hEToqb1vA5149wJBvQN3bUq51Hkgw=; b=2mz2qacB6b/kIP
	ZylDT8rzGR6QFgrBbPbgArDLKnUAbWAYHt208ZAFUECLaiYK3XeIVnhgPV4TtDmbxJKk2P8YYvDKd
	H4SzdKsyrG/rnAHNZLCw43le/eGeheW3klAzmQ2JQVShBhKViZyxJgHAodXT57bvaKZMQJauOVakw
	ONCYuC4DZNyPtDuTUqKZ8vI8tbqhmSI58cT4oFcEd/J1zN2XR+vUQ6SBIEf2iI4HwC9ROUI+EM0av
	Zo1p5XqZuvXEsnvlz8Padizve+SqeUGSEpkJuBSNpv1SM6zAlk/oble3qqwxLcJ3qG4W74jAR34oN
	BG0YSIxQ7VSd5VKXMICQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5z4k-005Zfe-G0; Fri, 07 Jan 2022 23:55:14 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5z3F-005Yoc-0D
 for linux-rockchip@lists.infradead.org; Fri, 07 Jan 2022 23:53:42 +0000
Received: by mail-pf1-x42a.google.com with SMTP id 196so6500038pfw.10
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jan 2022 15:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BwZYnZ40KbeJ7AlpMWe+FaFD9GCv+xkqOCr7TXF+b3A=;
 b=cq+rL39e2SuXbNV4R/NBEY/tbIQC2k7A03THZsAhtXI3Wkr8/JpilReV4Fghu8TgMh
 1CPQXkneJkFGvUaCOvkxRZDzc9HZiFk6Z/hla3uQPk99FB914B4StlrYZfVj5SfSKuPS
 OYB+Ql1tjc1P7xattSY46D3sLwnAwQA49pMeA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BwZYnZ40KbeJ7AlpMWe+FaFD9GCv+xkqOCr7TXF+b3A=;
 b=orYVFB9aVgmFoN038TuPzaTEZlIhHK7WCm3fSzA2N66OAqNyL/Egk2oqYceYsWOAOz
 6pdep6yJ0JyXoO7jIlht/9m9Ne18qxB+fc+lkQdc9JkcLjJFPHt0LNEQaEb/FpKerhbr
 A0ft5HgqNy3vsownJx5wEZsb7h8z8oXDHf+f7v5W2UYwCDEOMi4x3GYFRTkO6kshEkzC
 X2M+4DHTNtt7V3zdyHtMlALINroa6qWut9VjYQ+ecQcIzBu0ASSZd4j+ABjgBT5ZtYfK
 tcRPNPi+aODEetLPCSBHYUWPYqaBkPbUwAiMqA+YKKclOrGzQfNMS+yujn4TFIXI56VI
 TKfQ==
X-Gm-Message-State: AOAM532626sG1FpkhUH2ZS2os932rce+rkbYiqZGdudeTSwezuzbyFY6
 Z2LSx9HhNVEeB8K2ATIYX07grg==
X-Google-Smtp-Source: ABdhPJwXb0FrFN8WR31ai2WKeI7DfmoehFLv8X/wr7YuQYumhseqi7xnA6sbbMiM/sFeYOdpRZa9iA==
X-Received: by 2002:a63:914c:: with SMTP id l73mr3103999pge.471.1641599620106; 
 Fri, 07 Jan 2022 15:53:40 -0800 (PST)
Received: from localhost ([2620:15c:202:201:db:1c60:693f:c24e])
 by smtp.gmail.com with UTF8SMTPSA id p16sm55372pfh.88.2022.01.07.15.53.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 07 Jan 2022 15:53:39 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 Derek Basehore <dbasehore@chromium.org>, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH 05/10] PM / devfreq: rk3399_dmc: Drop undocumented ondemand DT
 props
Date: Fri,  7 Jan 2022 15:53:15 -0800
Message-Id: <20220107155215.5.I4bd77eb751d5bfce8346bfed576bcacb28e4550f@changeid>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220107235320.965497-1-briannorris@chromium.org>
References: <20220107235320.965497-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_155341_081592_BA4C397C 
X-CRM114-Status: GOOD (  11.63  )
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

These properties are:

* undocumented
* directly representing software properties, not hardware properties
* unused (no in-tree users, yet; this IP block has so far only been used
  in downstream kernels)

Let's just stick the values that downstream users have been using
directly in the driver and call it a day.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 drivers/devfreq/rk3399_dmc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index 293857ebfd75..e982862f6ac2 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -430,10 +430,8 @@ static int rk3399_dmcfreq_probe(struct platform_device *pdev)
 		goto err_edev;
 	}
 
-	of_property_read_u32(np, "upthreshold",
-			     &data->ondemand_data.upthreshold);
-	of_property_read_u32(np, "downdifferential",
-			     &data->ondemand_data.downdifferential);
+	data->ondemand_data.upthreshold = 25;
+	data->ondemand_data.downdifferential = 15;
 
 	data->rate = clk_get_rate(data->dmc_clk);
 
-- 
2.34.1.575.g55b058a8bb-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
