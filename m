Return-Path: <SRS0=wty8=OC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B984C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Sep 2021 21:59:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 65AD760F51
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Sep 2021 21:59:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 65AD760F51
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=angband.pl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0jXWusKDGc8oXUEYobPpnKmXIg0ZxBGpsiJZo/CwBd4=; b=XEDTQyf+cXzS1f
	57nLajEyPKa3o94FlXb++zbw/m5tuhajLaJ5nVHFQlZQN8TAP4GEQmE5mwXMlwwCJ/hS/YPt65Tbj
	fxRhFBuNLyr43zHi1Ku3HxcYQKd0NqSUwgMHiMar4hDocE1zmTFKJzqFGwctXr4lSYppG9JD1DCO5
	3dYVHqePAxwlHQ5D+aVnuktZnNcPJjzTvspxGuDoUR/wn9SnpnNLWM/mMW1KojN3BDvJqdnwHlVc/
	N2Qf2DyR9GEGeXzsu9wqdMx0Vz6PHUrEszEVopuGyAGWokdElsn1YA5dAC/hNZcNrISgxxdXyDDuA
	zx9bcrAjKDMPtH9E7I6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPXV7-00HNrq-Pu; Sun, 12 Sep 2021 21:59:01 +0000
Received: from tartarus.angband.pl ([51.83.246.204])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPX51-00HJav-Hl
 for linux-rockchip@lists.infradead.org; Sun, 12 Sep 2021 21:32:04 +0000
Received: from 89-73-149-240.dynamic.chello.pl ([89.73.149.240]
 helo=barad-dur.angband.pl)
 by tartarus.angband.pl with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kilobyte@angband.pl>)
 id 1mPX2l-00C2du-Di; Sun, 12 Sep 2021 23:29:45 +0200
Received: from [2a02:a31c:8245:f980::4] (helo=valinor.angband.pl)
 by barad-dur.angband.pl with esmtp (Exim 4.94.2)
 (envelope-from <kilobyte@angband.pl>)
 id 1mPX2k-0003DH-LK; Sun, 12 Sep 2021 23:29:42 +0200
Received: from kilobyte by valinor.angband.pl with local (Exim 4.95-RC2)
 (envelope-from <kilobyte@valinor.angband.pl>) id 1mPX2j-00037U-2U;
 Sun, 12 Sep 2021 23:29:41 +0200
From: Adam Borowski <kilobyte@angband.pl>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: Adam Borowski <kilobyte@angband.pl>
Date: Sun, 12 Sep 2021 23:29:35 +0200
Message-Id: <20210912212935.11965-1-kilobyte@angband.pl>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 89.73.149.240
X-SA-Exim-Mail-From: kilobyte@angband.pl
Subject: [PATCH] drm/rockchip: fix a -Werror fail on !CONFIG_PM_SLEEP
X-SA-Exim-Version: 4.2.1 (built Sat, 13 Feb 2021 17:57:42 +0000)
X-SA-Exim-Scanned: Yes (on tartarus.angband.pl)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210912_143203_646743_29B36384 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
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

Signed-off-by: Adam Borowski <kilobyte@angband.pl>
---
 With Linus suddenly loving -Werror, let's get clean.

 drivers/gpu/drm/rockchip/cdn-dp-core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index 8ab3247dbc4a..bee0f2d2a9be 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -1123,6 +1123,7 @@ static int cdn_dp_suspend(struct device *dev)
 	return ret;
 }
 
+#ifdef CONFIG_PM_SLEEP
 static int cdn_dp_resume(struct device *dev)
 {
 	struct cdn_dp_device *dp = dev_get_drvdata(dev);
@@ -1135,6 +1136,7 @@ static int cdn_dp_resume(struct device *dev)
 
 	return 0;
 }
+#endif
 
 static int cdn_dp_probe(struct platform_device *pdev)
 {
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
