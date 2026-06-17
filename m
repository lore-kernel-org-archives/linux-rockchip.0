Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4584CD98F1
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 02:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PRj4tGaWgJ2aD7LL17BMrNFUsYeSWupyyj726jvr2M=; b=HPEnJS4xJVAtnp
	C6IOfjsTY3CImY+1ohxRKvOAudU3LikpmzyDA3+o2XU790KiaurNinPeSUjuHPvdM9M4PbyiV+3Ks
	w9s8bz4qM2sQh2lweTWey+1kQbnty3LOXdPd/jOqhq9yM9eLf0gpmqXHBT7/Fit4Q00Sm1hbgggDt
	+zfnYCzykMcvLboTgW/Ce5JmzcD99LgnR9y9Lh5Twf7MM8jz6qkusqW33rf2EnjAxdJ9Wb8qTEM2G
	b4sBWqGouR/G+2qBzj44DnhoxwTX9VhGvRrDMaDdiDVXB1pBTxC2WqzaVO0Nav0DOvTcnOzN7s5aV
	xXpSuSzU8OjkWL40K3TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsN-0000000GUCj-2LbW;
	Wed, 17 Jun 2026 02:19:35 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsK-0000000GU93-2xIy
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jun 2026 02:19:33 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-915d64fead9so53551885a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 19:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781662771; x=1782267571; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d5adCbZjNc85uY/9brOf3vfwrOByakFrcAqPyeusAfU=;
        b=nl4f9WpMH9fsvi2fpd7tW2EubitNm6MQNCfqjeWTtYCHaJdEl9mN+OmnjP1opM/u32
         HSnVHCsKeBJjdQd3PdR10JcCabzRQSQ/Kve52QTbI4KAs3jD6sLcFfXX/PEQH+wVjD4X
         3bI/3mUgdOh37CghOJ5uFf2eYHbYHh73deQAw/TBWTmZsZHhEXGexCrlvcMl145rgJcW
         X1JPGTJday7S+i0dsfvNEDoWt7WFu4fwGHv6SGx1SIw8imCxRC3gtl85HzaGUbBgxb4d
         QrhknbNjmWrgkCOyxozeZ34tpdjZ4reERnX/jTSCF+SFUFXxAfHc9GUbYikYjGYIdtQ/
         /OFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781662771; x=1782267571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d5adCbZjNc85uY/9brOf3vfwrOByakFrcAqPyeusAfU=;
        b=ovotrB/mCK2kESQR2qyTwBTq2egcTN8Z1nSI4hOYjF07uHg7zw1VhG6TU8PBJEuGi8
         4aY+bYh+pYfnzbsJnBerwMIF1Bv6jn1TQb7YxsmeBhAUoA2S4jZHYIGvfugyMyOfnsSD
         nHrP6NuDVQrqdO1ymzxjKgJZAycFKdxNqeBfWpigvKBkBcYxojIsrw1HW3SG/oyGMYtA
         CJts0HG7qdK7YB+yQWM5B6nj05cS8Zq+qMRzNcjHAlCJZQbpyLc6owbRhznfZBOkMOFb
         W1fkYqVm7UShOHwdRs6HXs/McHAIDM4wwI+6anC8eg+FblKBo8Yd/UTBgXvgDtGtv5cA
         uHMQ==
X-Forwarded-Encrypted: i=1; AFNElJ+SgKafJ3p/R43AB71l9Z8uc5p7CCh9qL63jPmgsDNBlhLIdhZniVc1Vqu8H8D8MDS/PeUuLKM2Kc0Mrhtdtg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yymj+yDMxy0GZifxHE5IwF0GTumw7Kv5ORiXDplYs++BtdfVd3D
	w0nUNZZF0m12xijszVSmuOOff+DcKe7Lg0r+gSIA2V39ECbb7F2CTAJL
