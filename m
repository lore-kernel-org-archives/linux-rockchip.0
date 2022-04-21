Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FB97C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 14:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Wb9geLSW5/xb9MYdMZimWOgmGhzRIYlCv2UpyNtapw=; b=5EPuPDFP97H3R3
	1vLIeqA5EzXXIs+u2zYm9wI61X5mFJuO0zkwwiuG+5O8Y06aJ9XP6b0SK/ZHzE7zy1DhbnU6GmJbe
	pUbdKz2M2nWi8jM9qL/T4O1+R6VWY/1+EW6hPuxmevrAyl6soOiAJN34U4UQeMwAyqv7c9bEcDB1m
	GXBTjTLtMAe0W2ZzbpxDwQSHRuGOubaexr7ZVOBnCuyLfbBfST09wNre3YOknRSrbtBn+vy2kgHoB
	e1ipnGXIuGlHKPxmuMyMjyH0BZ31aXgJxonnt9YIdrV3mJc89SefvYq67O4K8kdk/AJ5AhvUPwom7
	pbgCgiHG9qbKL91T18oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhY1z-00DqH3-5E; Thu, 21 Apr 2022 14:43:39 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhY1g-00DqAn-AJ
 for linux-rockchip@lists.infradead.org; Thu, 21 Apr 2022 14:43:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650552196;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ePPTKrCMwADglYVO5peeQ4QQVf5OFLO0wZ8LDZ1O6g8=;
 b=aXWgJ2aoIt1bqE9O9vEi9cV/N+G6Ze72TBxP14ydES+gWE66VTiSkCOdwHRgL6S89iYxjI
 +O8CaJugJ3QW4sCHpJaT23/toiu1CzhjRTjHYDZ1tWRm2FwFdtKPh9g4idOADKwBu48B79
 UMtxdpSscZzx94winbYIQT863wAR+qM=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-582-QJ2-nFxKNEyglzj1E-ybLg-1; Thu, 21 Apr 2022 10:43:15 -0400
X-MC-Unique: QJ2-nFxKNEyglzj1E-ybLg-1
Received: by mail-qk1-f200.google.com with SMTP id
 m23-20020a05620a221700b006809e1fa4fdso3445788qkh.6
 for <linux-rockchip@lists.infradead.org>; Thu, 21 Apr 2022 07:43:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ePPTKrCMwADglYVO5peeQ4QQVf5OFLO0wZ8LDZ1O6g8=;
 b=nhlSl/HRLqrqLUvUv8jENB/hFlmaq1C6EDTCi029ihyx5EhauzyHyj5XufjtDdwsqz
 +gSCEdvB1OeHn1TaO/LXKyfR3TkHXinPfop7CRtDI4jLHxxbpbIVUQ2OlspCBXOZbVTf
 caxJyDRqW3hsY6bq3sRmKap3qXYg2jdVMM0I7kFSuSd/geuKzsYatNkwAkkUacJ1GqHY
 buz8y/DRSdunWI4wwV+XzawSGmsxZFRaWANc5jLPyQNfBltnHAmu4jAfgZSPQNuMWVkP
 S+NRzQNh/OmkrxpmN3KTgu12iID971isDXbP4nFX3nz1RczV53wAfCTwK7N2zQulFsxD
 W6PQ==
X-Gm-Message-State: AOAM530CRa5R9EVcK6mDnZIrdb/tZrdIT99SSqIzk/HSDwqkW6pTkvuK
 1xpzIRVG5qNKFopRNd4F4oWbRQoKg212tCQIxQoQD6QtMExZk7P6nFbSJPuyNSdLkHAyycuOiYq
 iVzjdl6nzXwHjkxCsVg+jxctmmbzooyLz
X-Received: by 2002:ad4:5bc1:0:b0:42d:758c:f694 with SMTP id
 t1-20020ad45bc1000000b0042d758cf694mr19026792qvt.99.1650552194916; 
 Thu, 21 Apr 2022 07:43:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx2jn3q9z234SvBuh9QXKIyb+5gtFlLQqL5BZmnHLuyhZev75JSd04yeLJ/gjoODjM5Sghq+Q==
X-Received: by 2002:ad4:5bc1:0:b0:42d:758c:f694 with SMTP id
 t1-20020ad45bc1000000b0042d758cf694mr19026774qvt.99.1650552194715; 
 Thu, 21 Apr 2022 07:43:14 -0700 (PDT)
Received: from dell-per740-01.7a2m.lab.eng.bos.redhat.com
 (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id
 o14-20020a05622a138e00b002f335c3dbf2sm3538660qtk.37.2022.04.21.07.43.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Apr 2022 07:43:14 -0700 (PDT)
From: Tom Rix <trix@redhat.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	airlied@linux.ie,
	daniel@ffwll.ch
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tom Rix <trix@redhat.com>
Subject: [PATCH] drm/rockchip: cdn-dp: change rk3399_cdn_dp from global to
 static
Date: Thu, 21 Apr 2022 10:43:04 -0400
Message-Id: <20220421144304.586396-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_074320_475289_AEB1B9C1 
X-CRM114-Status: GOOD (  11.57  )
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

Smatch reports this issue
cdn-dp-core.c:51:20: warning: symbol 'rk3399_cdn_dp' was not declared. Should it be static?

rk3399_cdn_dp is only used in cdn-dp-core.c so change
its storge-class specifier to static.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index d3e6c93739bf..ce67c9daa2b1 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -48,7 +48,7 @@ struct cdn_dp_data {
 	u8 max_phy;
 };
 
-struct cdn_dp_data rk3399_cdn_dp = {
+static struct cdn_dp_data rk3399_cdn_dp = {
 	.max_phy = 2,
 };
 
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
