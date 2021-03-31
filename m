Return-Path: <SRS0=G7C5=I5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9C8C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3F6EB60BD3
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3F6EB60BD3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cnWfCE2gutTY/2PqD9C3aiT9Piln0m1EivTKIAzeE+w=; b=aN23FI6PTH/xkU5h/XgiH5DWU
	bgxeRG7k/p+B0TIHjkebQRvDhgMsXSb8wdMwPScjg4PX4SPP84wzdOOi8FHkzaaKz2zgbQye3aDvZ
	9f/QR1qRSLCAKoyWYmDGWdHvrcgLVIWBlx3RLuxG55GDirid/nXqhYctxfJWu4BctDoTcGUawX7id
	P6zySCcxQmGU5r8khQUyiiFE/0OIBN0Xym6QTC5WMMwxw0ElPbOz0sG862w/ddtqns+PjoitNAyPP
	6PvxeP0aRhr6soZfePqJjgClYzFjO0UKvQ4AkTdXDO10ielnxOPQvmtCw5wWaAnZNN76HUoFlhwef
	iwcuwxjUg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRekk-007CXu-15; Wed, 31 Mar 2021 17:35:38 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRekc-007CVE-6G
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 17:35:32 +0000
Received: by mail-wr1-x42a.google.com with SMTP id j9so18778651wrx.12
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 10:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6B26f3IlajNfnhYcTkXd3V9kuoJqzsJf9D1voUcVJjo=;
 b=sHAnutviLbGjmnNVxwDzBbGsYBjFmcvd9GqZeWN4FNVgI+VEMILCalzMLEZp+Y7wlf
 5+HcTCwhnhTOeiaeghRWf3EesgVE88bbiKDT50jWNTGhe/ExryCFoZVKQamI52EXDMpI
 4TWXBZWPDtZbeUrhiOPrw3t+lst0vSD9wu1bBMKfIa38WxM1yPn7WBQZuuruhGb/+l2U
 XVYrN2sZ7/0emmM3jv8yvjPyOInuzA5iaY4vD93bL1N0GTIdzrrnWClCs1Faw0tFxHSt
 HqtIQqIv3LRW1gy4rewAPJD5hTLYunnQsPRBBa+K3y418Unqx2ulXyJOvapPymStP/DP
 U60Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6B26f3IlajNfnhYcTkXd3V9kuoJqzsJf9D1voUcVJjo=;
 b=gSGY7CLJfBtI2KOxU4eHHKDMAAzTnArd9ACH8YYQdMjUGc9tmx5k55Z0zu9yASyQFB
 uYzY+oDapSZDk55sNqop8fJ0GwIKazxW65/yAxt0SWAcOi6nN8BF+ENCFd/gqa8ocYeW
 HFgiWQhVjZbWQEqy7g04mPxD/7CBNCiRBM61Xc70MA+X8NHxfUFb8UxLovClvxs9sfHg
 gAqGBW7qY/WTwJhDaS3DJgvkPAoBSl0w+dkaXO6bGFTH4B2+b7ni5xNNA5n7it9pkQ4T
 dJfB9O0beQgTzyeiYdXsMYeLKWDcruVKn664Xkiea/t+Q4umCFsVSL4LkKaLoY0miK7i
 QW7w==
X-Gm-Message-State: AOAM532uC09d6Y9a+7Tajauc65/fwf8g9+pqZzhFYEBLNVUW37UV6lDi
 FfZS9snsYPICU8tj5yoobRlGr5PWlwkS8Q==
X-Google-Smtp-Source: ABdhPJz3U7V2V5vDfHEE+DsPC8CByVvjx0vZ4jRLw21MzeDOjtgytEQYSWZepxSoZVaiPECcaXo4iQ==
X-Received: by 2002:adf:e5cf:: with SMTP id a15mr4927082wrn.226.1617212129584; 
 Wed, 31 Mar 2021 10:35:29 -0700 (PDT)
Received: from arch-x1c3.. ([2a00:5f00:102:0:6e1d:cfb9:fb12:552d])
 by smtp.gmail.com with ESMTPSA id 12sm4714200wmw.43.2021.03.31.10.35.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 10:35:29 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v3 2/9] media: hantro: imx: reuse MB_DIM define
Date: Wed, 31 Mar 2021 18:35:13 +0100
Message-Id: <20210331173520.184191-3-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210331173520.184191-1-emil.l.velikov@gmail.com>
References: <20210331173520.184191-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_183530_693027_518B7D51 
X-CRM114-Status: GOOD (  11.04  )
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

From: Emil Velikov <emil.velikov@collabora.com>

Swap the hardcoded 16 with MB_DIM define.

Fixes: 8e4aaa687863 ("media: hantro: add initial i.MX8MQ support")
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index c222de075ef4..1f48c1956cd2 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -109,10 +109,10 @@ static const struct hantro_fmt imx8m_vpu_dec_fmts[] = {
 		.frmsize = {
 			.min_width = 48,
 			.max_width = 3840,
-			.step_width = 16,
+			.step_width = MB_DIM,
 			.min_height = 48,
 			.max_height = 2160,
-			.step_height = 16,
+			.step_height = MB_DIM,
 		},
 	},
 	{
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
