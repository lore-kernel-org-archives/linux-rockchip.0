Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89F60EB64D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 06:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jpy8P4uZA0yEZbWI6/0Xe+AoljIwK9tpaQkZziLbDgM=; b=1P8ZWhKVcV3lRGnlWSvFdbjS8q
	BAiRVaTnqsp6BLNP6YS4zR4cu/MuXKh3OKJhA8vJSzAmB4EwnFPQ+H4TnzO7idqS+oefSsHrfTi00
	+XpTdZxMT4pxc2cFJI0HNKh8fGZ17XnA78c4ZHXH4BygD3NrBEJcPXB+H4lxsvSJEkuB9BVpBjwC0
	VJsRbWsaSEz3nc9qOmQkzaIiZowURO5l3hOptFAc2syemat5PbQkfNIdZleWpVT+hhXFA63tXlawH
	fnQ5iZfLwHgqskJBym4rklg7cik3EQ1prVT3Hh1l1Xj3HMDoPT0x+pqnc+fJtpUpffwIz5/K36FOT
	dOkMLikw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBV9V-00AIdc-13;
	Tue, 20 Jun 2023 06:47:45 +0000
Received: from s.wrqvtzvf.outbound-mail.sendgrid.net ([149.72.126.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBV9Q-00AIZX-0y
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jun 2023 06:47:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=7VAyeHaEUSj0bxluLt7sEIx5TaeytzztFbaHZjpZj8k=;
	b=Yaqr4eSXajGdW3zb2Vo2erptc07KneJhPCDUZVBW/po6bK5+S4DfDUx16e3mWY604Vol
	42CmRW44ZDXak2Wf109cwtPdk0m1v3PspGogcKjTcOVTBfOVrA/kcYV+6tM4E108c1005O
	dpNlbjr+yHGZkEzmgRM5GfLRjW/p6OFlLkC4UT18QsQrc9R/RhiuG47nt/MeSBjWIaNWjr
	b4dVBGoSokJnz+D9hN78+vYKuVw1naEeCIjozjR5NJpS3EJP2pfeA8lERb6XKG8fLTjQn4
	ALOG/ILTsSroZahOP6/u51c2PomFzTUbNCcQ8uUjysK3OUxiFxod8W27QcMt5aGw==
Received: by filterdrecv-65f68489c8-knmdt with SMTP id filterdrecv-65f68489c8-knmdt-1-64914B88-8
        2023-06-20 06:47:36.28238049 +0000 UTC m=+3481898.218316761
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-5 (SG)
	with ESMTP
	id OucGoYNtQB-78UXqJGyOIw
	Tue, 20 Jun 2023 06:47:36.053 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/4] drm/rockchip: vop: Fix reset of state in duplicate state
 crtc funcs
Date: Tue, 20 Jun 2023 06:47:36 +0000 (UTC)
Message-ID: <20230620064732.1525594-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230620064732.1525594-1-jonas@kwiboo.se>
References: <20230620064732.1525594-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hxFAD2iWJqHQE2VFr?=
 =?us-ascii?Q?fjH7oZLbnsxnWN5pOReYr+8l0s7F6R6sTfG3KkB?=
 =?us-ascii?Q?8tSvbGGbhywgNax29XYxC=2F7RMyoEnmWQVOwBB1l?=
 =?us-ascii?Q?SvlOkoqbU=2FibnnSecm3h5PGKW3nmxbm0xNk+cCW?=
 =?us-ascii?Q?w5hw4BdROLlDO5x0yxMqAKQxrSeTl+uAXqQZ7GN?=
 =?us-ascii?Q?DWP25y=2FdwaTEGBjlbtRmA=3D=3D?=
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Mark Yao
	<markyao0591@gmail.com>
Cc: Andy Yan <andy.yan@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_234740_418892_60EC3AC4 
X-CRM114-Status: GOOD (  10.05  )
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
---
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
