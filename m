Return-Path: <SRS0=F5E9=K4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E89C4708F
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 08:35:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 38AF2613D0
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 08:35:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 38AF2613D0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+preRYcFGRKruNvz94t4zKlnSJpwZkukrxEv15YD0kY=; b=BSaW1NjX3fZYb9
	zyLqNk2bOvGrCAEHXNjIHMQXwuLBiRgSNWXsoQlH+wCciKwo82ASccJAOv3HpCL1Mt7uK9W3a6q/z
	dHMz4jJqJNhvMmJ1NT9uGQBkPNMwk1UZ6mtBHMUF9Pt7enzGXIxhobfMS9Tdghf3yUUgeaK0GhifY
	E6ZDgz2OFTASK18JlmUvoFi7J3xT81/LdPjnAzXOjhV90SnYQ61Dq4ky+rQ0P0PuA8N8nS9ASPSLY
	YtEf++cDX4qNeC5BROcZPEhB2PkkL88nH7mpX7bfFfltsGln5H+o9OxVcT9yhioWrD97bkYNJa4U6
	kqzXljYht3wNBHN69kvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loMLU-002gzq-0k; Wed, 02 Jun 2021 08:35:24 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loLpe-002TKP-Tx; Wed, 02 Jun 2021 08:02:33 +0000
Received: by mail-pl1-x630.google.com with SMTP id 69so698476plc.5;
 Wed, 02 Jun 2021 01:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=02lHhfAhDq/BBAvi74B9e064tWGyy9vbCO1eroU+qno=;
 b=u1ryXFkSvsAEYZ+uPIFhIuVePkCzK4HehzqpdC8Am7BJaL2NRh9dd3nf+LP84yrNjJ
 NAAOuESPsyd2JOuQLAd3ayAEwFD9FKCorwfKoOppIcTaalwONFEH3Rl12W0n/Izr0yvP
 9scM2jz5fuiagQv1RMDEMTKqrLzkrOyy4Z9EJ5alV+R83ZfzkqWQi7tiBRjj8VSqD1AL
 YEEpsmzacHB+1WU6VKjkISsDc2lPfhO3GrnwDQArvXgdxZrM9a+lN9/dC1+P9afew0or
 ubUQNM5Wy5VpBUg40daz+kEBDePJm6/x+3cXcP1hKsjQnKtCletrvGZP1IOG8zH1LN4o
 GdNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=02lHhfAhDq/BBAvi74B9e064tWGyy9vbCO1eroU+qno=;
 b=fchIFRSid63Ib5IyIB9XHRCqvhobm750kKbkO1gKNVoSWaqgksWT4vZpV06C/0suDi
 MKEHqcPUstsYCzuP9wRKl4rBE1kODUqUdBLfidiDDDAy6a2PwdwvYrVbMQ4GpaApgRVR
 7+18Z3D88Eaxk7inBU9U34d9Mib0RNcvMY8wn06Rs9fblgn31NoYxtV3KOK9elFAvzPe
 SglwWj3Fqm4YCnJ40nt5xkLKDLUj/0ruXkpTfzofaThA7T5MlZolxG+OSP8E/DL5UGGL
 0UeW64g4BmTCOKn3vd92QwWEw6h0h+0nx4r89ftdYOu73/JX1EOlj01hzm2TU8y8S3A5
 NR8w==
X-Gm-Message-State: AOAM531iZRen8989nERUwzNQkmnOS7rQ4/uLL/EC62iN1ttPrR7Wzts3
 SOGktvdPslwUcXM6RRRTpb3xJtlIBjdp7Q==
X-Google-Smtp-Source: ABdhPJwZj521mEUfCJQhdlbkixXBugXjsDZMrppxRTIFdGees+XZ69j8CuVFihztyyqUBF4Il/siOA==
X-Received: by 2002:a17:90b:4b04:: with SMTP id
 lx4mr4355874pjb.54.1622620947943; 
 Wed, 02 Jun 2021 01:02:27 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:9005:8001:2df9:2568:9194:5f9])
 by smtp.gmail.com with ESMTPSA id
 h1sm15379903pfh.72.2021.06.02.01.02.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 01:02:27 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	airlied@linux.ie,
	daniel@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Souptick Joarder <jrdr.linux@gmail.com>, kernel test robot <lkp@intel.com>
Subject: [PATCH] drm/rockchip: defined struct rockchip_dp_dt_ids[] under
 CONFIG_OF
Date: Wed,  2 Jun 2021 13:32:12 +0530
Message-Id: <20210602080212.4992-1-jrdr.linux@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_010230_987219_D5C788B1 
X-CRM114-Status: GOOD (  10.40  )
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

Kernel test robot throws below warning when CONFIG_OF
is not set.

>> drivers/gpu/drm/rockchip/analogix_dp-rockchip.c:457:34:
warning: unused variable 'rockchip_dp_dt_ids' [-Wunused-const-variable]
   static const struct of_device_id rockchip_dp_dt_ids[] = {

Fixed it by defining rockchip_dp_dt_ids[] under CONFIG_OF.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index ade2327a10e2..9b79ebaeae97 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -454,12 +454,14 @@ static const struct rockchip_dp_chip_data rk3288_dp = {
 	.chip_type = RK3288_DP,
 };
 
+#ifdef CONFIG_OF
 static const struct of_device_id rockchip_dp_dt_ids[] = {
 	{.compatible = "rockchip,rk3288-dp", .data = &rk3288_dp },
 	{.compatible = "rockchip,rk3399-edp", .data = &rk3399_edp },
 	{}
 };
 MODULE_DEVICE_TABLE(of, rockchip_dp_dt_ids);
+#endif
 
 struct platform_driver rockchip_dp_driver = {
 	.probe = rockchip_dp_probe,
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
