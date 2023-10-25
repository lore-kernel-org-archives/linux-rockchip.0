Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF7AEC25B6B
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Oct 2023 21:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pagXoMVR8s4rZWpENQ45+Shpzz1aBryNWV16uPn9znI=; b=EoypzIU5htXNMj
	2hsqAQslAHtGHpnfByFuCUDXJgFz9G65+FebaMCtl4tKLv+fcNAHI1QSoyDWjiBvintUV7JJnfE38
	BZCgdIKwh8j0YCQQ2G+12hbLkMlk5XZqXjQVYInQKCKUWAog1vsbYYFaKcxR7hd2pHyGe7YL9aBQ3
	2JIKBygf8Mynm+v2gaCWFWfUEI2iA6qoXEk+GwUp0XSd3YAWLJcKoaQzsNZJ516WRKY+C2510hBrA
	KKLIr9iqrP5qaPFETP25aRNO/nxb6dZokXE5laVeJMhjxCIB4FDLEw1a33ryG7LTMFQE6VZrAfdmD
	jqBs8H7zMAI6sGVW14+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvlV6-00DBHY-2o;
	Wed, 25 Oct 2023 21:33:16 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvlV2-00DBGq-1S;
	Wed, 25 Oct 2023 21:33:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1698269575;
 bh=PSE4xeckRKb3xz86Jk8z81faXilq5QfiYs9qzrlEBgs=;
 b=N+cMIIrpr8ln3Iilgkyt0/UgfRXzTS3OtOM30F1ZZzwfq0GIuI4JRWpYC/yfRPgSQpDlewt04
 68KRwzISF5vgsi3MwtKivvuaM7DXOEEDEhBPkYzcqK5d21WnrCF9l+3bQ5KUEA6Kg62oiP15EZw
 5ylH3DTogwV7cO0J+P3PldE3nVSFgGWYzd7Y7jJTuPRgnOq0fGyajcgiSxoLNZongrqwmRt8axl
 qgS4q41s3toHdvsl7EfEQXUh0vZqSMXDZJzP/08fc27bB8avVYF8yk3AmNJbcZutARCchik5Fcd
 EO1V1GNCPsfdSiXlP9QQ3A+I0TCK2HF9idSaHOYYM7+w==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Andy Yan <andy.yan@rock-chips.com>, Christopher Obbard
 <chris.obbard@collabora.com>, Jonas Karlman <jonas@kwiboo.se>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: vop2: Add NV20 and NV30 support
Date: Wed, 25 Oct 2023 21:32:46 +0000
Message-ID: <20231025213248.2641962-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 65398986da73b54fc2dc42e3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_143313_135944_64F33D62 
X-CRM114-Status: UNSURE (   8.70  )
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

Add support for the 10-bit 4:2:2 and 4:4:4 formats NV20 and NV30.

These formats can be tested using modetest [1]:

  modetest -P <plane_id>@<crtc_id>:1920x1080@<format>

e.g. on a ROCK 3 Model A (rk3568):

  modetest -P 43@67:1920x1080@NV20 -F tiles,tiles
  modetest -P 43@67:1920x1080@NV30 -F smpte,smpte

[1] https://gitlab.freedesktop.org/mesa/drm/-/merge_requests/329

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 5 +++++
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index ab944010fe14..592f9d726f2e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -326,11 +326,14 @@ static enum vop2_data_format vop2_convert_format(u32 format)
 	case DRM_FORMAT_NV16:
 	case DRM_FORMAT_NV61:
 		return VOP2_FMT_YUV422SP;
+	case DRM_FORMAT_NV20:
 	case DRM_FORMAT_Y210:
 		return VOP2_FMT_YUV422SP_10;
 	case DRM_FORMAT_NV24:
 	case DRM_FORMAT_NV42:
 		return VOP2_FMT_YUV444SP;
+	case DRM_FORMAT_NV30:
+		return VOP2_FMT_YUV444SP_10;
 	case DRM_FORMAT_YUYV:
 	case DRM_FORMAT_YVYU:
 		return VOP2_FMT_VYUY422;
@@ -415,6 +418,8 @@ static bool vop2_win_uv_swap(u32 format)
 	case DRM_FORMAT_NV16:
 	case DRM_FORMAT_NV24:
 	case DRM_FORMAT_NV15:
+	case DRM_FORMAT_NV20:
+	case DRM_FORMAT_NV30:
 	case DRM_FORMAT_YUYV:
 	case DRM_FORMAT_UYVY:
 		return true;
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index fdb48571efce..0b4280218a59 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -48,8 +48,10 @@ static const uint32_t formats_rk356x_esmart[] = {
 	DRM_FORMAT_NV15, /* yuv420_10bit linear mode, 2 plane, no padding */
 	DRM_FORMAT_NV16, /* yuv422_8bit linear mode, 2 plane */
 	DRM_FORMAT_NV61, /* yuv422_8bit linear mode, 2 plane */
+	DRM_FORMAT_NV20, /* yuv422_10bit linear mode, 2 plane, no padding */
 	DRM_FORMAT_NV24, /* yuv444_8bit linear mode, 2 plane */
 	DRM_FORMAT_NV42, /* yuv444_8bit linear mode, 2 plane */
+	DRM_FORMAT_NV30, /* yuv444_10bit linear mode, 2 plane, no padding */
 	DRM_FORMAT_YVYU, /* yuv422_8bit[YVYU] linear mode */
 	DRM_FORMAT_VYUY, /* yuv422_8bit[VYUY] linear mode */
 };
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
