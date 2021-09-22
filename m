Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4E03C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 11:24:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8805161107
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 11:24:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8805161107
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XhGGHHGCG9+MGNtLb0yEmf8YDd+dubY61ZPzleLre+k=; b=4j4QH5nRipb/rt
	qezIp2ot4qOpPLsYgJsHHjNPIeSCy8DFzsj2o5WnI3VanZ7lHpIDiJSspqP8DhTvslS/E7bUIoxX6
	2OBJfQ7o4FOH1tpqdW3I7y0ipdtipbuYWV3RD5U/D+xjS9eL2u8IKOI4gJKmUv9I2Hao6B1qxPOAN
	mXrlQ5n/MZe9Bm4RcPqUDUr2pllyjIuIZWDaq81jFKu23OLfF0hK2B7vjLziEkq+EU38lxfqU6nec
	7/mKr2wSC/uBwrrxKNOsG4Qb+AEWRHO2kEiAJS/G91ZbVHdmVd0doW9WtCtzo/3n4Lj3DOgV8y6Je
	TYyOzvgVUr5ujmYpCetg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT0Mb-008IkH-O9; Wed, 22 Sep 2021 11:24:33 +0000
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT0MP-008Ii5-Cn; Wed, 22 Sep 2021 11:24:22 +0000
Received: from localhost (1.general.cking.uk.vpn [10.172.193.212])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 8EC1C4015E; 
 Wed, 22 Sep 2021 11:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1632309856;
 bh=jPiivGMCA0vYpmru2UiRTorDKmvF0y0XmHoBEgYPsvQ=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type;
 b=KJUyde2+TnzqFPXbbGunQw+OLCxj1A1Rkqd798wGAdaZD5z94siUroSYJbHTyEK81
 DR+F9sQ9R5GjyjsjVX1sac8kpOt5oAjNkmH9STDWXE2mimYQQaHeGDUduvR2GOdNyP
 NXXh6hg9xQ9yrTtEiExlBed3M6d92XwUhRTfHOKUqSkZgeW8JDzfqLQYTwFRPToz3S
 K/Gk+bJJjvO+X7McFfGCVqMELivjQRUFZt3GpsnNVOL/V8Y4E9q3kH3AWdpc/ovHEF
 /YeepV7gfW7WoCKbzgbWp+F6f1FtoCvepWSAMqVq1UTM6Oz2CES0eXtFsTpdum7rtJ
 5+TtwFAd7G8mA==
From: Colin King <colin.king@canonical.com>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH][next] drm/rockchip: Remove redundant assignment of pointer
 connector
Date: Wed, 22 Sep 2021 12:24:16 +0100
Message-Id: <20210922112416.182134-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_042421_683578_A66CE5DE 
X-CRM114-Status: GOOD (  11.03  )
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

From: Colin Ian King <colin.king@canonical.com>

The pointer connector is being assigned a value that is never
read, it is being updated immediately afterwards. The assignment
is redundant and can be removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/gpu/drm/rockchip/rockchip_rgb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
index 09be9678f2bd..18fb84068a64 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
@@ -150,7 +150,6 @@ struct rockchip_rgb *rockchip_rgb_init(struct device *dev,
 	if (ret)
 		goto err_free_encoder;
 
-	connector = &rgb->connector;
 	connector = drm_bridge_connector_init(rgb->drm_dev, encoder);
 	if (IS_ERR(connector)) {
 		DRM_DEV_ERROR(drm_dev->dev,
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
