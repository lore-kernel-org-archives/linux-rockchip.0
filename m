Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62E7FECAAA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+qEH41X+aOl8aYveIShceBzGO2IpfFrOHSwSKjBoTpU=; b=VFjrwza/OQ19wI
	KgDLqAweC5oczhGgEV0dpclq67U3omnEWXkK9J0GUoWYsMbdbrwnYoVEUq9FNRRLIUxNIBunLj1k1
	EKL80Rt9q8NIoGgtOWZfAg4AXNrL1MUdFFyRpezIIB9VNqlUZPO21XwLDcrRnqArZM9qJmticb3Tr
	wT7dsSaXNwoT/XDBz7eqhxT/eiIKmLPjprxC75ElhiP2JjMFXzwwVMXqVwK0c5jDFxcWkEwsyWh4c
	pEEOEF2N0ZLB/FQdzoTBLcZfHuv3PPq0aa2o/b7HffC2TW+GORrq1Egi2ZdldQCtnNrZ7sdVbKXXq
	PS+3W0QaxeSU2oca8suw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYOU-00DGOg-I4; Mon, 31 Oct 2022 17:16:14 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opYOS-00DGLP-1E
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 17:16:13 +0000
Received: by mail-pg1-x530.google.com with SMTP id 128so11270354pga.1
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Oct 2022 10:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ew7SqTPEFFhxu7/hKrNbrME/m/ofSkUv4YYTUxK9hTE=;
        b=LNy0wlk54NXx0XGRLGJLTGHN4ywvxf5ommsqE1Fdvkb3oQxH48emeDOhk5HgzYYP5i
         D6Idhh6Iw5QX1O0N/ayHK9u2K512PuftFkYPlMpLOP7ZAjKaGvggrvDwGBhXal3Q86yb
         19ek7qCAUe4SKIA9ct7LeonTh+0TQdvtmnfXY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ew7SqTPEFFhxu7/hKrNbrME/m/ofSkUv4YYTUxK9hTE=;
        b=EKBJqIjqSsE1KmhznU5UKcbx1mdWC17tMqh6HurIFhinQWX/TIb0aqEgVGVbC3Uy1v
         0jUvH6iwEaxIt44PiF9yDr+UFYm2cVmcQRmac7nwdYI6b/2+gXBom+k7eI+pjCw40zBT
         UFurON1rCfQ9ghBwsWblbOB5QgZp35egzO8Yraspgkub9yrtvhoDOumcshn28gWQCZ3V
         xoFHPi71sbvi6PnC6De3hA4ikTIZsV6fGeClBeox/J4U4W5UXt6+UEBHDN0u/XRHXzQq
         PvLU62ME8c7ewz2zRmbcgzp4xWLYQQxT/oS4dDbL2dYsk0SdtQ2v6WXPUhuQlycvR+m7
         U5Dw==
X-Gm-Message-State: ACrzQf2hNBXbmMI3HNL0Kio13+dEg1WO9av286L+P8GmFUDR0Gz5DcjN
	VAFAdHAwuRkD2gbtbC0RqCoCJA==
X-Google-Smtp-Source: AMsMyM4cDfw2gQpzV2vuUo36o86Uf/NDWo6Qa/wbI4r1jWqZL9p4/hZK2btJIj/1sXglXJX0VgmwHw==
X-Received: by 2002:a63:69c2:0:b0:46a:eeb1:e784 with SMTP id e185-20020a6369c2000000b0046aeeb1e784mr13351654pgc.589.1667236569518;
        Mon, 31 Oct 2022 10:16:09 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:cf9d:6561:637d:2194])
        by smtp.gmail.com with UTF8SMTPSA id f15-20020a170902684f00b0017d97d13b18sm4679040pln.65.2022.10.31.10.16.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 10:16:09 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: Sandy Huang <hjc@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Brian Norris <briannorris@chromium.org>
Subject: [PATCH] drm/rockchip: vop: Quiet always-warning AFBC log
Date: Mon, 31 Oct 2022 10:16:01 -0700
Message-Id: <20221031101557.1.Ic1569d394173c1c3016142fee4bb87a09753db94@changeid>
X-Mailer: git-send-email 2.38.1.273.g43a17bfeac-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_101612_134406_FA047541 
X-CRM114-Status: GOOD (  13.24  )
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

The downstream code from which this was derived didn't ever run through
this 'switch' block with non-AFBC formats, but the upstream code does --
we use this function to probe whether a given format is supported.

Demote the warning to eliminate this sort of warning seen on every
boot:

  [drm] unsupported AFBC format[3231564e]

And make it warn more than once, because if we *actually* care to see
what formats we're probing/rejecting and for what reasons, we probably
care about more than just the first message.

Drop the comment, because one of the two *is* commonly reachable.

And lastly, drop the unreachable return; we'd do better to let the
compiler complain if we start hitting this unexpectedly.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index fa1f4ee6d195..aab77eb6caa3 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -316,13 +316,10 @@ static int vop_convert_afbc_format(uint32_t format)
 	case DRM_FORMAT_RGB565:
 	case DRM_FORMAT_BGR565:
 		return AFBC_FMT_RGB565;
-	/* either of the below should not be reachable */
 	default:
-		DRM_WARN_ONCE("unsupported AFBC format[%08x]\n", format);
+		DRM_DEBUG_KMS("unsupported AFBC format[%08x]\n", format);
 		return -EINVAL;
 	}
-
-	return -EINVAL;
 }
 
 static uint16_t scl_vop_cal_scale(enum scale_mode mode, uint32_t src,
-- 
2.38.1.273.g43a17bfeac-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
