Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D02C106B535
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 13:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kV2I3i/HXGYDuzQ+sgyt+r381+LvCoYfvwdhEwkWKnU=; b=m+zGF8pIo+KNYr
	DymugDGdWgXGGHiFQIKh+3fDZrIC61uSeKCTpMlY4UNWx4/x7KfeDzOSHnqJAlF28Ulgsm5yseYPW
	Q59FDjLP/SfssdagFT+Waux07WguB8kQALDOxwjUdY4rMX2TZSWNKDHmT6p4133nOnCeNfPyL9TjW
	S7uzZS1yCzcofFPBNlST+QUUEvzujJNlg3cZRm9OLuKXRmdNeW0QmKmNzP1yVaAhdzz2q3VxLtWDE
	BTcwNHE9Mt5iisuLBPtMOiYxTYD+svDYB4JWp0nwtMs+8ut2/dj0iV4y86DTjppxxAMw3czRPX/+6
	qs6AIJAXRJnkiR8E4jTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5O9U-00000003Rug-1sHf;
	Wed, 25 Mar 2026 13:20:04 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5O9S-00000003Rtc-1Yk0;
	Wed, 25 Mar 2026 13:20:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1774444799;
	bh=rAtFCTnNu62D1mgQjhXKJO7Vg4yukZj9geogQbPukM4=;
	h=From:To:Cc:Subject:Date:From;
	b=Y7qIYXrMVX8by7jKWR9K3d+2t3lvnEQZpo0dYyAPmqdklWQVMox/zR4oH4I0dG1NO
	 dOFBeiM49RWp9Nzz0oO3qH0I9tfplE3RgpemIg6TScv4qfsxbtHV/RJaMp/y5A6Hkp
	 VqdUeVyNgx6FgmY+B2idY6qujq/SmHV9l6DW1Ybah5Jx67JUixJZnCWR4RRf8zupJA
	 egY6avMuj2yg27l1NKopq2ueLtC6utlIqMhVoNrbcvPz9LLfO1QzbU2NA8n0KLUKpR
	 zILTnWY4cZbkMYw6I1SS834mT0cEGOjzfJbfpTvFfbWvhBHUAeTujpbmjPlBLV3jvK
	 HYtCl9wWQLG9w==
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:5bd7:b5b9:ee7f:b609])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id ED71E17E5A4E;
	Wed, 25 Mar 2026 14:19:58 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	heiko@sntech.de
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: AV1: Discard none supported profiles
Date: Wed, 25 Mar 2026 14:19:56 +0100
Message-ID: <20260325131956.18075-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_062002_583252_30B6241C 
X-CRM114-Status: UNSURE (   9.26  )
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

AV1 hardware can only decode YUV420 pixel format. That means
that only profile 0 is supported. Discard all other profiles
when receiving AV1 sequence control.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 2e81877f640f..12f98e7e7994 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -283,6 +283,8 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 
 		if (sequence->bit_depth != 8 && sequence->bit_depth != 10)
 			return -EINVAL;
+		if (sequence->seq_profile != 0)
+			return -EINVAL;
 	}
 
 	return 0;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
