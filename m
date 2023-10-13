Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE662CDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 12:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yx8qlV1LteoMalO5WPA/ZinNQHTaU4r98nya+pP4+e8=; b=jn6gf8vRbu8U2Z
	2jATcj7gOD470IVriSeAvKk1y8K8VSYO8OZX6Kf685QY1iXGs5h1t+DaKMnnc5OWwE5mfs8QFN2zc
	r3V5WpeOMFnJ56/pQY2Wh3+8AjUitN4l3+fit/RWNu/wCuoLrkdoeLGGEtiz7o49bJv8J9UVrkhm4
	C4DUP7s57e+TKxFEt2IrcGD6piab6IiREDjHX3aOKPMf4jzxhcxQbmban5Yw5Sf3rX4eSEXStWVxa
	DeJBjX4HB0WCfgsMLUf4HaSJPBBM7hPNwvNbrs7cEqestGtI2hYA2Rqhdj6y7r0ZG0zpjS0iFErOy
	Lfgqs/gpsQhW2VTiyl+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrHAr-003PNx-20;
	Fri, 13 Oct 2023 12:21:49 +0000
Received: from m12.mail.163.com ([220.181.12.196])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrHAo-003PMV-0I
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 12:21:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=7vbeS
	vE0+nN2xFlJ3s3DLsu1/gcvjE/n2nTDWrgjPuE=; b=FC5AdfUNLhVoQrOx26FMf
	CGTpGLBYqK0M+Jir08Ek+AJSS2iD0jRUkUd0lgcmRRbVK7MomO/xr+WInqAYjPt1
	a1c3prmYEcvISqE6ieLKYIqRbqWH1OAP8ZnlnE9HVfor6IeEZtKClK9ZcFIKgWBg
	OcKl01sfWd3vQ1vsqi4ths=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-1 (Coremail) with SMTP id _____wD3_xxKNillelXIAQ--.30261S2;
	Fri, 13 Oct 2023 20:21:34 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de
Cc: s.hauer@pengutronix.de,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 4/4] drm/rockchip: rename windows format for vop2
Date: Fri, 13 Oct 2023 20:21:29 +0800
Message-Id: <20231013122129.1594307-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231013122001.1594009-1-andyshrk@163.com>
References: <20231013122001.1594009-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3_xxKNillelXIAQ--.30261S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxAF1xKF43Kr1xGF15GryUKFg_yoWrCF1xpa
	9F9rnxuF45uF45Wr1UJayUZr4rC3ZIka1a9wn5G3Z7KF43KF9rXr1UKas8CryDKFy8Ar1U
	Ar4aqryUZr47tFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jk18PUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiEBAIXl8YLt0+AwAAsf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_052146_936608_549ED932 
X-CRM114-Status: UNSURE (   9.45  )
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

formats_win_full_10bit is for cluster window,
formats_win_full_10bit_yuyv is for rk356x esmart, rk3588 esmart window
will support more format.
formats_win_lite is for smart window.

Rename it based the windows type may let meaning is clearer

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 30 ++++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 05aee588e8c9..574cb013639e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -15,7 +15,7 @@
 
 #include "rockchip_drm_vop2.h"
 
-static const uint32_t formats_win_full_10bit[] = {
+static const uint32_t formats_cluster[] = {
 	DRM_FORMAT_XRGB2101010,
 	DRM_FORMAT_ARGB2101010,
 	DRM_FORMAT_XBGR2101010,
@@ -34,7 +34,7 @@ static const uint32_t formats_win_full_10bit[] = {
 	DRM_FORMAT_Y210, /* yuv422_10bit non-Linear mode only */
 };
 
-static const uint32_t formats_win_full_10bit_yuyv[] = {
+static const uint32_t formats_rk356x_esmart[] = {
 	DRM_FORMAT_XRGB8888,
 	DRM_FORMAT_ARGB8888,
 	DRM_FORMAT_XBGR8888,
@@ -51,7 +51,7 @@ static const uint32_t formats_win_full_10bit_yuyv[] = {
 	DRM_FORMAT_VYUY, /* yuv422_8bit[VYUY] linear mode */
 };
 
-static const uint32_t formats_win_lite[] = {
+static const uint32_t formats_smart[] = {
 	DRM_FORMAT_XRGB8888,
 	DRM_FORMAT_ARGB8888,
 	DRM_FORMAT_XBGR8888,
@@ -150,8 +150,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 		.name = "Smart0-win0",
 		.phys_id = ROCKCHIP_VOP2_SMART0,
 		.base = 0x1c00,
-		.formats = formats_win_lite,
-		.nformats = ARRAY_SIZE(formats_win_lite),
+		.formats = formats_smart,
+		.nformats = ARRAY_SIZE(formats_smart),
 		.format_modifiers = format_modifiers,
 		.layer_sel_id = 3,
 		.supported_rotations = DRM_MODE_REFLECT_Y,
@@ -162,8 +162,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 	}, {
 		.name = "Smart1-win0",
 		.phys_id = ROCKCHIP_VOP2_SMART1,
-		.formats = formats_win_lite,
-		.nformats = ARRAY_SIZE(formats_win_lite),
+		.formats = formats_smart,
+		.nformats = ARRAY_SIZE(formats_smart),
 		.format_modifiers = format_modifiers,
 		.base = 0x1e00,
 		.layer_sel_id = 7,
@@ -175,8 +175,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 	}, {
 		.name = "Esmart1-win0",
 		.phys_id = ROCKCHIP_VOP2_ESMART1,
-		.formats = formats_win_full_10bit_yuyv,
-		.nformats = ARRAY_SIZE(formats_win_full_10bit_yuyv),
+		.formats = formats_rk356x_esmart,
+		.nformats = ARRAY_SIZE(formats_rk356x_esmart),
 		.format_modifiers = format_modifiers,
 		.base = 0x1a00,
 		.layer_sel_id = 6,
@@ -188,8 +188,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 	}, {
 		.name = "Esmart0-win0",
 		.phys_id = ROCKCHIP_VOP2_ESMART0,
-		.formats = formats_win_full_10bit_yuyv,
-		.nformats = ARRAY_SIZE(formats_win_full_10bit_yuyv),
+		.formats = formats_rk356x_esmart,
+		.nformats = ARRAY_SIZE(formats_rk356x_esmart),
 		.format_modifiers = format_modifiers,
 		.base = 0x1800,
 		.layer_sel_id = 2,
@@ -202,8 +202,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 		.name = "Cluster0-win0",
 		.phys_id = ROCKCHIP_VOP2_CLUSTER0,
 		.base = 0x1000,
-		.formats = formats_win_full_10bit,
-		.nformats = ARRAY_SIZE(formats_win_full_10bit),
+		.formats = formats_cluster,
+		.nformats = ARRAY_SIZE(formats_cluster),
 		.format_modifiers = format_modifiers_afbc,
 		.layer_sel_id = 0,
 		.supported_rotations = DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_270 |
@@ -217,8 +217,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 		.name = "Cluster1-win0",
 		.phys_id = ROCKCHIP_VOP2_CLUSTER1,
 		.base = 0x1200,
-		.formats = formats_win_full_10bit,
-		.nformats = ARRAY_SIZE(formats_win_full_10bit),
+		.formats = formats_cluster,
+		.nformats = ARRAY_SIZE(formats_cluster),
 		.format_modifiers = format_modifiers_afbc,
 		.layer_sel_id = 1,
 		.supported_rotations = DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_270 |
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
