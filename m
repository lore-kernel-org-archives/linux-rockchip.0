Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ECFC5517A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 17:23:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0899B20809
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 17:23:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IodWGUh5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0899B20809
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linkmauve.fr
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G6g4W4MCpMtO6tC6ly5ElTg+UGGSvVYjMtknYZeEb2c=; b=IodWGUh54BAgVrJhe4muwVhic
	DLjoIum/DoN4qk3aVMST0h7D+iIN9Vna72RhkPAQ0IwZYL5v28uHlQZ5iLfMcL8TVEOZHXv54pBlN
	aVR9eI8N4WA/exA/gNnqBCOfdHVCK4k+42KuI+KEMTQFtXcIiE/ga0Sk4aoejUX65FDuPJJ0XA5o5
	8n5r7YW1LAP7bwmGyEXr2X1V8W1uLK1NwlmlUT9K8O6PiixqOvGbUO3ZAHRehqpwEOXNdw+aS13Z7
	0mnaiCS3sOavrVlRNG+gpsZ+n0QRR0EgCLrWiSa8KeoSSvZfBDCL3ZwSJnUz+vlZf/L2UJ4YpeiNY
	rH2H4koDg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcAtD-0002yR-9l; Mon, 09 Nov 2020 17:23:35 +0000
Received: from [2a01:e0a:828:c7c0:49:5ff:fe41:d261] (helo=luna.linkmauve.fr)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcAtA-0002xR-0A
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 17:23:33 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
 id E561EF41591; Mon,  9 Nov 2020 17:23:08 +0100 (CET)
From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH 1/2] media: uapi: Expose VP8 probability lengths as
 defines
Date: Mon,  9 Nov 2020 17:22:43 +0100
Message-Id: <20201109162244.16531-2-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201109162244.16531-1-linkmauve@linkmauve.fr>
References: <20201109162244.16531-1-linkmauve@linkmauve.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_122332_186965_883BAB6B 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

These values will be used by various drivers implementing the VP8
stateless API.

This had been suggested by Ezequiel Garcia for the Cedrus VP8 driver.

Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
---
 include/media/vp8-ctrls.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/media/vp8-ctrls.h b/include/media/vp8-ctrls.h
index 53cba826e482..a920493361dc 100644
--- a/include/media/vp8-ctrls.h
+++ b/include/media/vp8-ctrls.h
@@ -53,11 +53,13 @@ struct v4l2_vp8_quantization_header {
 	__u16 padding;
 };
 
+#define V4L2_VP8_COEFF_PROB_CNT 11
+#define V4L2_VP8_MV_PROB_CNT 19
 struct v4l2_vp8_entropy_header {
-	__u8 coeff_probs[4][8][3][11];
+	__u8 coeff_probs[4][8][3][V4L2_VP8_COEFF_PROB_CNT];
 	__u8 y_mode_probs[4];
 	__u8 uv_mode_probs[3];
-	__u8 mv_probs[2][19];
+	__u8 mv_probs[2][V4L2_VP8_MV_PROB_CNT];
 	__u8 padding[3];
 };
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
