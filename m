Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17282C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 23:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VyWPLX4CFP+6JgdME2bJbAYndtkZLOwNtLSG5FjRkI=; b=cBwLYJkzelt1WQ
	rlKfvbUlWDp5fQ/0xbo2GyWCq33BMGpqdDrk68jG0zXAcp3FQDEOeCtpzbw+Ku0I78rzBASKgpSqU
	KwxkO2LpLEy7gsg46Mu4A/zrHjDn7J5xQgMNJhcYpeCBwyhKNHogw68D3QTUEafX4F+tgOn0sMKkB
	RaFpBf0uOKPHHWCiagM+2+qh+gCwitBI1RcV1/q8PH4AAVg2VwPIrjcxRrMTeM1Z4FhEpmBaB++CU
	hlbpqI0tuX5b8/q0yBK32THJS5ebyBHcsWPR8KjgmN/iZTJqi0zCLOmC9BIm9Gxw/omlYgVksLcoT
	p2g3OBo6oWL0T2T1+XQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDDuy-00HHZw-7G; Thu, 27 Jan 2022 23:11:04 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDDsa-00HGNV-Du
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 23:08:37 +0000
Received: by mail-pf1-x432.google.com with SMTP id e28so4375832pfj.5
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jan 2022 15:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S7JkzSF7lxJgCpd6ZXDkhdvjrfqNJJ5Wge2dT4ZFw7o=;
 b=QkHrDYVuucq5tGrwY+7ofVKvafE8N1vG6K7wssS8MFOLQ8A+qT44Pw8OkxznULsPLE
 fU0ppcxIbnnoe3DkKlONgnWitZdR6bHPjT1zDXJKdypl9iivtwyPlKX/9eCq/YqaK+Iu
 BWm6b0pbXYtrWPXRj7GPsRq0ghVWt5Gr/dEag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S7JkzSF7lxJgCpd6ZXDkhdvjrfqNJJ5Wge2dT4ZFw7o=;
 b=W+yoyDOuy1lz+d1UlPyszP7L7COtxcN7hTlZeUSV/q0WCiE/qL4ER9jGHQzSltHvZr
 6yKJel4JFOXvflD/gbVse00RuJr8wOeKJ+QesoVqfrRzI4kL0EVSzzZruKs7aO1cMWsv
 hA42BGXZqpYjsbmHC/5mV9oApcjrvZowRkLi+2d4rYkPkruGAXUqihgNPlTpuXE9bHbb
 2t/osD86v/7bvQ88GxiybmFwin+YsHucVxW0TNEVXbn2OxtqlC/dmyXll+XTlgIRxffm
 kQtwWvHicAdtPRicrCuIjiD7QHxL6ScapnfWy5k1cGLu2osLTw5ebtmQ3EFj5NP0QLLz
 bYEA==
X-Gm-Message-State: AOAM532t/ikLRf2YhsTOMRV2qfljsY2PRpR5VfNe5pmVwA9lIMUvdjri
 hz5DJU1K4RATxoeIBE1ZM2CUtA==
X-Google-Smtp-Source: ABdhPJxGSe8Or1J7VdvMjjKei+W+lXlkhGyA7m0Vzqh1YDxZLw6gaRpY1PqHnE/am+HMGfaQbFydiw==
X-Received: by 2002:a63:6c44:: with SMTP id h65mr4438729pgc.100.1643324915912; 
 Thu, 27 Jan 2022 15:08:35 -0800 (PST)
Received: from localhost ([2620:15c:202:201:723d:38a9:9e7f:3435])
 by smtp.gmail.com with UTF8SMTPSA id f8sm4740841pfe.204.2022.01.27.15.08.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Jan 2022 15:08:35 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 06/15] PM / devfreq: rk3399_dmc: Drop undocumented ondemand
 DT props
Date: Thu, 27 Jan 2022 15:07:17 -0800
Message-Id: <20220127150615.v2.6.I4bd77eb751d5bfce8346bfed576bcacb28e4550f@changeid>
X-Mailer: git-send-email 2.35.0.rc0.227.g00780c9af4-goog
In-Reply-To: <20220127230727.3369358-1-briannorris@chromium.org>
References: <20220127230727.3369358-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_150836_509979_9D7C6D35 
X-CRM114-Status: GOOD (  11.75  )
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
2.35.0.rc0.227.g00780c9af4-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
