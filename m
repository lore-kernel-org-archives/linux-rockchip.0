Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EF93C282DE
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 09:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5j4DuHwMwREisxIR7cxs3fi9HYGH+3bOF2IZC+q4EDQ=; b=mJnBrBV0J3LO+g
	YItBEmg0R1WBdq4bCQWb95cAkPaIXiOs5reOEJ86qDu7LmqtLB1naOiX/9ob6qZJ0Rw8j4xx6LSNP
	VcDz/+Xz/2azqhlVIjLpgEWoBNPV9BhfNyvhtJcCMn5IJ+KEzE/wgjFr067ym4MfqQBjBQmgJCn+R
	hc3pcsDanD1af+YQW9YhGd6ST/ZwHc+JRugz+9xxb8Ekkt1mogxzGFHJfl+dqE46ZiZpld8AYlqMY
	LHohNa6oIDYUJutviDtaFfONzpk/rS3XWzvjLQgJnSKl/q1u+kY7z/IyFoKPBm5y1EuWqksdxvVCZ
	+yTSzisvTrbfDHsGEJcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7NV-0000000ASsk-1Ix9;
	Thu, 06 Mar 2025 09:18:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq6Fr-0000000AHZC-2C6F
	for linux-rockchip@bombadil.infradead.org;
	Thu, 06 Mar 2025 08:06:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WlAgz/1QpV2kZXdNieTjab+and/nPvcU/9gROcEfjZU=; b=Qk8QMtEEIzHU/uSGOA7Ss8SASB
	GXycJdxpZoE0YwEMyu6xA+dEmorzgRfWmZO41HnO1NYBZGqXM+ERPdt6/8krVlHkKykLzPIdXjBBv
	hxSSE+VuurpIlRzorouIS2p2kq0YJ7bCQEgxRhGHioScAI1aMF2ojXxgdYak8U000hlmDYXZzQ+Em
	V5dNrFTpYfNCctQ+JIfQC1VxSS50NyhNbP+HBlTijT6Z6ttFNLFV5B2f927TJw8LYIcv8uXbpwRUL
	yRHWxeweGAwzGGAKiUtocBslHA843WTY4TISG4GHjNDM2BgZC7WNGgfQH/KhRkj0GGWCS6N3YYvTI
	KNWt9Chg==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq6Fo-000000072hb-24Rl
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 08:06:54 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741248399; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=fhCIQ++H+H5gB1rpJTECvK8Dk6oQPZ9QiQoDGYbmObaSkFYqI0SUOrW2lhmrHz39/fyRBa2QbG6qxWT4PeBikqKjHqAt0PveX3uBPKBi5lEm30t0fgEB257rGItBr9Xfh0X4oLwdoymHrLgxvB6Ng4AqfVDkcdxXXP1Nv0hegw4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741248399; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=WlAgz/1QpV2kZXdNieTjab+and/nPvcU/9gROcEfjZU=; 
	b=RC19bOxkkzwtuPDTt+PGW/po/nZ2UClzsq55qCK/Lb31i249WycO2gHNlYDDpIZpkUuMVOjKwsrFlSik7asYRwA7Hyy77dYW/It/RMH41yPMb5yBGRvGKtvXmNNKibTXkoL2PCxSNvT1mCeIzi5wrJXZjgYiKQlQXQMBcHqaRGM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741248399;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=WlAgz/1QpV2kZXdNieTjab+and/nPvcU/9gROcEfjZU=;
	b=UIBJvsb41FcCim0XUZZAGqxX/G5lqPMA4gYjOl/nQJmvXUAAI4coTwv10fKDqYRN
	OHAxbEe65Z4E6v0hgWciD2yll53nE1iXaQpOV2uAHvVAcDUhlMkI8SWC9t1xBlYzQK1
	ZxSjil0DjOnhj1t+pt0iKR89t3Uy1oLvjwskZ4w4=
Received: by mx.zohomail.com with SMTPS id 1741248398426801.4470698537392;
	Thu, 6 Mar 2025 00:06:38 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v1 2/3] media: platform: synopsys: hdmirx: Remove unused HDMI audio CODEC relics
Date: Thu,  6 Mar 2025 11:05:32 +0300
Message-ID: <20250306080533.294964-3-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250306080533.294964-1-dmitry.osipenko@collabora.com>
References: <20250306080533.294964-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_080652_847479_22FEFE53 
X-CRM114-Status: UNSURE (   8.18  )
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

HDMI audio CODEC is unsupported in the current version of the driver.
Support may come later. Remove HDMI CODEC bits that were left out
by accident to keep code consistent.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
index f161fd6712b6..981ab96cda3c 100644
--- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
+++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
@@ -40,8 +40,6 @@
 #include <media/videobuf2-dma-contig.h>
 #include <media/videobuf2-v4l2.h>
 
-#include <sound/hdmi-codec.h>
-
 #include "snps_hdmirx.h"
 #include "snps_hdmirx_cec.h"
 
@@ -122,7 +120,6 @@ struct hdmirx_stream {
 
 struct snps_hdmirx_dev {
 	struct device *dev;
-	struct device *codec_dev;
 	struct hdmirx_stream stream;
 	struct v4l2_device v4l2_dev;
 	struct v4l2_ctrl_handler hdl;
@@ -158,7 +155,6 @@ struct snps_hdmirx_dev {
 	u32 cur_fmt_fourcc;
 	u32 color_depth;
 	u8 edid[EDID_NUM_BLOCKS_MAX * EDID_BLOCK_SIZE];
-	hdmi_codec_plugged_cb plugged_cb;
 	spinlock_t rst_lock; /* to lock register access */
 };
 
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
