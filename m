Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADBCCCDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Oct 2023 02:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ON/E3/iE2ITTSO9MjQa22b+G8ZsvkMSYUMrkUUCAdlU=; b=SGOqoXvE4kVmny
	ml1CgNkS1sBil8meTqfzzJCAeYI89rhg7wbAUqf2bmEAsWEzbcwyQG5JeJWGQJCnw8RHCnkzR0eZy
	fujo7KJtrEe1fsFVqbh6rLbpE0K6WWyxXZ0BhupN19o7htoJXeonAthilnh49rkyeODNpRhN/Wmj5
	gVUmX5QZUc2dncE2BxRD0JZQseqtzEKSWbu6sCwe+ciJ2nBGZAchDSw9DVMXbLmY/xxh9A1QFPxyK
	hQx9GDDgaEfZMURnRAsLmBHiVWN+HJFZ930qhdumO2Q9lzzKtgb+jC0OWcd+k1i4ri02ycWvj+4pN
	wCLI+sSiMez+3i9+9P7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqlZk-00HCa6-0z;
	Thu, 12 Oct 2023 02:37:24 +0000
Received: from m12.mail.163.com ([220.181.12.215])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqlZg-00HCYy-22
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Oct 2023 02:37:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=V2Qn8
	0O+DIwJixoj7jqNQwuc43YnzGHFevQESeTJiA0=; b=W0H4hvk6YpSbquSIdnbYa
	O5sPGD7IwTnqDQnwNJVHZSr8fC4ub210TEV+LxF3mgP5DGfGdwseSLhB8mc00ech
	6n24nRSonOYSrsw81wrWhN0BEpOgNQ6uixGd3xFSm/WHOhhg2MkozafvJsx+ijZR
	szP1MSdxSknE93Xz78I8NY=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-3 (Coremail) with SMTP id _____wD3v9HSWydlF2ZJAQ--.58923S2;
	Thu, 12 Oct 2023 10:37:09 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de
Cc: s.hauer@pengutronix.de,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 3/3] drm/rockchip: fix the plane format defination of rk3568/6
Date: Thu, 12 Oct 2023 10:37:05 +0800
Message-Id: <20231012023705.1497648-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231012023439.1497304-1-andyshrk@163.com>
References: <20231012023439.1497304-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3v9HSWydlF2ZJAQ--.58923S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxuw47Cw43Zw4UKF45ZFyDGFg_yoW7ArWUpa
	yDurnxWF4rZFyrK3WUJ3yUZr4rC3ZxGa1S9w4rG3Z7KFy5KF9rJr1Dtas8C34DKFy8Aw12
	yr4aqry5Zr47trJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jyE__UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiOwwHXmC5nzHvxAABsz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_193721_080980_403DF395 
X-CRM114-Status: GOOD (  11.38  )
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

The cluster windows on rk3568/6 only support afbc format,
linear format(RGB/YUV) are not supported.
The cluster windows on rk3588 support both linear and afbc rgb
format, but for yuv format it only support afbc.

The esmart windows on rk3588 support uv swap for yuyv, but
rk356x does not support it.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 53 +++++++++++---------
 1 file changed, 30 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 62b573f282a7..cde85a17f138 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -15,7 +15,11 @@
 
 #include "rockchip_drm_vop2.h"
 