X-Gm-Gg: Acq92OFoUrSQFB1zP99e5otr8l8UiRZtR8r0Xh3+DnyX4cv65h2AcS9PAqCsZUtdoWG
	WpDACt5axQ5wuzOBMFOTEdezNVN2enig5XyTLZpjrKd/maB4KLVtfFJ2rTkf2dDkqutkLxS5AeY
	OAGEP0vlebCtrv3sCIl2SWr6TVbBNxpqbgvVavzZStO1bbvOu9hr9vfEueUe3uVA6H1frBBM990
	vg/vU62DvHWwWEl/r7z8JKMztBMwhDLY9/asFPNCcczTvJ0cHGxTTFmX6xZW3p4xuUMddZqKkps
	F+/kLED0qPn8AvhfSmijkj+MtBRZ165Y4kbqNOWWLdrw9gsa4npYeRFJYLD7HobmaE9pKSk7Hwh
	yLsfqeTqSNOvSFz4COAG+lj26z+lo8Ub84fkci9P/vYDkt/Bexa3E4TY/uTlmqzfOOdBgU6RnCi
	ZHvOzVUgL/tcYTfHYnCK5Q4ZMPt9+E3rx4s35R5ZegcmWauCKy3zNQgNChQdPbv3sRCUGqEg1vn
	B9fCL4vyq2RHfRUJP4llyl0MqV1M3Ve
X-Received: by 2002:a05:620a:1a0e:b0:916:5f5:de22 with SMTP id af79cd13be357-91dcabb0438mr183153085a.12.1781662771344;
        Tue, 16 Jun 2026 19:19:31 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9161a006e35sm1657646285a.28.2026.06.16.19.19.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 19:19:30 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yunfei Dong <yunfei.dong@mediatek.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Heiko Stuebner <heiko@sntech.de>,
	Kees Cook <kees@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/9] media: hevc: add bounded tile-count helpers
Date: Tue, 16 Jun 2026 22:19:00 -0400
Message-ID: <20260617021906.2746743-4-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260617021906.2746743-1-michael.bommarito@gmail.com>
References: <20260617021906.2746743-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_191932_813469_5871A59D 
X-CRM114-Status: GOOD (  13.21  )
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

The stateless HEVC decoders compute the number of tile columns and rows
from num_tile_columns_minus1 / num_tile_rows_minus1 and clamp it to the
column_width_minus1[] / row_height_minus1[] capacity before using it as a
loop bound. Add shared helpers in a new <media/v4l2-hevc.h> so the rkvdec
and hantro drivers do not each open-code the min_t() clamp.

Assisted-by: Claude:claude-opus-4-8
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
 include/media/v4l2-hevc.h | 41 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 include/media/v4l2-hevc.h

diff --git a/include/media/v4l2-hevc.h b/include/media/v4l2-hevc.h
new file mode 100644
index 0000000000000..973c96be16be4
--- /dev/null
+++ b/include/media/v4l2-hevc.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Helper functions for HEVC stateless codecs.
+ */
+
+#ifndef _MEDIA_V4L2_HEVC_H
+#define _MEDIA_V4L2_HEVC_H
+
+#include <linux/minmax.h>
+#include <media/v4l2-ctrls.h>
+
+/**
+ * v4l2_hevc_pps_num_tile_columns - number of HEVC tile columns, bounded
+ * @pps: the V4L2 HEVC PPS control
+ *
+ * Return the number of tile columns (num_tile_columns_minus1 + 1) clamped to
+ * the capacity of column_width_minus1[]. The control validation already
+ * rejects out-of-range counts; this keeps the consuming drivers bounded too.
+ */
+static inline unsigned int
+v4l2_hevc_pps_num_tile_columns(const struct v4l2_ctrl_hevc_pps *pps)
+{
+	return min_t(unsigned int, pps->num_tile_columns_minus1 + 1,
+		     ARRAY_SIZE(pps->column_width_minus1));
+}
+
+/**
+ * v4l2_hevc_pps_num_tile_rows - number of HEVC tile rows, bounded
+ * @pps: the V4L2 HEVC PPS control
+ *
+ * Return the number of tile rows (num_tile_rows_minus1 + 1) clamped to the
+ * capacity of row_height_minus1[].
+ */
+static inline unsigned int
+v4l2_hevc_pps_num_tile_rows(const struct v4l2_ctrl_hevc_pps *pps)
+{
+	return min_t(unsigned int, pps->num_tile_rows_minus1 + 1,
+		     ARRAY_SIZE(pps->row_height_minus1));
+}
+
+#endif /* _MEDIA_V4L2_HEVC_H */
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
