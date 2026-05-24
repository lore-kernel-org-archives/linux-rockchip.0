Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 600E5CD5BB1
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 May 2026 16:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kh7fplkS6dUFb0mJyOEMSUiNEyRTkh1pyZLFNJwBlPA=; b=TjaEbDnyqr6wvg
	UQDMJhwMeY4zGNm4zp+rRaRiVW3ahBv+dBljruJXP9/LDIpRWGyMJUD/iRWwTuj3rvNlQjmuxLY3V
	IAQM/wa1iGn5wrOLYaHRXRBnf4FHahVM+gm+TSfh6Veld17TNCogc1D2OeY1wDsPKB23BOTRnE33q
	DOywuwZhfmIXhzq4o1o/1P48zFUN/PH/JVudFZeSEGgBLd/mUIddAEfZ30wQ9HCnAhUDOa4Jy7ZtU
	k8m3Vqz0iYxraJv9owW5JW7mkyc5y9wdH/e30JGKtmx32i91Up0BHffOFzPdsE+upA65b4OgwN2oa
	sv+CV+75jk+QX1zgNGig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRBg9-0000000FGht-0qT3;
	Sun, 24 May 2026 16:27:53 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRBg2-0000000FGei-1DcX;
	Sun, 24 May 2026 16:27:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1779640063;
	bh=3XI839pwxOLRxjr8d7Rv3qpB1MWRN40cGsaWsPNwOV0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=oesAuBRhT6O91wQCN1909BKv8YMxG/S/GIg6BmO0P9hhH96OJD0upGonxP0I5V20F
	 21JIiuqU5/1QOB6/5qQR3Yz/CA8napkQRkz6evHu7AMVSbSD93Z/4jM74goayNAFVz
	 5b/MVk1VsFSTenSNHtWYtmew/Hl2V/eZx1XdeE61db2sR8a6X6capn52Pq5O+rJ/Ow
	 9p6l2iHiBApDYJ0BGN580fl2Jqf51OugWc4KCrc8QgnA7ou2A5xqL1VjwMPZX5K18W
	 6G/8VuXxl4SmWDfOZXRcL5qrcUtRnvpDYdbNAOtGQwyEPq0y+zrvFPhx0qUazVCqvD
	 NkVEfUI+yvLnw==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DF54317E0977;
	Sun, 24 May 2026 18:27:42 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sun, 24 May 2026 19:27:28 +0300
Subject: [PATCH 1/2] drm/rockchip: vop2: Rename CSC_BT2020 to CSC_BT2020L
MIME-Version: 1.0
Message-Id: <20260524-vop2-bg-yuv-v1-1-dcb6a52923f5@collabora.com>
References: <20260524-vop2-bg-yuv-v1-0-dcb6a52923f5@collabora.com>
In-Reply-To: <20260524-vop2-bg-yuv-v1-0-dcb6a52923f5@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_092746_472536_372DB38E 
X-CRM114-Status: UNSURE (   9.36  )
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

Rename CSC_BT2020 to CSC_BT2020L for consistency with the other
limited-range enum members (CSC_BT601L, CSC_BT709L) and to distinguish
it from a potential future full-range BT.2020 variant.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index a160077a507f..64ac07cb1b0d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -658,7 +658,7 @@ static int vop2_convert_csc_mode(int csc_mode)
 	case V4L2_COLORSPACE_JPEG:
 		return CSC_BT601F;
 	case V4L2_COLORSPACE_BT2020:
-		return CSC_BT2020;
+		return CSC_BT2020L;
 	default:
 		return CSC_BT709L;
 	}
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index 37722652844a..ffcb39c130aa 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -373,7 +373,7 @@ enum vop_csc_format {
 	CSC_BT601L,
 	CSC_BT709L,
 	CSC_BT601F,
-	CSC_BT2020,
+	CSC_BT2020L,
 };
 
 enum src_factor_mode {

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
