Return-Path: <SRS0=GaOA=PN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2B78C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Oct 2021 01:58:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B351061029
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Oct 2021 01:58:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B351061029
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NQ8B2poFLRO/UjvVqZN7N9jLH8mOOOeGnnue7WVCIVA=; b=MgcxdPC875FKhn
	Fqni4rEBASIXXLN0FKCh70CbMMFtxF73Mp2+SYExIdktvlduL2Ai4Axh15jwSgpUIpIGPjbsRRa42
	bRNAkU1SWAwKYjPAFUOyR1HUIZKZw0way3TF6XZVtF99CRB4t0uCZYBfDwIozg4HQK1Mk5ZI73uC/
	wrVSLCLfPy9hYynk47K4EqbJF7mIHYmuqmE9VEsCMLgkmtk4pIKyfUQKrgVbdW2IKBKFMEWA4QU7u
	pWNfNqsHnwlJMsYRVp4EgrA5QG3IWnCVVVm6mQSHt/XwY0yDzoqr/Sde2hHO1gL7l2SCTI4370/nN
	fP1Qx48LUIAIiwhfX0/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mepFg-00ExDZ-P3; Mon, 25 Oct 2021 01:58:16 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mepBj-00Ev9X-Rm; Mon, 25 Oct 2021 01:54:13 +0000
Received: from dggeme755-chm.china.huawei.com (unknown [172.30.72.53])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4HcydP53Rfz8tt5;
 Mon, 25 Oct 2021 09:52:41 +0800 (CST)
Received: from huawei.com (10.67.174.47) by dggeme755-chm.china.huawei.com
 (10.3.19.101) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.15; Mon, 25
 Oct 2021 09:54:00 +0800
From: He Ying <heying24@huawei.com>
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <seanpaul@chromium.org>, <gustavo.padovan@collabora.com>
CC: <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>, 
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] drm: Fix wrong use of connector in vop_get_edp_connector
Date: Sun, 24 Oct 2021 21:55:50 -0400
Message-ID: <20211025015550.66500-1-heying24@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.67.174.47]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggeme755-chm.china.huawei.com (10.3.19.101)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211024_185412_191077_82CD2C06 
X-CRM114-Status: GOOD (  10.36  )
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

From the comments of drm_for_each_connector_iter(), we know
that "connector is only valid within the list body, if you
want to use connector after calling drm_connector_list_iter_end()
then you need to grab your own reference first using
drm_connector_get()". So fix the wrong use of connector
according to the comments and then call drm_connector_put()
after using connector finishes.

Signed-off-by: He Ying <heying24@huawei.com>
Fixes: 2cbeb64f6c70 ("drm/rockchip: use drm_for_each_connector_iter()")
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index a25b98b7f5bd..469922ad29fa 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1581,19 +1581,19 @@ static void vop_crtc_reset(struct drm_crtc *crtc)
 #ifdef CONFIG_DRM_ANALOGIX_DP
 static struct drm_connector *vop_get_edp_connector(struct vop *vop)
 {
-	struct drm_connector *connector;
+	struct drm_connector *connector = NULL;
 	struct drm_connector_list_iter conn_iter;
 
 	drm_connector_list_iter_begin(vop->drm_dev, &conn_iter);
 	drm_for_each_connector_iter(connector, &conn_iter) {
 		if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
-			drm_connector_list_iter_end(&conn_iter);
-			return connector;
+			drm_connector_get(connector);
+			break;
 		}
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
-	return NULL;
+	return connector;
 }
 
 static int vop_crtc_set_crc_source(struct drm_crtc *crtc,
@@ -1614,6 +1614,7 @@ static int vop_crtc_set_crc_source(struct drm_crtc *crtc,
 	else
 		ret = -EINVAL;
 
+	drm_connector_put(connector);
 	return ret;
 }
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
