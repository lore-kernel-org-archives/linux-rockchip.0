Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4AA5C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 11:40:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5A75720735
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 11:40:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5A75720735
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vkr1M8W8BK1iFzA1NmDaym3Nv9wi5HskxdD77RHWj5o=; b=s+AiNBoKfqMQzVmVuKxlBWNbP9
	QpdqH07IBcnT46cEGa9z9czDXtxlyprtGz7VLGECTVUNc7IvH1/Ah2s+BWOpeCdTaRlT2ABS0LDsB
	3iRo/NzS+/apzKbwVMqMJvWwj2+ECkaN0xryY4p4zc8HnyJvRtQg1bU11XNL1XmU7tGZVz6h6CizO
	TqC6IeTIVjuv6IUgydfrHUY3tNsKPL4AtfQMrLH6xLrI9tyK8WC4YjkdskoKex9eXpTH8gq8FEjj2
	zadtVkkEKJv7M3wBfZnV9WhsIQahKaQSapLtKNom0Dxw+izcEZ23LUeB/6Wi/4r3s/C1uZs6eevRj
	y2YN6/CQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyvYj-0002J1-23; Mon, 11 Jan 2021 11:40:30 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyvTz-0008Nf-6I
 for linux-rockchip@lists.infradead.org; Mon, 11 Jan 2021 11:35:36 +0000
Received: by mail-ed1-x529.google.com with SMTP id h16so18417888edt.7
 for <linux-rockchip@lists.infradead.org>; Mon, 11 Jan 2021 03:35:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lXOWeR9801FrisPggQzBoR4P1LZC0ogSzc7qiclRxzA=;
 b=Mf2f7LJM9bPXCaZWpu+DA3F8zjBC3NYdKnghIBztANh6OSOVMK4LbhwONJlFeqAU6H
 pPSrTCV6Jx9bvjcyGbOIGMOKxmMwu/jHp1FqUYKRJnRF7aa8ssiiz/i2Ojgla86zeC67
 RFZq1mjsHkMRdKKz0w0brsi7WTIhAR8EMNdFY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lXOWeR9801FrisPggQzBoR4P1LZC0ogSzc7qiclRxzA=;
 b=bRKfR1ZTyoUqCxv1vYINohru/2SXDvUrqgJZMPBaJrFYEbeu0B1vNl46k05iygJPVN
 NsJojjycu6XaINoQIJyhFpDw6MdwiAwljGoYN/rM/yIGy/Q2cZUDFK4KO/I4XnxxmEZs
 JFRlpKDuQalsezcGMC5mSSYtEVBmQZp4QGoYRZ59FKG8xDlUx3Wd8GmB0pBrB8G6bjDV
 Hajlnxhm9vvygpPtG4ev4DDmSLIiX8XfmZAA7j/gsCZBnb28WxHWMl9R8DbrbjvLl9B8
 EQlkAEy0G+FOeZ1vvxDCJVq4LlJcSlvYgjHwx4qElh++nUoaDwTGHbl73ILWWXH8dMIe
 oHTw==
X-Gm-Message-State: AOAM532LHgA/iy8LmK79DsdmDKfzGrFj7g4+4900Z8AnfRJmeE5yQ5zL
 BVgrjlrnS1sxZNvX/5DgzkeUGg==
X-Google-Smtp-Source: ABdhPJzwxJwfY2vvKcY/y88PUCnedWNHcDU/ytPX64NcJqeDQDiDRVSjMIYqBwltXgDOoc01CDFlTw==
X-Received: by 2002:a05:6402:307c:: with SMTP id
 bs28mr13865398edb.186.1610364931540; 
 Mon, 11 Jan 2021 03:35:31 -0800 (PST)
Received: from alco.lan ([80.71.134.83])
 by smtp.gmail.com with ESMTPSA id rs27sm6982564ejb.21.2021.01.11.03.35.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Jan 2021 03:35:30 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] hantro: Format IOCTLs compliance fixes
Date: Mon, 11 Jan 2021 12:35:29 +0100
Message-Id: <20210111113529.45488-1-ribalda@chromium.org>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210111_063535_307230_A7661D22 
X-CRM114-Status: GOOD (  11.07  )
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
Cc: Ricardo Ribalda <ribalda@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Clear the reserved fields.

Fixes:
  fail: v4l2-test-formats.cpp(482): pix_mp.plane_fmt[0].reserved not zeroed
test VIDIOC_TRY_FMT: FAIL
  fail: v4l2-test-formats.cpp(482): pix_mp.plane_fmt[0].reserved not zeroed
test VIDIOC_S_FMT: FAIL

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/staging/media/hantro/hantro_v4l2.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index b668a82d40ad..9b384fbffc93 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -239,6 +239,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 	const struct hantro_fmt *fmt, *vpu_fmt;
 	bool capture = V4L2_TYPE_IS_CAPTURE(type);
 	bool coded;
+	int i;
 
 	coded = capture == ctx->is_encoder;
 
@@ -293,6 +294,10 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 			pix_mp->width * pix_mp->height * fmt->max_depth;
 	}
 
+	for (i = 0; i < pix_mp->num_planes; i++)
+		memset(pix_mp->plane_fmt[i].reserved, 0,
+		       sizeof(pix_mp->plane_fmt[i].reserved));
+
 	return 0;
 }
 
-- 
2.30.0.284.gd98b1dd5eaa7-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
