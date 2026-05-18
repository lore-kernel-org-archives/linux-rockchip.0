Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0E4CCD4F4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 19:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWmtyEb7C7m2uRWB2AOOwySRllSHiQGLme0ct/l1KyA=; b=YHspoG48VHYED0
	wDnMU7RhwS+OpuKhe2oGTyKxmi9H6xWgsVwVDiJd/tUXFy3lqxU4wcwhis8r0en5s4KEqjwdu9w61
	0VVrSH+bGyxpLDgxXCwwtrq47agbNBFHG+0UqFlp5jv47MR3NC9mC205DU+faSFdFS2r6XoKA9KG0
	T+Rf3lipVGWxakV/4swE3IJOQJytYfMj3meXpuh3UY6NzxANhSVpeCEsq+shqPDN4QyCBHqFijmRk
	JPV4XI9vNh8fB35T3OLZzbQKz4QJpHlajJ5+0f7Jt0EMeRvf/aoXhqoHK2le4eItPszTzrwRHSKrn
	zr7VCM7IEk9PZAmBuQdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3nC-0000000Gi2C-3mmf;
	Mon, 18 May 2026 19:38:22 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP3n7-0000000Ghup-1EqS
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 19:38:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1779133096; bh=Ige+NfQAL/cmeNHtDcasRRc+phKqB217iKqo21sCGF4=;
 b=eGVb+uOlmGwnvFUXKw+G/qHK6CMvQhP9S4toOB4kGxLJl5bcK6WBMpsVH6lskTZ2T63Anl76B
 CL9BBja9I1AbYZd29/p9hRhijB0mgcyT4NdxoiW9cPwlaNIGxuaxmhXBmpiK8B08ogtxVHekSlZ
 WO7asVpjhNJ8K7CNPdYqVgkXFmK7NgbD1nh94o1qkbTD/wGmrwcLlkh2V2H+SHM14QH/kpJfzsC
 cUKxsBZzCXHinfZJTn1p+OL6d00pj8u/nrHgXG6e9SkqbCc3yNZacY+OGcsHpGj0BqsFY1fQqY6
 hB04WivNOxyrQgk/B1vfsv1QmgaO+hy1UR/uH47bimwQ==
X-Forward-Email-ID: 6a0b6aa5486b4b38b826fa26
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.8.12
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 05/11] drm/rockchip: dw_hdmi: Hold a reference to the dw-hdmi bridge
Date: Mon, 18 May 2026 19:37:39 +0000
Message-ID: <20260518193748.2482823-6-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260518193748.2482823-1-jonas@kwiboo.se>
References: <20260518193748.2482823-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_123818_409604_A81653D8 
X-CRM114-Status: GOOD (  11.63  )
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

Take a reference on the dw-hdmi bridge during bind and drop it again
from unbind to ensure the bridge is kept alive for the lifetime of the
encoder component.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: Use dw_hdmi_unbind() and adjust the error message
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 8c26223b70b5..538906e342d2 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -79,6 +79,7 @@ struct rockchip_hdmi {
 	struct clk *hdmiphy_clk;
 	struct clk *ref_clk;
 	struct clk *grf_clk;
+	struct drm_bridge *bridge;
 	struct dw_hdmi *hdmi;
 	struct phy *phy;
 };
@@ -609,6 +610,13 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 		return dev_err_probe(dev, PTR_ERR(hdmi->hdmi),
 				     "failed to probe dw-hdmi bridge\n");
 
+	hdmi->bridge = of_drm_find_and_get_bridge(np);
+	if (!hdmi->bridge) {
+		dw_hdmi_unbind(hdmi->hdmi);
+		return dev_err_probe(dev, -ENODEV,
+				     "failed to find dw-hdmi bridge\n");
+	}
+
 	return 0;
 }
 
@@ -617,6 +625,7 @@ static void dw_hdmi_rockchip_unbind(struct device *dev, struct device *master,
 {
 	struct rockchip_hdmi *hdmi = dev_get_drvdata(dev);
 
+	drm_bridge_put(hdmi->bridge);
 	dw_hdmi_unbind(hdmi->hdmi);
 }
 
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
