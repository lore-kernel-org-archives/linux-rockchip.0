Return-Path: <SRS0=DTRJ=FQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48959C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Dec 2020 22:24:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9138C22D71
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Dec 2020 22:24:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9138C22D71
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EJnckZqM3BHA+uwQPeogNO0VCHgwIf1dXbPbz3yI83A=; b=fD7DEPv9ta6FxSxM02x14U5P8y
	av+Gx9krq/vK58D6udky8Fa5DpUTKIsN0Rjjx6uV2NHrJCoLTBZUnPto/rUawlwcGZM7j/DftMe7W
	BzHcEH0G1OI/CKo7ARCl/2zNMl/A+0YMluldcEIak77cRg3kz9nvheyk8HW5I3x2F0lM8yTQw7DPY
	oqRVQSq3dAhOui5E5yvKqLzV/4/nt8ttLjCccf0GfFgcwrKcNKYzOeAstPeEnx+4Ya409WK5PsQA7
	i/yVd8CbNqPZbsWU3+y099YiSVEtKrvWy84jlDf8PnvkYIyZC4vOpoHq0C2xZOBb2MH2u9f3cg3sk
	jUCosFfA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1koDJJ-00007o-RM; Sat, 12 Dec 2020 22:24:18 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1koDJA-000077-SO; Sat, 12 Dec 2020 22:24:09 +0000
Received: by mail-pf1-x442.google.com with SMTP id x126so703783pfc.7;
 Sat, 12 Dec 2020 14:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QtJXBVt7gHI21bYFoZ1JoDV4VjhjgVIaaJDaUSnjM6k=;
 b=pY6anJiq1VYF1jMzjF+dcOuysiwgKQDBjxl4pI8MvZXad/L5wQeiVvdBaxzIBH4eXF
 I0u0mlSOK6Q1WgcgHP4nVk4j5+r9Fe7OHS/lRK5OMbfKq3aPDYcmkDpA2KR5OrRrdHJ5
 kOMhOOGcT5JwrjmDUIutKsPkSxPFJdqC6jG22WHBKp34KLojdw+IeJ9eI2bOfk/NOenP
 ckFJQvY6Nx+gkkerIPwjQn7qOmkWBz2Xpncl37I+ibqgkLWqhTTuA4Xznaikb0/Vs821
 W+sq6zDvupwDluvrcNkKqZ8zrN6TrTapk3X6/IYF27VPMZaUCDKbH2C5j5WRaihImvDq
 fLfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QtJXBVt7gHI21bYFoZ1JoDV4VjhjgVIaaJDaUSnjM6k=;
 b=JdRfMSE91t5EGQxqsq1u9D2ce/ivD7uGU3+LIZ4tLMTxLew4a7baQn/aYaQlb2FK9D
 HtTAKkPrkp3Yyq0PYr9hpNBpI2YTAsPuMOkKokg6O4phRttCsWJ5OAOfKSXr48f75AM5
 jxdx9hbOYORxHaPE/twLwLWjZ87c4HMfYhB4eW1e4H4HRx2QKyhrsyjQ/qRBjeI2QzAR
 vtiKjO1edCo1cuzt3HRY88Y+tmPSC6mGH8QCq6MOyC9wjQQaJiagL2LnlakpTtnCFlch
 PJ2TU6hW6OQBI0tQMQSXF8acZU/sOP8n6TIUqlYVdwuZ0xHwBOo0Cg0CVp8ZDuR+Zyx9
 wOcA==
X-Gm-Message-State: AOAM532xbYzbX9av+Me/fhVIFdaZnxFi/I88UmLrwz9yfSdMoxW123jt
 upJxQ6Y3nBYAjCEbOES/9Bk=
X-Google-Smtp-Source: ABdhPJzLYLeOuMQKOWMGgFp4pj8D4j+yoysIS0L8UZ95aYc/Z8WmvA33yxJuB5XMv5grTtczBMPB2A==
X-Received: by 2002:aa7:9738:0:b029:19d:dce0:d8e7 with SMTP id
 k24-20020aa797380000b029019ddce0d8e7mr17276456pfg.14.1607811845359; 
 Sat, 12 Dec 2020 14:24:05 -0800 (PST)
Received: from glados.. ([2601:647:6000:3e5b::a27])
 by smtp.gmail.com with ESMTPSA id na6sm13244256pjb.12.2020.12.12.14.24.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Dec 2020 14:24:04 -0800 (PST)
From: Thomas Hebb <tommyhebb@gmail.com>
To: linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] drm/rockchip: dsi: remove extra component_del() call
Date: Sat, 12 Dec 2020 14:23:55 -0800
Message-Id: <b6fef187969c45c3153d90bfd1cba684b764a225.1607811826.git.tommyhebb@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201212_172408_979107_B06AD04D 
X-CRM114-Status: GOOD (  14.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, stable@vger.kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Thomas Hebb <tommyhebb@gmail.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

commit cf6d100dd238 ("drm/rockchip: dsi: add dual mipi support") added
this devcnt field and call to component_del(). However, these both
appear to be erroneous changes left over from an earlier version of the
patch. In the version merged, nothing ever modifies devcnt, meaning
component_del() runs unconditionally and in addition to the
component_del() calls in dw_mipi_dsi_rockchip_host_detach(). The second
call fails to delete anything and produces a warning in dmesg.

If we look at the previous version of the patch[1], however, we see that
it had logic to calculate devcnt and call component_add() in certain
situations. This was removed in v6, and the fact that the deletion code
was not appears to have been an oversight.

[1] https://patchwork.kernel.org/project/dri-devel/patch/20180821140515.22246-8-heiko@sntech.de/

Fixes: cf6d100dd238 ("drm/rockchip: dsi: add dual mipi support")
Cc: stable@vger.kernel.org
Signed-off-by: Thomas Hebb <tommyhebb@gmail.com>
---

 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 542dcf7eddd6..ce044db8c97e 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -243,7 +243,6 @@ struct dw_mipi_dsi_rockchip {
 	struct dw_mipi_dsi *dmd;
 	const struct rockchip_dw_dsi_chip_data *cdata;
 	struct dw_mipi_dsi_plat_data pdata;
-	int devcnt;
 };
 
 struct dphy_pll_parameter_map {
@@ -1121,9 +1120,6 @@ static int dw_mipi_dsi_rockchip_remove(struct platform_device *pdev)
 {
 	struct dw_mipi_dsi_rockchip *dsi = platform_get_drvdata(pdev);
 
-	if (dsi->devcnt == 0)
-		component_del(dsi->dev, &dw_mipi_dsi_rockchip_ops);
-
 	dw_mipi_dsi_remove(dsi->dmd);
 
 	return 0;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
