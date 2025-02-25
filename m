Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1972DC19F2E
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 10:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HhTxUnirrXn7Mvd07wB46TAp87tImdvOIALf+/f2yq8=; b=5FXfGU+Js7JFU0
	lO54IqBA7HrOq3PX0zZNGVPpB5DzF2OHsnn3A60Dvuez6ckQICEZAYUxJsNIJZBrYazib09OH51Gi
	DWRHXDf+iQjCbMt5BW6aSE0DVgWZguafYXVgyhGbNHHqCNrOWN/hs48Ekg4moPv5+nOSgJ0N81dvS
	dNA5L3KFk4JE7RG49PK9Wj5rOtpMY5+njasxLyn7Pm8BX+Ri1bgn1B6i0FFhRRolZKL3CUZKQBDDG
	WjghX7uj02Gya2nK9ZRSPZWdvYPwhZPGoT+EG7fO/5oXB2O7X7MUaYpNaWLnQyoKuax8GNWpSid6o
	bxDvVnHL2mUHEcFLgmqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmrlL-0000000GjQe-0KsS;
	Tue, 25 Feb 2025 10:02:03 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmrSX-0000000Gett-0rm0
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 09:42:38 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740476551; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=XcKkwdx9WAj/+w3pEg9D1riD9Ej2y49bwpT5CVEQOJRLWnd9j2xE7/epKX1Fd9E525SzUdH1zZy1+FsdVLbGw88lRkfEWxr74wRkDveXzl2pDHLiLiWP+hLYPvKPzPVe4rppkw50D/7yiAjQhlOiNUNDN6XSmMGCoYUlveewJyc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740476551; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=98NKcVOP3m83E8hgMre8aUN2HOMmw9MEKVvfDL7Tcc8=; 
	b=DlD+jrIoHeXj3b1Rwemq2gusKxNVIUQ4VyVHrQM0a6rs7LRPLYzU8hSmuKRZ9Aq72aOXLT2f0IO+YFVsrbe/qS9IFil0AD/HTt9RIN1DGBz8e+uGAxsjAC8L3yEKWWvnaS2gT2LiGgml8bGUwgax8B4ZXcmOvKjmlMxAXYEFCHA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.fricke@collabora.com;
	dmarc=pass header.from=<sebastian.fricke@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740476551;
	s=zohomail; d=collabora.com; i=sebastian.fricke@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=98NKcVOP3m83E8hgMre8aUN2HOMmw9MEKVvfDL7Tcc8=;
	b=J2HBSLG9tEeaR5etzB/5j2NnH+69/VFx1w27JFQKpKfN2dJJ5q3TOpGEW0CHpCQC
	2FBrh6nYYaYeAbhnzqU1mJYi/ebCtOQswTF2x90jkJvzfkxjTYnEL2ay8G+N1K2aScW
	zHP+wa0FhISfT8dBJRLHf6QYiqOGWn8fybovzRx0=
Received: by mx.zohomail.com with SMTPS id 1740476550430177.37442835818695;
	Tue, 25 Feb 2025 01:42:30 -0800 (PST)
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Tue, 25 Feb 2025 10:40:32 +0100
Subject: [PATCH v7 11/12] media: rkvdec: h264: Limit minimum profile to
 constrained baseline
MIME-Version: 1.0
Message-Id: <20250225-rkvdec_h264_high10_and_422_support-v7-11-7992a68a4910@collabora.com>
References: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com>
In-Reply-To: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Hans Verkuil <hverkuil@xs4all.nl>, 
 Boris Brezillon <boris.brezillon@collabora.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
 Alex Bee <knaerzche@gmail.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>, Jonas Karlman <jonas@kwiboo.se>, 
 Sebastian Fricke <sebastian.fricke@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740476426; l=1122;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=Ja1ASVEnylkVDPrnaxfL7Gu8Auz2+lAQasPZ0WLJwiQ=;
 b=4vOCbtcqOkYByVo62A8sEoTu4EZtDldVj+O7DdsEOGtQgEmOM1EC0Zx+6aLDY/FGgAPmZmrp7hxs
 u7G3NTenB+Oto3zQbZdnya5Y+xgoAiN1tsdce1NRp4GPFMZS5Twg
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_014237_317139_4E53C433 
X-CRM114-Status: GOOD (  10.94  )
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

Neither the hardware nor the kernel API support FMO/ASO features
required by the full baseline profile. Therefore limit the minimum
profile to the constrained baseline profile explicitly.

Suggested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 351444d569316cf52850a1831710fb5c1aceaa70..2859041bcc932bd638b4288bb8eba6b1443a08e3 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -195,7 +195,7 @@ static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
 	},
 	{
 		.cfg.id = V4L2_CID_MPEG_VIDEO_H264_PROFILE,
-		.cfg.min = V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE,
+		.cfg.min = V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE,
 		.cfg.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH_422_INTRA,
 		.cfg.menu_skip_mask =
 			BIT(V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED) |

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
