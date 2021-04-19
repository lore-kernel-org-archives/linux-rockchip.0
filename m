Return-Path: <SRS0=DXbu=JQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27CF0C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 02:03:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 34C3A610CB
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 02:03:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 34C3A610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9p3jQMiDqtlrV2Smmvu+H2Cmuezuoib1WPkkTLaKOlI=; b=Ccn7vm5y9cm4o+X/MB4uKTKAgt
	XgbgkGJuzWXTDE6683ao3MiPMxlMZWMvD09djeJA2ct6rCLkO1AA8AqXu9l7gy90EtfpE9ySddZEU
	dmckwUwmx0N3RxqZx2KgrbRMEvSfp6NsjCKvQe8WidIRvH9m0LjZ0y5lZBvK52XGZg3clTdJQnZYl
	C/8LVRrMeyvriBhogaH+ogMSoNFVKUP9ISjRq3GJet7Dna2ICEZVxShnvLVyC5L0BImE9iH1OsmAn
	KLyme0jentre6gt13Mz5ktkg5+qjoCctdZ97l7NLLBoR2Du+yBNJS4g6qPjtxfgOUozq4CVoQUvmP
	wijzw34A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYJFz-008tny-R4; Mon, 19 Apr 2021 02:03:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYJFp-008tnM-Gd; Mon, 19 Apr 2021 02:03:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=BPSD3xSDTnWh+Nz3+j4qm9HcpmcWDhRQcIMOD/a1Rz4=; b=21j/6BCFm3zKd9u0l5UtJ1edoW
 1XN1sFD/qrz62OigtRW/tmfRqjHrEd4Wcv7b/Az3B+JnUDLgF+zM9qKdZgR8Cv55b1OAi+GEVju97
 NKlFq6+qQ5jas+YEnv9V6Bp/8YsiVfoOwHiMu34p5WyMLPkQL/u7n0xbZSijr8ioDBrRENqFik/Tp
 N9DUvk35bDbQgjtTcSrQeKz5vp3PjB2Z0sGsKBbmXIES/jheCwUJCsWPknkWJzo0Q7R2mAcAD9ajd
 Oaf3ijfP23s91dvkRzVs8cUTv1kkMygAf7yMvn0derUnfP+r4jcyQRxDvlkrwvEm01PaMl1saw3s1
 EmoxXCfw==;
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYJFl-00As79-IB; Mon, 19 Apr 2021 02:03:12 +0000
Received: by mail-pl1-x62d.google.com with SMTP id h20so16887793plr.4;
 Sun, 18 Apr 2021 19:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BPSD3xSDTnWh+Nz3+j4qm9HcpmcWDhRQcIMOD/a1Rz4=;
 b=g9nR0Kbn42QWboT8F+6HxD6U3d0etIiPNbzLS/QlrD4hcH3iJ7r2KuKR8wqfYk1cYx
 gvggLBh2tmd/kffs8WPwAZImhvYs3tMOulBU217tAPhFwZDktxbLk4qL1zSSpIHJKRyI
 EWUjhp1OeyzR5NyRODiA/rXgilfjzroi9Uuo7Rcbcr7N4+neFh3WuMNt+d/lNWtLHQfi
 /UoZKxYxh/R03LJ+Wyc4ANAolRCDzKN/pCRbfSbL5asjPQlvWzPtH90EYQ6halOqKIQG
 pYYckbYvEuFrSgpGT+uw1xcI6ahBFH/2SD8OWAU06pN4xXPh8uGLhs/YlxT25ibL+2rV
 OcOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BPSD3xSDTnWh+Nz3+j4qm9HcpmcWDhRQcIMOD/a1Rz4=;
 b=XzXcSBM07M2ZtLUhoQAJ2KLIbU1BmjT3nMXHKIDbrux3yaBZ2/NvtFGPlp3X4CVDTt
 4iZh9RU7OXWlrVtJF8uKskiNHuxv3dAp1V91mAwPTP1bdfkkAqUNgkF0h2nfsXaVjB8T
 u6bG2Ihg6cGIQub1vfs546Sf1Xeeazu2XgmkAHD0Lce6nVCklbmPWh7OlbliJJ83hTui
 2WXMViG09z/ahRXJ10LFPr8vFjveJaRic3CeLsw/NeGe1JJA9WgOrEp8LE5r5FPFbpHn
 FTY9Y7hJVYnWWPXyLFxg7VifLPHg+1k0EVJDzLYDjPsfy6OXw/MlirtpMioLZPqH8/Td
 hxkw==
X-Gm-Message-State: AOAM533kq3d2Ll/313lOzc21NKnkBYCm7xai9wqJfpxe+KZmhU8WVdBo
 hguKKL7ySPCrd1XwB7xYGmc=
X-Google-Smtp-Source: ABdhPJwUK8c2110qQsGdlilhEVH6RNovspU3KzWKZqoF2+bgUFBln1/xQm3+prddHRsNE4KE+2EMDA==
X-Received: by 2002:a17:90a:ff02:: with SMTP id
 ce2mr22236666pjb.217.1618797788273; 
 Sun, 18 Apr 2021 19:03:08 -0700 (PDT)
Received: from glados.. ([2601:647:6000:3e5b::a27])
 by smtp.gmail.com with ESMTPSA id kk9sm61753pjb.23.2021.04.18.19.03.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Apr 2021 19:03:07 -0700 (PDT)
From: Thomas Hebb <tommyhebb@gmail.com>
To: linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Thomas Hebb <tommyhebb@gmail.com>, stable@vger.kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [RESEND PATCH] drm/rockchip: dsi: remove extra component_del() call
Date: Sun, 18 Apr 2021 19:03:04 -0700
Message-Id: <201385acb0eeb5dfb037afdc6a94bfbcdab97f99.1618797778.git.tommyhebb@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210418_190309_641414_B17C032A 
X-CRM114-Status: GOOD (  15.04  )
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
index 24a71091759c..8cc81d5b82f0 100644
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
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
