Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DC8ECD6E55
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 18:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kh7fplkS6dUFb0mJyOEMSUiNEyRTkh1pyZLFNJwBlPA=; b=GXDJNA4aQmEK5J
	gwscwoz8uMN/xCz18z5p8PbXs9IPyYlYUDyrADzzwQfupiPZDRV8huzV5hSPv9Nux8llnVrNyUAXa
	nSfige12ZNseyuBYv/fn44NmMtjC5UCZnSAfzbCpqSTAySCWSH0KEaDeF6/i3065o1Cm9XycD/QsO
	uYyDvfkGIAS5935XX/kVw7+KrNlht3kvbUdJ8nIUsfJwjiHH+I1+vDyLJwXoBXq2njWKVLKdWUAXz
	8fage1R5bl5pMQkYvOwDtmDrsX2V9dLOZiQBpDL23NteBiAuAWg899ZwUts96170CqKMQoVMtWRlm
	DQxAp2Hjv95iY91wW2+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU6wJ-0000000Bd3p-0s0P;
	Mon, 01 Jun 2026 18:00:39 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU6wF-0000000Bd2c-28U7;
	Mon, 01 Jun 2026 18:00:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780336833;
	bh=3XI839pwxOLRxjr8d7Rv3qpB1MWRN40cGsaWsPNwOV0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=dnN9m+BjboXP/4GJ5kNEjfW0uKCvzUfr5qLFwuWVENzx8z4eocbCaF+zDxcUd4r54
	 LQNGMP28w+hGfYM+jvDg1l8kUtLtmfP6PWAUTsr2hwZcyZtXlVcSJRWpCqoZ5nh4Py
	 uYsOLjxCPpf43xmAi4nPSK1Q97ioZUIpI3yAqt3VJqeW4tJhQ0TX3r9fTztGWv6Awn
	 E7AyfqFbsxcGWYrqs7UldhNxCCCIToqcc9OqARwiwRG3pobNdRtIGini1IKXPAS4nP
	 uL9U0Nt0Xv5+sLgl3YKYS+SOz4tGx+TLJSosz0MPlX63zoRLwLQBkc4ogz1dzXjHGs
	 /F48Zqw1/fbHw==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3D46B17E05B8;
	Mon,  1 Jun 2026 20:00:33 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 01 Jun 2026 21:00:03 +0300
Subject: [PATCH v2 1/2] drm/rockchip: vop2: Rename CSC_BT2020 to
 CSC_BT2020L
MIME-Version: 1.0
Message-Id: <20260601-vop2-bg-yuv-v2-1-e5aef1d16fec@collabora.com>
References: <20260601-vop2-bg-yuv-v2-0-e5aef1d16fec@collabora.com>
In-Reply-To: <20260601-vop2-bg-yuv-v2-0-e5aef1d16fec@collabora.com>
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
X-CRM114-CacheID: sfid-20260601_110035_694962_0DF3C254 
X-CRM114-Status: UNSURE (   9.99  )
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