-static const uint32_t formats_win_full_10bit[] = {
+static const uint32_t formats_for_cluster[] = {
+	DRM_FORMAT_XRGB2101010,
+	DRM_FORMAT_ARGB2101010,
+	DRM_FORMAT_XBGR2101010,
+	DRM_FORMAT_ABGR2101010,
 	DRM_FORMAT_XRGB8888,
 	DRM_FORMAT_ARGB8888,
 	DRM_FORMAT_XBGR8888,
@@ -24,12 +28,14 @@ static const uint32_t formats_win_full_10bit[] = {
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
 
-static const uint32_t formats_win_full_10bit_yuyv[] = {
+/* RK356x can't support uv swap for YUYV and UYVY */
+static const uint32_t formats_for_rk356x_esmart[] = {
 	DRM_FORMAT_XRGB8888,
 	DRM_FORMAT_ARGB8888,
 	DRM_FORMAT_XBGR8888,
@@ -38,14 +44,15 @@ static const uint32_t formats_win_full_10bit_yuyv[] = {
 	DRM_FORMAT_BGR888,
 	DRM_FORMAT_RGB565,
 	DRM_FORMAT_BGR565,
-	DRM_FORMAT_NV12,
-	DRM_FORMAT_NV16,
-	DRM_FORMAT_NV24,
-	DRM_FORMAT_YVYU,
-	DRM_FORMAT_VYUY,
+	DRM_FORMAT_NV12, /* yuv420_8bit linear mode, 2 plane */
+	DRM_FORMAT_NV16, /* yuv422_8bit linear mode, 2 plane */
+	DRM_FORMAT_NV24, /* yuv444_8bit linear mode, 2 plane */
+	DRM_FORMAT_NV15, /* yuv420_10bit linear mode, 2 plane, no padding */
+	DRM_FORMAT_YUYV, /* yuv422_8bit[YUYV] linear mode */
+	DRM_FORMAT_UYVY, /* yuv422_8bit[UYVY] linear mode */
 };
 
-static const uint32_t formats_win_lite[] = {
+static const uint32_t formats_for_smart[] = {
 	DRM_FORMAT_XRGB8888,
 	DRM_FORMAT_ARGB8888,
 	DRM_FORMAT_XBGR8888,
@@ -144,8 +151,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 		.name = "Smart0-win0",
 		.phys_id = ROCKCHIP_VOP2_SMART0,
 		.base = 0x1c00,
-		.formats = formats_win_lite,
-		.nformats = ARRAY_SIZE(formats_win_lite),
+		.formats = formats_for_smart,
+		.nformats = ARRAY_SIZE(formats_for_smart),
 		.format_modifiers = format_modifiers,
 		.layer_sel_id = 3,
 		.supported_rotations = DRM_MODE_REFLECT_Y,
@@ -156,8 +163,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 	}, {
 		.name = "Smart1-win0",
 		.phys_id = ROCKCHIP_VOP2_SMART1,
-		.formats = formats_win_lite,
-		.nformats = ARRAY_SIZE(formats_win_lite),
+		.formats = formats_for_smart,
+		.nformats = ARRAY_SIZE(formats_for_smart),
 		.format_modifiers = format_modifiers,
 		.base = 0x1e00,
 		.layer_sel_id = 7,
@@ -169,8 +176,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 	}, {
 		.name = "Esmart1-win0",
 		.phys_id = ROCKCHIP_VOP2_ESMART1,
-		.formats = formats_win_full_10bit_yuyv,
-		.nformats = ARRAY_SIZE(formats_win_full_10bit_yuyv),
+		.formats = formats_for_rk356x_esmart,
+		.nformats = ARRAY_SIZE(formats_for_rk356x_esmart),
 		.format_modifiers = format_modifiers,
 		.base = 0x1a00,
 		.layer_sel_id = 6,
@@ -182,8 +189,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 	}, {
 		.name = "Esmart0-win0",
 		.phys_id = ROCKCHIP_VOP2_ESMART0,
-		.formats = formats_win_full_10bit_yuyv,
-		.nformats = ARRAY_SIZE(formats_win_full_10bit_yuyv),
+		.formats = formats_for_rk356x_esmart,
+		.nformats = ARRAY_SIZE(formats_for_rk356x_esmart),
 		.format_modifiers = format_modifiers,
 		.base = 0x1800,
 		.layer_sel_id = 2,
@@ -196,8 +203,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 		.name = "Cluster0-win0",
 		.phys_id = ROCKCHIP_VOP2_CLUSTER0,
 		.base = 0x1000,
-		.formats = formats_win_full_10bit,
-		.nformats = ARRAY_SIZE(formats_win_full_10bit),
+		.formats = formats_for_cluster,
+		.nformats = ARRAY_SIZE(formats_for_cluster),
 		.format_modifiers = format_modifiers_afbc,
 		.layer_sel_id = 0,
 		.supported_rotations = DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_270 |
@@ -211,8 +218,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 		.name = "Cluster1-win0",
 		.phys_id = ROCKCHIP_VOP2_CLUSTER1,
 		.base = 0x1200,
-		.formats = formats_win_full_10bit,
-		.nformats = ARRAY_SIZE(formats_win_full_10bit),
+		.formats = formats_for_cluster,
+		.nformats = ARRAY_SIZE(formats_for_cluster),
 		.format_modifiers = format_modifiers_afbc,
 		.layer_sel_id = 1,
 		.supported_rotations = DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_270 |
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
