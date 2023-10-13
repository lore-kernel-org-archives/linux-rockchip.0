Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2622FCDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 12:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+tJUiZ8o/4Pq6uHBUut9jW9eUA8HrczCy2h11gCP8o=; b=mtmJkfhzA6uRJw
	JsreBe7NyYg4xQJAYvxomhiw7ny4G9lKTkaEn6koFUl9bk5CZ7HerkiHzP9j2m430YGK60McxMh1v
	93Q7dJiOeVAPG/8PgS0Kqcig080VzRXBbCU0uTGGwcbtaRn707pI1KqgdZ8+CPxKxXg1rYwV0z83H
	mS5YcpjEzOJKZ2wP2QIOQd3w3uf0avM71N8gjWwCT+zCwwmBKuwWrcNRYVHFOwcc3Dl3MM35njl1A
	ppXjC+DEnurHrxZLnKeFmTIce5HA366Eh0XkaNkBB4JhFn0tilxWn3tA8ixP01ZUNmPAGMh3D6rDy
	Yf1LUgBWA0KvImwvYu8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrHAc-003PLJ-2m;
	Fri, 13 Oct 2023 12:21:34 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrHAZ-003PKF-1u
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 12:21:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=IOWG0
	MbrbYhiKt6BQbObVALF/qURdsD/wOrjlu3Xh6Y=; b=EpjbJfZJTKzr6NJYkBNYz
	tyR+3paNFfi8L+izGcaYH8vi9SpwPqB77XT1zSHAwiKEkjlqPKV4KD/ZEFMZ7t6T
	dIWXMezc+UTQZfgRihsARoUZTTal8PUdmjxH9MAW8bxz4UHUBYmxjwhz8evLE0nY
	tp4PjvfwW75SzEj1bJ4658=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-1 (Coremail) with SMTP id _____wD3_1g5NillDlfJAQ--.24625S2;
	Fri, 13 Oct 2023 20:21:17 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de
Cc: s.hauer@pengutronix.de,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 3/4] drm/rockchip: fix the plane format defination of rk3568/6
Date: Fri, 13 Oct 2023 20:21:12 +0800
Message-Id: <20231013122112.1594259-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231013122001.1594009-1-andyshrk@163.com>
References: <20231013122001.1594009-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3_1g5NillDlfJAQ--.24625S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7uFWDAr18uryfuF18Jw17GFg_yoW8KryxpF
	WDArnrX3y09Fy8tF1kJr98Jr4rA3ZrCa1I9w4F93Z7KFy5KFyUKF9xtFyDCr9Fqry8Ca1I
	yr43JryrZF47JrJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jyE__UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiEAoIXl8YLt07VwACsW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_052132_115184_9F4D44E1 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
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

From: Andy Yan <andy.yan@rock-chips.com>

Add the missing 10 bit RGB format for cluster window.
The cluster windows on rk3568/6 only support afbc format,
so change the  linear yuv format NV12/16/24 to non-Linear
YUV420_8BIT/YUV420_10BIT/YUYV/Y210.

Add NV15 for esmart windows.

Also add some comments.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2:
- split rename to another patch

 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 22 +++++++++++++-------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 62b573f282a7..05aee588e8c9 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -16,6 +16,10 @@
 #include "rockchip_drm_vop2.h"
 
 static const uint32_t formats_win_full_10bit[] = {
+	DRM_FORMAT_XRGB2101010,
+	DRM_FORMAT_ARGB2101010,
+	DRM_FORMAT_XBGR2101010,
+	DRM_FORMAT_ABGR2101010,
 	DRM_FORMAT_XRGB8888,
 	DRM_FORMAT_ARGB8888,
 	DRM_FORMAT_XBGR8888,
@@ -24,9 +28,10 @@ static const uint32_t formats_win_full_10bit[] = {
 	DRM_FORMAT_BGR888,
 	DRM_FORMAT_RGB565,
 	DRM_FORMAT_BGR565,
-	DRM_FORMAT_NV12,
-	DRM_FORMAT_NV16,
-	DRM_FORMAT_NV24,
+	DRM_FORMAT_YUV420_8BIT, /* yuv420_8bit non-Linear mode only */
+	DRM_FORMAT_YUV420_10BIT, /* yuv420_10bit non-Linear mode only */
+	DRM_FORMAT_YUYV, /* yuv422_8bit non-Linear mode only*/
+	DRM_FORMAT_Y210, /* yuv422_10bit non-Linear mode only */
 };
 
 static const uint32_t formats_win_full_10bit_yuyv[] = {
@@ -38,11 +43,12 @@ static const uint32_t formats_win_full_10bit_yuyv[] = {
 	DRM_FORMAT_BGR888,
 	DRM_FORMAT_RGB565,
 	DRM_FORMAT_BGR565,
-	DRM_FORMAT_NV12,
-	DRM_FORMAT_NV16,
-	DRM_FORMAT_NV24,
-	DRM_FORMAT_YVYU,
-	DRM_FORMAT_VYUY,
+	DRM_FORMAT_NV12, /* yuv420_8bit linear mode, 2 plane */
+	DRM_FORMAT_NV15, /* yuv420_10bit linear mode, 2 plane, no padding */
+	DRM_FORMAT_NV16, /* yuv422_8bit linear mode, 2 plane */
+	DRM_FORMAT_NV24, /* yuv444_8bit linear mode, 2 plane */
+	DRM_FORMAT_YVYU, /* yuv422_8bit[YVYU] linear mode */
+	DRM_FORMAT_VYUY, /* yuv422_8bit[VYUY] linear mode */
 };
 
 static const uint32_t formats_win_lite[] = {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
