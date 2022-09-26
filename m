Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 230EDC6FA92
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 20:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hvnEtJh0G90+2s9+GvjpQWsLpoc8TSPf/qMqRIpjMQY=; b=1X9H53PfEZED/1
	40cknM0esuCajDTB1FzuHTIpmwyySlJzYsuos7mY4VBryWrVuP1tmuGUbLzGY9EXq3Kl+rrgA0GRU
	2VS1/fzNVm+/LgAteJ0wJxAFrkAvxlF3MQaWyWb1hUuzlWObTTGpuwGlJJ+/OKv3F+ydu88HeBca5
	whJGvQOym5zdsbgI/U0iTOFNZEnWqxx6JDsm/MfaSfc2qUc8YIinw7hsu7bwwpeLgnvaTH8eLtQMR
	kVbCxiipwBZWZntnlAksMACp7i1pINrPbI26gIiSk6pFbCXFlFqyr18HEutV8CQLurdMDotTfFN28
	8T5HkfkWhvjq01TL2c3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocurz-006lOV-Lp; Mon, 26 Sep 2022 20:38:27 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocurn-006lLq-Nq; Mon, 26 Sep 2022 20:38:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
	Subject:Cc:To:From:Content-Type:From:Reply-To:Subject:Content-ID:
	Content-Description:In-Reply-To:References:X-Debbugs-Cc;
	bh=6mMntl/NSx3pI8k7cwocEGZTr8TFwyTDRITg/BPF9cE=; b=jsOYLfELogFtxXpumU7TR84MXy
	Eu1UFVHsGD3Cj6UmLrM/ZTUSNvZz/xc6ldsssTnH8FS6td7ee6m/LX31WwRxDiUukhQrcskxUWWkT
	VoPG1wrRFuybvausa2AhjVXJF8dX6aOJ6YQ47vA1lpmZCMp/kUCCS4hSkeY3RDcYntCEbgalmkvXm
	BGUZHDyOTnFsAsPuuxGwC8hDb+YB+3WDlK8eKaoECB53D6G2BeeeYOXlW/V7bdBM+laONV31EMmhv
	9YuLdNrFUlYxWTL81SdBPAz6d/d/i058J3xiyHd5I6RgnRbx8vv/mehnwKmO6yBVImUXYrcJSHKC/
	3ss+EE/Q==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocurd-00BDVl-KH; Mon, 26 Sep 2022 22:38:05 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocurd-0001Q2-0I;
	Mon, 26 Sep 2022 22:38:05 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: linux-kernel@vger.kernel.org
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	dri-devel@lists.freedesktop.org (open list:DRM DRIVERS FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH] drm/rockchip: dw_hdmi: filter regulator -EPROBE_DEFER error messages
Date: Mon, 26 Sep 2022 22:37:52 +0200
Message-Id: <20220926203752.5430-1-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_133815_791822_BC2A37CC 
X-CRM114-Status: GOOD (  11.27  )
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

When the avdd-0v9 or avdd-1v8 supply are not yet available, EPROBE_DEFER
is returned by rockchip_hdmi_parse_dt(). This causes the following error
message to be printed multiple times:

    dwhdmi-rockchip fe0a0000.hdmi: [drm:dw_hdmi_rockchip_bind [rockchipdrm]] *ERROR* Unable to parse OF data

Fix that by not printing the message when rockchip_hdmi_parse_dt()
returns -EPROBE_DEFER.

Fixes: ca80c4eb4b01 ("drm/rockchip: dw_hdmi: add regulator support")
Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index c14f88893868..2f4b8f64cbad 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -565,7 +565,8 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
 
 	ret = rockchip_hdmi_parse_dt(hdmi);
 	if (ret) {
-		DRM_DEV_ERROR(hdmi->dev, "Unable to parse OF data\n");
+		if (ret != -EPROBE_DEFER)
+			DRM_DEV_ERROR(hdmi->dev, "Unable to parse OF data\n");
 		return ret;
 	}
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
