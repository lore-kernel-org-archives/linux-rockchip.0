Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31A91C369C9
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 21:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7At98YP5ihHjCAe4cq6wfy0+/9lVEv1oohcuJyTFT5k=; b=l9hMENvU7rjKiv
	nirO5+7DgvOhrRbgstc59vQAY46bVOIPtoGwb1Wa4kzTVkaFg5B+GtI6U3QG7UOPjFJKZsxC+Q64D
	sfi8+LNgEbxwDo6qxeYer36ZFv0utYi2Pr4oQmPksbQu0k8SA+M2EX7RRPjIiOkWj6+Mfsv5+L6Is
	zUq0ArWwM5i8OCI16XwxqTDcvt31MEuPbFx1uxkCp1x5tMbujZpMLgV0d4H3x9jsft314lU496QuL
	E9KaM3H3S68/dw6C3MCc1LeqUICDFJcMeJz5ffVrcDJkEeFwCzYOGoYh5NwuwCas8sEt9j8eVgq+s
	yl62u0P8zSfaf16GAdJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5XFX-0000000EQ8u-3p4g;
	Thu, 17 Apr 2025 21:58:23 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5XFU-0000000EQ6c-0jRA
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 21:58:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1744927098;
	bh=mznnJHuLbKpYgm+SG5uyUsVWXj7gHH37CxevZHUxBVI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=c6uASypSYxZwTlVkWgFrq09bK5l2wonvRONdRYiABXANdRFuPQo3nE+t2Dg9O/86f
	 OC/UZTO/Zm6pvu+pIx3bBMmhRNNCz0ZGuO8nKXUUhdDpcUpm/4Sr9ovm4ZQ9aErtq7
	 79nplOIfwe6wuPGymnIzZ1boaWiO+PcLyDMDAq2gJZAjNc9jDUzLtVqD2a8dSxVzHx
	 DAroQu/qa50rppWH0u0DDyKtJA1HBg5ETdOppe3TLq+yy38t/M5EVxS/3AZ0ltq3J4
	 dQTxvR6+ZqcjSO0RGQelrhjE9JJ8YzSqSubET5qBilEYtyr/0tgoEGwXRa32SlWYO4
	 5iHxsw96o1kag==
Received: from [192.168.13.3] (unknown [IPv6:2606:6d00:15:9913::c73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E914817E0FA5;
	Thu, 17 Apr 2025 23:58:16 +0200 (CEST)
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Date: Thu, 17 Apr 2025 17:57:58 -0400
Subject: [PATCH v9 1/4] media: rkvdec: h264: Limit minimum profile to
 constrained baseline
MIME-Version: 1.0
Message-Id: <20250417-b4-rkvdec_h264_high10_and_422_support-v9-1-0e8738ccb46b@collabora.com>
References: <20250417-b4-rkvdec_h264_high10_and_422_support-v9-0-0e8738ccb46b@collabora.com>
In-Reply-To: <20250417-b4-rkvdec_h264_high10_and_422_support-v9-0-0e8738ccb46b@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Sebastian Fricke <sebastian.fricke@collabora.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_145820_379659_DA03FCF1 
X-CRM114-Status: GOOD (  10.00  )
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
