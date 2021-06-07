Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0EEDC47094
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 18:49:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B6AB4610A1
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 18:49:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B6AB4610A1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xOqMBIzSG9+6ZdvUzW4pofrGGuSFCNCExc7HROjdfB4=; b=VH+E1iWdl63Ln4
	Y7muQzj7mgP7mqu/aGbmKDhEXwKl/qaG5focCs8H/TVpO+TVnKeoYYfI9v4F9bChXiCScyhtQXBMV
	4R0bUTwQaffDsGknxcXxwHmp5T7vOYL73AAgeU+pdgukLhuY/aKnAYHVhneBlMMF+wagurNYhxpnA
	+Tv1YpwH9U1H1rge2g/D1WNPzzaBLaCTlb7iUjizvEiBbJ2S/hQjgZdvOgwfd1oHiQu1oc41ull/8
	d91cxgjFeia3F1gNdmDOiRs7mqlIe+YxOTB0+bTeB0qCwhZu9QIX9TYr91VTZPMZQLyJmBAi710jf
	XUDv3JWJO7urZCkv8w1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqKJB-005564-Cg; Mon, 07 Jun 2021 18:49:09 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqKIx-00554S-52; Mon, 07 Jun 2021 18:48:56 +0000
Received: by mail-pj1-x1033.google.com with SMTP id
 g6-20020a17090adac6b029015d1a9a6f1aso397990pjx.1; 
 Mon, 07 Jun 2021 11:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3yUHFhWCcq/kgRCGJHT5yo1C2JrDTMIOj65kvK76Gco=;
 b=TqQyJo8zyp5yld5/QbvhnU3CAEFB28B+nTFE0duD3TYzp9FeaHLWO0XG2vdFDua6mh
 BfHOFGJrWZ/Jrq3oAS6JuQ3a2RZv8NSw8a9J1LgWfy5RQj7ZsIz15Q7Exrlu/9NbQcih
 N5cIq18cmNsh2TuHr7CZSg87Z4an02b2IyzUva+1dDTRkqJ1U5Esmyj94ktjG88r3PaV
 hpTS8GvrNDtGvzyKtmKfbWauHXWdUpJ0znEGNUDxqf7QY5qle3TbaUGITegWQG9dGzj3
 AjilalI8QsQXQcPXQBlM72MtW+WBJkUUSEFLNtch9/vAmtoMIIriGJXJYPaeabazpJF8
 Rkyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3yUHFhWCcq/kgRCGJHT5yo1C2JrDTMIOj65kvK76Gco=;
 b=M06wgAcspHfneghoSDN1Pv6eIqR4woSEFf0+EHyc82q8+SC6njkxDPUmt6ba9jmLsh
 Z8C0HvW1ryzqC5psQ28xqksBS0GMjcMFZlwWqPl0X+WVveOvL1syLkYaj/XyDWJg7ROq
 HeAQywYkcasEvHiAp/89dmclVR186/u1uirr+gD7bpfXiuW/b5Jryt/i6FrrSj3FDtBj
 vsB9sHPaZYoRX9uU1yNcj9U95ltLu0Kh0Mqwj6eZQdBOygVPqqWZhkJjXwJVlxrsmn74
 D1ldkWl98WchtJl27P9dq1gLjMLndddh5vVeKMTYm0Jku7dxDMnzmI3Ng1v0QmUlJKGo
 HQ0g==
X-Gm-Message-State: AOAM533vxqq87z/Ar82yKyBJ9JisMGVk33I78lNpgS9xsUtgM5giybKE
 Ih0P8JHatYAAtxtc3Llj8CmBe0L9nb8R/g==
X-Google-Smtp-Source: ABdhPJwtDWvQmpvtg2U50J55aazoPkaU18pviaJHRPmbRx1Jb7DUydJLScDmTuvMgIlA72tNanFNAg==
X-Received: by 2002:a17:90a:9e5:: with SMTP id
 92mr22405507pjo.34.1623091733324; 
 Mon, 07 Jun 2021 11:48:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:9005:8001:a09b:9c7c:331d:38fe])
 by smtp.gmail.com with ESMTPSA id a23sm8628028pff.43.2021.06.07.11.48.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Jun 2021 11:48:52 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	airlied@linux.ie,
	daniel@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Souptick Joarder <jrdr.linux@gmail.com>, kernel test robot <lkp@intel.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH v2] drm/rockchip: remove of_match_ptr()
Date: Tue,  8 Jun 2021 00:18:36 +0530
Message-Id: <20210607184836.3502-1-jrdr.linux@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_114855_217675_EF4879D0 
X-CRM114-Status: GOOD (  12.49  )
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

Fixed it by removing of_match_ptr().

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: Robin Murphy <robin.murphy@arm.com> 
---
v2:
	Address review comment from Robin.
	updated change logs and subject line.

 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index ade2327a10e2..8abb5ac26807 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -467,6 +467,6 @@ struct platform_driver rockchip_dp_driver = {
 	.driver = {
 		   .name = "rockchip-dp",
 		   .pm = &rockchip_dp_pm_ops,
-		   .of_match_table = of_match_ptr(rockchip_dp_dt_ids),
+		   .of_match_table = rockchip_dp_dt_ids,
 	},
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
