Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA94FECE57B
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 15:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyM+AsO+Xtew5WTn2uFw8q9VLd5nBXWICQbczfY5M5E=; b=zPx5kH+C+s7ANc
	rYRvi/07B32dPKERum2tLlLLat5JQVEuyDy4I4kfIZKQHih/vAC55vape07qBoFuw7uz2PIXRbJ27
	XnU1nHlyAEBckYA+RndyAw3OeQGCOLEkaY+3jyHSmiFNXbpceKzzec7dMij8kOUE5hzfzwG6hU71R
	LimtQEDuuYIMoFRWUwZ7m5dxtt0lPqW3k/EzeAhD/gCQuI/rExKMVT5NpZiTny//5tJggPOsTsCMI
	xDXuUv3+Kl7e6XWIuQA2eIOT4ujUKSuPKiSMS3cS+IOxBN281Cip0s8b3ReMIcph/LDYjC+OkCzFz
	1o/Px4pVew0vfaZYbZaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snJQL-0000000H0H3-2fZi;
	Sun, 08 Sep 2024 15:01:57 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snJKh-0000000GzH4-0oaQ
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Sep 2024 14:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1725807352; bh=Fen8SXObvKui+EcVpqkgeahn1KAOdYtBUTto1YpsJkY=;
 b=m5w1Uc0EeJDeC8pY9mEZGT+8uLPtvOHjxBvWrFo7oXfen30wNWXyRXtKQ2KTcWdmeFsmPsjbY
 iyKSEUAZkXkU+YOFZkTZzjyJ85ybHQi+pls3GRgyRaEm7S4+TzaPvxIqNG8SzNo9OAd3s4Hd/ql
 v2GXx+LxPcBrdcfOI6Ln1klzhkOGb7LJi1SlQFUv0Ucsgh0YpyhYoZvrcdi06I+FlkAX1qXceKe
 Yz5omvgvyPkBsiFTWP57yurqi3nfRr6j5ERcqpKI2/5rQWMNeEXnqvW1GZDjgAjRF5fnf3RmLNH
 C59wRK93UqFi8h5SnYBvvOuXAPw6ssz3VW3XfyA7pd0g==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 7/7] drm/rockchip: Load crtc devices in preferred order
Date: Sun,  8 Sep 2024 14:55:04 +0000
Message-ID: <20240908145511.3331451-8-jonas@kwiboo.se>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240908145511.3331451-1-jonas@kwiboo.se>
References: <20240908145511.3331451-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66ddbaf53c9877b459588f11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_075607_377813_F4DA2512 
X-CRM114-Status: GOOD (  13.06  )
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

On RK3399 the VOPL is loaded before VOPB and get registered as crtc-0.
However, on RK3288 and PX30 VOPB is gets registered as crtc-0 instead of
VOPL.

With VOPL registered as crtc-0 the kernel kms client is not able to
enable 4K display modes for console use on RK3399.

Load VOPB before VOPL to help kernel kms client make use of 4K display
modes for console use on RK3399.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: No change
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 23 +++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 44d769d9234d..b84451d59187 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -354,11 +354,34 @@ static void rockchip_drm_match_remove(struct device *dev)
 		device_link_del(link);
 }
 
+/* list of preferred vop devices */
+static const char *const rockchip_drm_match_preferred[] = {
+	"rockchip,rk3399-vop-big",
+	NULL,
+};
+
 static struct component_match *rockchip_drm_match_add(struct device *dev)
 {
 	struct component_match *match = NULL;
+	struct device_node *port;
 	int i;
 
+	/* add preferred vop device match before adding driver device matches */
+	for (i = 0; ; i++) {
+		port = of_parse_phandle(dev->of_node, "ports", i);
+		if (!port)
+			break;
+
+		if (of_device_is_available(port->parent) &&
+		    of_device_compatible_match(port->parent,
+					       rockchip_drm_match_preferred))
+			drm_of_component_match_add(dev, &match,
+						   component_compare_of,
+						   port->parent);
+
+		of_node_put(port);
+	}
+
 	for (i = 0; i < num_rockchip_sub_drivers; i++) {
 		struct platform_driver *drv = rockchip_sub_drivers[i];
 		struct device *p = NULL, *d;
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
