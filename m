Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6315BC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 00:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erBrEOKe4O2l7ph5JFwcngUwLqKSyta+MgP7QDRRyTQ=; b=b7mtBl76SaGCc2
	hM9QocArZLjxss4HuGVoWShA0GtAV+SWuSYuoN+pFv1m/g6fLS9E4VXXn2E8EADFc1ux05lUdqiKB
	G7SeI6L+MfC/tvgaOO2PIR9d/EcfDdTeUbZQ0wQUfFu4QkGdSA9NyG9/TDBUuChYaEkZqQXb7rsKk
	/dFVyxJ5ejJMrU43ztD/p8kQvjgs1OSXn7tp5dGquTqu9WRjOVqw8bN7dMwT7QlFgax+pwlEY1JuH
	u641CHYArVVKP0Utlaz7s6vBWuqBH08MkEK3dKN9R0t/vn2vDKPgxHbgx5rtltl3TbT5VJvoTz7s2
	ogwXXyd73KKxEN9QztSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRNSV-0023Tn-CM; Tue, 08 Mar 2022 00:12:11 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRNQg-0022JF-OF
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 00:10:20 +0000
Received: by mail-pj1-x102a.google.com with SMTP id
 fs4-20020a17090af28400b001bf5624c0aaso829193pjb.0
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Mar 2022 16:10:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NhX5SlYl7BXLmMZAasTyx4ByzRymbQLodzBvBVJqn84=;
 b=YFKkSZN5IsoC+uHTyxgHguq+/wJgkUo4bsSgIDnrz0qlLwM6zV1HBalJ2kha3O/owJ
 LJmHd4tfW2regTgvT0rLqWpbvn9pJ/Vv0B6JBEy4/AEB+LvnKAtudJkxXyD8mO+wmytX
 PcqNKd+sH5JSzBCBpRfrOAwrGbAL4obRvkteQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NhX5SlYl7BXLmMZAasTyx4ByzRymbQLodzBvBVJqn84=;
 b=lXDpiRpKeC3XAiUD0xVNo5EyngZOUZZ37rLPcl2kMTfo3TuDw0QR5rjmspXSwULNLQ
 CSkapdyToLjnYfONbJqIjFwTMyy4QPv1MkT3Zz4MuSqu7msLkv5nyk+0aNL+9KmWSwS4
 t5AR5Q4OH2GvisLgaN3JvRx2TUxVlDqd6ozKGP9lTEzTiNmnw+eI2U6AIU7A3ey5az25
 t2/vyRxRoeuHMj3ACgoxoe2/E2J6Zme5paLtI3rl41QCz1YcWnyYJzCZtzlkp9O31ph9
 /AhEPlvSRr1xAPO1JUpMKUAMWmXf5niNjFuLUyfLvkfmsEZBBzCq0FoeXo2L1B861wJI
 DgZw==
X-Gm-Message-State: AOAM532haUBgyL83jim310u2zUi8laO/yPO9GT35uP1bH5ZFQrcTZrJ9
 S6utu33449PZVsyp0hrlj+EYKLwPCKLOdw==
X-Google-Smtp-Source: ABdhPJxQUs9wwprlA9jOWSx+o7EiW9t5JGe5afQ9CcxF+0aKMeDDa1CF1TKUG2Hj29RvKz6CgwS0Lw==
X-Received: by 2002:a17:902:cf02:b0:14d:54cf:9a6a with SMTP id
 i2-20020a170902cf0200b0014d54cf9a6amr14320856plg.137.1646698217819; 
 Mon, 07 Mar 2022 16:10:17 -0800 (PST)
Received: from localhost ([2620:15c:202:201:e551:44dc:2842:57f1])
 by smtp.gmail.com with UTF8SMTPSA id
 ic6-20020a17090b414600b001bf691499e4sm463733pjb.33.2022.03.07.16.10.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Mar 2022 16:10:17 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Lin Huang <hl@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Derek Basehore <dbasehore@chromium.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v3 06/15] PM / devfreq: rk3399_dmc: Drop undocumented ondemand
 DT props
Date: Mon,  7 Mar 2022 16:09:36 -0800
Message-Id: <20220307160918.v3.6.I4bd77eb751d5bfce8346bfed576bcacb28e4550f@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308000945.706701-1-briannorris@chromium.org>
References: <20220308000945.706701-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_161018_833696_37459BE7 
X-CRM114-Status: GOOD (  12.41  )
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

(no changes since v1)

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
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
