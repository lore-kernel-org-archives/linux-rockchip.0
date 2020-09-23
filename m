Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81C9BC4363D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 07:00:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2AA3E221E8
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 07:00:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="CmCKC2lu";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=endlessos-org.20150623.gappssmtp.com header.i=@endlessos-org.20150623.gappssmtp.com header.b="KnK7Yrl5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2AA3E221E8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=endlessos.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4XwdUgBvR2CaYAjWj8RB5rsSU3ZUKRYs2q/9wQ4AWg8=; b=CmCKC2lupikLIDR8nKC2TBOv4
	kGCxthPCm3I+qcpccF07HBQgeT4IgY3KcFCnjM5JeA1XrSqDr7ub3mb+TpJYMxPEB340Qim+ArqZG
	TdgNf3BSHEf/2wpUIh7ikeTvVr2eZxbGJrk/QYZNcek+5/2wu69e8R8cwz4fR6hhCBtHWRnAbS7Af
	ii85z+lVQ/vlps1g9fYPbYzabkOKRmJe3D8aiBSG8yvNJSfEDmoQ/1GVXa+KM8gyU4aKJt7j1PfHv
	ZJvvSYYvOr3wBDHH5DHfsa83vyvszCZyDZA85o/7IJJ5ctFol6B0KvOS261kqbLL/ngbzhi7VyPan
	MFs1JLVuw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKylm-00034d-TA; Wed, 23 Sep 2020 07:00:51 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKylj-000338-60
 for linux-rockchip@lists.infradead.org; Wed, 23 Sep 2020 07:00:48 +0000
Received: by mail-pl1-x644.google.com with SMTP id s19so602362plp.3
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 00:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessos-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4oRwmR3EhcJbAFucNH/94gqJmXyc3Ivz1Uey2cJmuPM=;
 b=KnK7Yrl5N78RVstfT4p+cHqser1Rh3nceDzmrZ9asUN8ZJdo0tbpjiCa0qEf5iMDlN
 g1lXCGvY88a8cVIypjS//QW+6FIeK2n1vWRhrhFPnragCHv5lxfx0y76pjYusiVViGPN
 vXq8jofjEMP2H8IcVmi+cjvG5M3HTmwqTOjiMml3dElEIY0uscYjv/xOf4CU81TNau3N
 LsLFtz7eU5n6uYTbOiak194H8+DJEjOFpffvb+JB6oXdqoV+5zDwkofhsyH71yEFeZ3h
 oPnf7Uf0qKUNdfpBXOWEU8M6FjK1Igh+Cqr4bgZaFoItzAd8avdZwmo7OJvDGiTtHujR
 dOZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4oRwmR3EhcJbAFucNH/94gqJmXyc3Ivz1Uey2cJmuPM=;
 b=og3A5ZM4BKaWANxXYYb1Qb95GoVsDws+eFcw/gDalADIIdt1IxRWf4Lt2XlsDx1xoM
 rg8Xx2JiSfiV7j7rkWv/m//AHOJLGcwpP+jJI4kxu4mJ0nC+7mbvF7qiktvJGfP1bJ4s
 sThXyyglECWI5EHO7vcP2M6Ugp0XtXzpInEyq8+wLV0OUxVVJPDuC14u6mEFRCeNvXbn
 b27XhdTFmufPBg8oO0A32h7NFaSaKO3bmmtrbpm0A9LFOoOAicIKTQZAtzTxRthVjjUI
 MeNurkJgC1Q1asv29PM2J1BR0tSx1+wsARwwrfx0s9Ns87BpGA1XYFzteODYY4F09Iry
 TofA==
X-Gm-Message-State: AOAM532KqnMi6+CkR6FEDsTXUPGm/xbjVxgRVc7pbvDBmgupLoi6EG/H
 NOgjqQXuENlSUu3sw6Arm57M3GIksY0hGEn87d4=
X-Google-Smtp-Source: ABdhPJz3kVpgSu//J46x/GTqCeisWVwS2nfBoJ8yAFUJqHmANvefDc9kzIAfNXlfMpEbuZT0p9avNw==
X-Received: by 2002:a17:902:8695:b029:d2:29b:991a with SMTP id
 g21-20020a1709028695b02900d2029b991amr8436516plo.80.1600844443090; 
 Wed, 23 Sep 2020 00:00:43 -0700 (PDT)
Received: from starnight.localdomain (123-204-46-122.static.seed.net.tw.
 [123.204.46.122])
 by smtp.googlemail.com with ESMTPSA id j18sm16090095pgm.30.2020.09.23.00.00.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 00:00:42 -0700 (PDT)
From: Jian-Hong Pan <jhp@endlessos.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH] drm/rockchip: skip probed failed device
Date: Wed, 23 Sep 2020 14:59:00 +0800
Message-Id: <20200923065900.658666-1-jhp@endlessos.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <CAPpJ_efHX70Ej0uzRi-iRf7N0n6ZO5sMN-wK_YpszvVD-Un9RQ@mail.gmail.com>
References: <CAPpJ_efHX70Ej0uzRi-iRf7N0n6ZO5sMN-wK_YpszvVD-Un9RQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_030047_254191_CA94F7FB 
X-CRM114-Status: GOOD (  13.02  )
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
Cc: Jian-Hong Pan <jhp@endlessos.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux@endlessm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The cdn-dp sub driver probes the device failed on PINEBOOK Pro.

kernel: cdn-dp fec00000.dp: [drm:cdn_dp_probe [rockchipdrm]] *ERROR* missing extcon or phy
kernel: cdn-dp: probe of fec00000.dp failed with error -22

Then, the device halts all of the DRM related device jobs. For example,
the operations: vop_component_ops, vop_component_ops and
rockchip_dp_component_ops cannot be bound to corresponding devices. So,
Xorg cannot find the correct DRM device.

This patch skips the probing failed devices to fix this issue.

Link: http://lists.infradead.org/pipermail/linux-rockchip/2020-September/022352.html
Signed-off-by: Jian-Hong Pan <jhp@endlessos.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 0f3eb392fe39..de13588602b4 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -331,6 +331,12 @@ static struct component_match *rockchip_drm_match_add(struct device *dev)
 
 			if (!d)
 				break;
+			if (!d->driver) {
+				DRM_DEV_ERROR(d,
+					      "%s did not probe successfully",
+					      drv->driver.name);
+				continue;
+			}
 
 			device_link_add(dev, d, DL_FLAG_STATELESS);
 			component_match_add(dev, &match, compare_dev, d);
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
