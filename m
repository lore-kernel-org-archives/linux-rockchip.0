Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42055C021BB
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 13:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBzaYgtOxpWuRzjfBZRF6SnRSwnE2jJfxfvxbkZ0UWc=; b=L9nv8XDvqpzwmB
	XQXoHvrgjvNnH7i/POVx/4+A34YEGBXVB2cynH5Ehc0+zJUnea4A+dbqJDpAzlAxDzq4kCcFd2r8t
	biai4Mu+zPSZpAVhmQ21bTnfneaASHjNcWpEdF/gbb2AcG9YnQ091PF1amLsne5JRB455BzBO3pjr
	XU4RfM3n171u+5vQHbHUd1w9PFoLS/CU2Xf9fvka2CBzc5tXmv91KogqH6sO4hi/pxohrU1IFmB1Q
	YA9AVEVL1LNZ+i6wEx9CYxS7P8y0RVj7azV6wnQhTFVNbyCdl0KZ8q97c5uE/H7Jpkcr7TeQq2UMc
	Hvy9e5vajOgZJpqemkPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmueJ-0000000HIyd-1A2R;
	Tue, 25 Feb 2025 13:06:59 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmuF0-0000000HEtG-3Ssg
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 12:40:52 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740487242; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=aL/yndbaWtbjDj26LcXfza+N/18ktplU4cYjzN8NJ6uso/gKOkg7hpxUkXtm6+TW9MNu5kPYtZS3bbCXt3JL4CNeyoFLWQ3JpwROIijZPuKQTJhjmoFqtgAiNv2codaijnCBQmPq50D771VEUONIigk/j9mq+D6pn+U2+eprEek=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740487242; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=kDN54TSKQCXwGr0WnQvfL3hvKdHgbSFGpuQMUeaewhA=; 
	b=TpklSVtemRmlUXiIKkZorzpWgRCMGq+RAMxdZZAA0QYZZEhi5vRtiGs8qQaeyxjddrjUY2xxrv93BX/P2LhHpBypv+kwYaentedbx2oCq5D05O3pk8eXwian+77VYaGAILNuKfOl8VAF4e2ozi+gIa02jTJM/X8vDbiKp9yGBkM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.fricke@collabora.com;
	dmarc=pass header.from=<sebastian.fricke@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740487242;
	s=zohomail; d=collabora.com; i=sebastian.fricke@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Reply-To;
	bh=kDN54TSKQCXwGr0WnQvfL3hvKdHgbSFGpuQMUeaewhA=;
	b=ZGwN9TGX/W+xjOAr4VQfD1lO+OtDQobGeGI+OUKCkythx6wVHbHLodDOuWutdUX0
	FCVJ6LFC/mFCXpvN5rQKvXcuzUSCPLuoq1nQr5/YcTCcVzPgArTYEHZZdRvdjPkV5k1
	iwjD1stQtv9UvpWqyTLObc3oA6pAT9iDUYj43eFU=
Received: by mx.zohomail.com with SMTPS id 1740487240110120.34947032551383;
	Tue, 25 Feb 2025 04:40:40 -0800 (PST)
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Boris Brezillon <boris.brezillon@collabora.com>
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Alex Bee <knaerzche@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Dan Carpenter <dan.carpenter@linaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Sebastian Fricke <sebastian.fricke@collabora.com>
Subject: [PATCH] fixup! media: v4l2-common: Add helpers to calculate bytesperline and sizeimage
Date: Tue, 25 Feb 2025 13:40:08 +0100
Message-Id: <20250225124008.195405-1-sebastian.fricke@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com>
References: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_044050_928508_A9C17E7B 
X-CRM114-Status: GOOD (  10.35  )
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

---
 drivers/media/v4l2-core/v4l2-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
index 07a999f75755..aa86b8c6aa75 100644
--- a/drivers/media/v4l2-core/v4l2-common.c
+++ b/drivers/media/v4l2-core/v4l2-common.c
@@ -360,7 +360,7 @@ static inline unsigned int v4l2_format_block_height(const struct v4l2_format_inf
 }
 
 static inline unsigned int v4l2_format_plane_stride(const struct v4l2_format_info *info, int plane,
-						   unsigned int width)
+						    unsigned int width)
 {
 	unsigned int hdiv = plane ? info->hdiv : 1;
 	unsigned int aligned_width =
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
