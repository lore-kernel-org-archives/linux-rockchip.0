Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 227FDCDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 09:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypqZTL78o7ngXMPRrfpNuqe4BMrX6SF+oGjZHVAGtoA=; b=ubqzh5AqBqxbak
	MwEF9JuboBW35zVBGPWGGaFce8nPe2xzCA62g52lyEeMaroTIbeW9DrJkfqjCbT+g4CwSkZ5Pfuzr
	OqSKG+s+05AmSOuGkE5K5+sO+RK96Lo8EehOq6ZCP4BAZIhPh0o4dqYdJfln9Yxsa1AZ7rgZJATY+
	9h/Y5AqiligtZqn3oec1Psfitc/hgs2R7VWc1YnSx2rhEMtC6ASOwM2RqmJyXg9tuFMuIo4+U54To
	ljD5HWJvmbJt5WmAC7norSGiRRV++Q/ngY5J7yQuhAtduQdr03aaCEx465ZCTchKzuNfU5vwQk8qM
	NGEzGKdbwVhOsmwMGf2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt35y-00EIos-1L;
	Wed, 18 Oct 2023 09:44:06 +0000
Received: from m12.mail.163.com ([220.181.12.216])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt35u-00EInw-2o
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 09:44:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=UE5ny
	2U845hUveTADk37Szj4xJgI4fIwTqY/gMa46xs=; b=oWHm7TY+QbdPJUn6JyF47
	0Xwow6Um67Hj/tjh4DW0dc0usDyNBeR2+ZUwsTN/hxqab6mYxkFXUUSYXUfeg/et
	V/PnezSF2JiAjQbgGISPa1ky8b8PVk/akTgKYO/a0Xom22dMqXSe7Vcz7YdnZGcg
	R4IrFIdA1KKseuepecNakA=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g3-1 (Coremail) with SMTP id _____wDnj5TMqC9lLxuJAw--.4745S2;
	Wed, 18 Oct 2023 17:43:44 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	jonas@kwiboo.se
Cc: s.hauer@pengutronix.de,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 4/4] drm/rockchip: rename windows format for vop2
Date: Wed, 18 Oct 2023 17:43:39 +0800
Message-Id: <20231018094339.2476142-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018094122.2475668-1-andyshrk@163.com>
References: <20231018094122.2475668-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDnj5TMqC9lLxuJAw--.4745S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxAF1xKF43Kr4xJF47JF47Arb_yoWrCF1xpa
	9F9rnxuF4ruF45Wr1UJayUZr4rC3ZIk3ya9wn5G3Z7KF43KF9rXr1UKas8Cr1DKa48Ar1U
	Jr4aqryUZr47tFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jSzuAUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiTAsNXmI0bm1figACsW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_024403_247602_87DDA43D 
X-CRM114-Status: UNSURE (   9.65  )
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
index bcc224624a26..fdb48571efce 100644
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
@@ -54,7 +54,7 @@ static const uint32_t formats_win_full_10bit_yuyv[] = {
 	DRM_FORMAT_VYUY, /* yuv422_8bit[VYUY] linear mode */
 };
 
-static const uint32_t formats_win_lite[] = {
+static const uint32_t formats_smart[] = {
 	DRM_FORMAT_XRGB8888,
 	DRM_FORMAT_ARGB8888,
 	DRM_FORMAT_XBGR8888,
@@ -153,8 +153,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
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
@@ -165,8 +165,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
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
@@ -178,8 +178,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
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
@@ -191,8 +191,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
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
@@ -205,8 +205,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
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
@@ -220,8 +220,8 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
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
