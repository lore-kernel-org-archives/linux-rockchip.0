Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2828C021B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 10:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nF5VEa5Y81pZnEA3g3kJFpw0OoXoT2KwDqlrqRxmk9w=; b=H373iufyGCrMya
	a4UuXB1+yOwl9m3oTspJqLrpPzVHfpHb/CYE8F2lGdMn38291gjEV7Y+jZhhGnB0BDguMhIFjT+iT
	dQpCHI3URYO76KrF/j53HeQW7nQa6HzUqYBjEwZ8DsjQi56PSUl9pbxKg0nHj8EmrkNTX/+tDfKqh
	vHFwBYzicJ5Vvchhk6fJnqd8K2NqEin9aZetJ0lT9DsncMotVWfTnZx8t4WQRu+pm+FNWC2Llj/uX
	7PcPB7HDvV45iscZzxkXtkPCn55mghZ3g/FBborIWItbV+csBpGWmYM4s3SqpM98dI1V4+bfPfWYB
	/E6gbUyZnIjMiE2+ikLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmrmp-0000000Gk3L-3HPt;
	Tue, 25 Feb 2025 10:03:35 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmrSh-0000000Geyo-0EdC
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 09:42:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740476561; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ZWUJALE3X+EXUeuC2EHLQZNFqyFdh0NyYCe1oJLHcFinI5O1gqcZwIuo8zzBTELcLU/U55QeGCcAI4g5ZBV6vX/sFX7Hkah1yxdCN0R7W9Wmy7XXNT6wWUXxKUKYg1t0nLYPw5tnsfiC1cKh3dzFcoPEQDnLLgGwCErkhDCbDWA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740476561; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=PhcqlwF/W6SeudJ8/ZbUsIGtxuzwWHoYjUaWleuL8+I=; 
	b=TA3afxHgC71oyjPZoqoTxcGG3fe5GS22oaYJI6oa/b0s8LbNxX7KfG85qGUb7ipfnFfn4MM2nc6U60+CfMTHIMa0/4AlttB1/OD6zi01EO4FftTDb4SCLulgIBNLUquRbfdnMdDsnPrkaKLrHrky3+2Ut55aaqH61rZILxBLdJ8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.fricke@collabora.com;
	dmarc=pass header.from=<sebastian.fricke@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740476561;
	s=zohomail; d=collabora.com; i=sebastian.fricke@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=PhcqlwF/W6SeudJ8/ZbUsIGtxuzwWHoYjUaWleuL8+I=;
	b=SwTZhSUSS07oCVYZ7P8zHNLwJATsEosEOvICiwuAzESDn4DYfSTXFpIXdr9S+xQC
	6D8v8KR197526XXRCrYmO+CHelHCXvScBaZvkScaXl4QJeXbqfvn2k9GWnpPBNYc4P9
	IMZLAegHQE3sh0zbiE9W81ETWhT0qqSAIDQPnfWs=
Received: by mx.zohomail.com with SMTPS id 1740476559938497.44456290913297;
	Tue, 25 Feb 2025 01:42:39 -0800 (PST)
From: Sebastian Fricke <sebastian.fricke@collabora.com>
Date: Tue, 25 Feb 2025 10:40:33 +0100
Subject: [PATCH v7 12/12] media: rkvdec: Fix frame size enumeration
MIME-Version: 1.0
Message-Id: <20250225-rkvdec_h264_high10_and_422_support-v7-12-7992a68a4910@collabora.com>
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
 Dan Carpenter <dan.carpenter@linaro.org>, Jonas Karlman <jonas@kwiboo.se>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740476426; l=1653;
 i=sebastian.fricke@collabora.com; s=linux-media; h=from:subject:message-id;
 bh=XlwiKB1TZIfyBLPYonxnSRa0aWPI3tSsmicak1dzrfc=;
 b=q/95JUmsPUkLNHHlVioAh4sQTO1NQQiDcwSphBb+wKl6MvHs3vchivIK17RMr3pyksypC7hAwrpN
 iaWY0pKgCJzs8UZvgM6oJzdXtbl5LzubPtqBjgNQy6OtSPsbiUoj
X-Developer-Key: i=sebastian.fricke@collabora.com; a=ed25519;
 pk=pYXedPwrTtErcj7ERYeo/IpTrpe4QbJuEzSB52fslBg=
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_014247_169043_29907700 
X-CRM114-Status: GOOD (  11.51  )
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

From: Jonas Karlman <jonas@kwiboo.se>

The VIDIOC_ENUM_FRAMESIZES ioctl should return all frame sizes (i.e.
width and height in pixels) that the device supports for the given pixel
format.

It doesn't make a lot of sense to return the frame-sizes in a stepwise
manner, which is used to enforce hardware alignments requirements for
CAPTURE buffers, for coded formats.

Instead, applications should receive an indication, about the maximum
supported frame size for that hardware decoder, via a continuous
frame-size enumeration.

Fixes: cd33c830448b ("media: rkvdec: Add the rkvdec driver")
Suggested-by: Alex Bee <knaerzche@gmail.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 2859041bcc932bd638b4288bb8eba6b1443a08e3..619031b8cadc8d7185712ec6121a895e6ab89046 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -334,8 +334,14 @@ static int rkvdec_enum_framesizes(struct file *file, void *priv,
 	if (!fmt)
 		return -EINVAL;
 
-	fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
-	fsize->stepwise = fmt->frmsize;
+	fsize->type = V4L2_FRMSIZE_TYPE_CONTINUOUS;
+	fsize->stepwise.min_width = 1;
+	fsize->stepwise.max_width = fmt->frmsize.max_width;
+	fsize->stepwise.step_width = 1;
+	fsize->stepwise.min_height = 1;
+	fsize->stepwise.max_height = fmt->frmsize.max_height;
+	fsize->stepwise.step_height = 1;
+
 	return 0;
 }
 

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
