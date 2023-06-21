Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4141CEB64DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 22:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vK4Btp5SbmvevpNeQdtFhYcNAgLTi8jr8ibcN4olIBM=; b=IQzm6li1OhxMN+vT4BwGqqC4oq
	+mUdqRiBgT5xRYkEvi90eFvWLaNoq4414l7/Q9qXB8fxmqn+ZIwfKUipthZI2uMQOJNSvebXsotFL
	vLSRoen+Np6zGpRuFzbZxADrHKOyYW8YEtyEamvEcpj5teWsfo1aS2sLI5X7MFfTgxtrMvVO5iIL8
	zlezcYcExiZGkiqSpMwnjOUT5EtgJrmN9clkVKgxtuksTyiMV5O0wkfEuIsShjwbFF+pZdJ+ie/6w
	Pcos8YkqohuA01iNAnnZaICyoHYxg/NP9gY/nNNZl6YheG5bBG8ceMuwFra+ZGb1+4BmJRfm9HdRk
	ASQDJc3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6OF-00FvG4-07;
	Wed, 21 Jun 2023 22:33:27 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6OA-00FvBB-2P
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 22:33:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=W99jR6zQr9o9HH0LFWjkqVeyLEmhww0LQ1TODMrD+JU=;
	b=lgYVrVqzL5xtT/wvZAyliCCJFvkwGuTcAcJfKQdzdxZC6nLMwUo9oDusU22C1uWycY8I
	p34S3bqatApfjKJTD6B4eqk7llOn5/Xibjn/59rFvUNYJpcXcORsPCo/1q8lBzu49gqfjB
	5PDLZaTyULgvju+D0MFe6J6rsx8c/hdQbcyDzjbI6MDJnr3FbvWFMIIF/X0/Gt/wgODH29
	AMiYWHdlvJEungau2LBFg6UBFDagsmxX5TqNHt+ZoboL6wu8V4cakUrMw9jhJCfkqgkEj3
	F40YikYplgk68+/3que0WX9V4L4kVAXHsY7Sm/jyaWEFZ3bd0BYwBi10ZNkv5yNA==
Received: by filterdrecv-84b96456cb-hrvlt with SMTP id filterdrecv-84b96456cb-hrvlt-1-64937AAC-29
        2023-06-21 22:33:16.784398642 +0000 UTC m=+3624881.780498603
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-0 (SG)
	with ESMTP
	id q2JBcGBES7ak8zO87bOzoQ
	Wed, 21 Jun 2023 22:33:16.341 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 1/5] drm/rockchip: vop: Fix reset of state in duplicate
 state crtc funcs
Date: Wed, 21 Jun 2023 22:33:17 +0000 (UTC)
Message-ID: <20230621223311.2239547-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230621223311.2239547-1-jonas@kwiboo.se>
References: <20230621223311.2239547-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h4IxyhjudaBMscryW?=
 =?us-ascii?Q?yil2MxaaDxax+ugZQXodSqRHYB6mo1lanwr1jqt?=
 =?us-ascii?Q?Ei9avORGicVCxu+gicqUMciYzh1qKi0rKAAZsg3?=
 =?us-ascii?Q?6a46UzsyNeYvAelFe=2FL5MeEgpWHSX6qgeZuSn=2Fr?=
 =?us-ascii?Q?bILQujCX+o+T3Up+mu4zx=2FDdYQ0uZHRIKOJURd1?=
 =?us-ascii?Q?a0LTlj2c6hV6WggcPO0cw=3D=3D?=
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Mark Yao
	<markyao0591@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Andy Yan
	<andy.yan@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_153322_922577_C06A5A98 
X-CRM114-Status: GOOD (  10.33  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

struct rockchip_crtc_state members such as output_type, output_bpc and
enable_afbc is always reset to zero in the atomic_duplicate_state crtc
funcs.

Fix this by using kmemdup on the subclass rockchip_crtc_state struct.

Fixes: 4e257d9eee23 ("drm/rockchip: get rid of rockchip_drm_crtc_mode_config")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
---
v2:
- Collect r-b tag

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index a530ecc4d207..60b23636a3fe 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1614,7 +1614,8 @@ static struct drm_crtc_state *vop_crtc_duplicate_state(struct drm_crtc *crtc)
 	if (WARN_ON(!crtc->state))
 		return NULL;
 
-	rockchip_state = kzalloc(sizeof(*rockchip_state), GFP_KERNEL);
+	rockchip_state = kmemdup(to_rockchip_crtc_state(crtc->state),
+				 sizeof(*rockchip_state), GFP_KERNEL);
 	if (!rockchip_state)
 		return NULL;
 
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
