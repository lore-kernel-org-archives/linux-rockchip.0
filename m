Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE2E5C369C9
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 17:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7At98YP5ihHjCAe4cq6wfy0+/9lVEv1oohcuJyTFT5k=; b=Xu5HagZv4OxbQy
	z9bgX+oE2szZ1br/AgdlfhmPqWzXx4WS3YhzqJZAGpcVuMYF3SimLQvu3CEJIpJRreHqo3OXZUmuW
	tNnd91PEkOSBoRG0BP3JyAcG8jD1UrqL1vnl2O2JECpXncG4TrdYjpI8IlaNX3nPUU+USJ6DjztiN
	u3Zw00mmaQe6DFxCmK+xqF3uTlFNVI8I4gXAJLv3ebjtpDxS5IKgGyrObgsaC2Rw59hG0JVhrqEkf
	ZF2yYNl690oLj/0ACBwyxYRyS62I+dYRaktCRp1/vPabubBqxNe8nU1Ti6UpjBDOwPluanuca0G/G
	Im5mXhItJUtot6fyVvAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5T6P-0000000Drxr-35gN;
	Thu, 17 Apr 2025 17:32:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Sp0-0000000DnfG-2rNA
	for linux-rockchip@bombadil.infradead.org;
	Thu, 17 Apr 2025 17:14:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=NzqrQpB2JG49Mdg7zBIj5X3HB3aC7kXRjcqhd6TW0jo=; b=aUZI6EwM3y2lWhlQjScYg0KGid
	2VBTHDpIiAf7RUhwizGOP7vzZecA94RmabaHsBSaLLTbBdYGeA6bx3j2K1sM2POKjWdQiLL9Pyks0
	ECD2f8ib+SMoZzkZC+5epe09Lpn0ukKSZCj7jRObL2f5k0BOr0wfAtKyS/wwk355WUVxHUF+r635t
	E5Xdy9X0pL5cfYlqFxfd1PuoG3y8QY8VTlZkriDzUGYXNuXfk3tdXFdViVMzR+0e7cTFtdBqXut08
	8luDtQbsQmoJlzE/KE2ZZItjJwPero1c5fR2Qgnn7CyeC4RWbZU5/h2xJcTtCJpc++ZaK9zSgh2zz
	s0Bc4XBw==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u5Sox-0000000AL8p-0nWI
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 17:14:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1744910073;
	bh=mznnJHuLbKpYgm+SG5uyUsVWXj7gHH37CxevZHUxBVI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AD08BybcgLy+pTShD49cTezcxU3iPdwqN2KO2qpUIiKpMSBEDSUgE/KN8zL2VqEF5
	 7+6huuAMb0k1amJE1oCspJW7DTf5qXDWX8hfe//S2yMrihc4P8jsXoQCA1shRIx2Mk
	 Plab3FEkBoI1HIAADg5+7nY8JddV9uHmzEZir4qOi4JXhoFXcc7/hVrSgrTKU8rD0g
	 JPfcR7NX447uQsJphOXs5dD6zDoK80/5qCbjm397oukx5ETKuEX9xMxQ44hAXN8l9I
	 GWdfbyh6bj74MuvuTI0AYwUnI7uD1IOhXxU/9IFmj3MzQx6OPxyXgUloQlFEA148bF
	 0HKACGbqVKspQ==
Received: from [192.168.13.3] (unknown [IPv6:2606:6d00:15:9913::c73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6E13B17E0702;
	Thu, 17 Apr 2025 19:14:32 +0200 (CEST)
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Date: Thu, 17 Apr 2025 13:14:23 -0400
Subject: [PATCH v8 1/3] media: rkvdec: h264: Limit minimum profile to
 constrained baseline
MIME-Version: 1.0
Message-Id: <20250417-b4-rkvdec_h264_high10_and_422_support-v8-1-423fe0a2ee7e@collabora.com>
References: <20250417-b4-rkvdec_h264_high10_and_422_support-v8-0-423fe0a2ee7e@collabora.com>
In-Reply-To: <20250417-b4-rkvdec_h264_high10_and_422_support-v8-0-423fe0a2ee7e@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com, 
 Sebastian Fricke <sebastian.fricke@collabora.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_181439_436069_BF426824 
X-CRM114-Status: GOOD (  10.15  )
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

From: Sebastian Fricke <sebastian.fricke@collabora.com>

Neither the hardware nor the kernel API support FMO/ASO features
required by the full baseline profile. Therefore limit the minimum
profile to the constrained baseline profile explicitly.

Suggested-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index dd7e57a902640d363d26be887cb535c2668d5b15..65c6f1d07a493e017ae941780b823d41314a49b8 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -150,7 +150,7 @@ static const struct rkvdec_ctrl_desc rkvdec_h264_ctrl_descs[] = {
 	},
 	{
 		.cfg.id = V4L2_CID_MPEG_VIDEO_H264_PROFILE,
-		.cfg.min = V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE,
+		.cfg.min = V4L2_MPEG_VIDEO_H264_PROFILE_CONSTRAINED_BASELINE,
 		.cfg.max = V4L2_MPEG_VIDEO_H264_PROFILE_HIGH,
 		.cfg.menu_skip_mask =
 			BIT(V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED),

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
