Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E25E6C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jan 2022 09:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMpMF4/IljlhzNdDjJZ/49D9FlfsLTCAzx52wsS8xvQ=; b=WqY1cGfhqcFRow
	DNlRur7yQAUnGTmx1ur/I38c2QzkUTKbtmASEZCRCZC4Ho7Qf5p5qdJPTguAcV3rZiuullxWA/igd
	UTcv7YyDIZ/YXgSysifis/KFaXaGcBDoYIA2df9FOl6xfjw508DyZ/Ns/oJvaiSw6n0OvMjyAc9DG
	FVWbMVBDrnLW+O0kn2niifne3gmxAEDcBAZ3i8p+L8Sex7WpyS7lpQ5ei4dYlhSwXTgtkR9mjYD2J
	dS9C6EQeYulLDpOVhN9sAs6S5x8y2O3K4pUQ5IoqTQ+KO8GYback+bwx+G/YDeNgj/G7zVJHtnNkD
	CZMazRnqmT298Wf/UV+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5lee-0035Og-7c; Fri, 07 Jan 2022 09:35:24 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5leZ-0035K1-Vf
 for linux-rockchip@lists.infradead.org; Fri, 07 Jan 2022 09:35:21 +0000
Received: by mail-pl1-x635.google.com with SMTP id l8so2272495plt.6
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jan 2022 01:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5JKd00F5jvr9Z9TjwluoZVjXwDya+OmfirFHabukgCw=;
 b=TpoGRBay8kyuDQgl9l3hMCrpRMCiVmjg9kc+zX1/3QuOemRZW2T2WU/XpgSkR39+nQ
 ygAY8kCRcoLu7/KXksnzMNJ3WRvsYVKMjGllh/R8MDMJo27H66WJgkbCCByezTpuIN5o
 kBp4e4cdQtyoK5u4PxYHAPX7VF5eIfr2Zcrhc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5JKd00F5jvr9Z9TjwluoZVjXwDya+OmfirFHabukgCw=;
 b=BnPX8kujhYtiPD4KOEPpJgVN8Qp5iZht6A4/9AcVHDK4LsLuic4vPZ/FAJ0BxiTsoJ
 qhh7M3E/lw5oU7S1IDxQJxswtlVfj4cXZGRRtE3AKNnCoZefY1zmfPdDaCpRndCGsrE4
 POswK6Vmo//vc5N6UDZU5BHNLNk+Ko9HXBOGlF+VDBYFQNfUlXqOxrmk4ijsqb9g8Zqz
 pxc2nW0NVxNbNCQ1OJ7WIQz7sBDGs8oeftQdz/2Qt8ps5srUtaxXU+7oRlqGIjPOLz5E
 F3n7VeN5CAIE5NRnVMj1Rnjve8KNdtuMUpI4g1LEl3U3BULfstpDYEJGN+cLbVPevNgS
 RjJw==
X-Gm-Message-State: AOAM531lNjl+AQwKhg8hthHvdwc7wyiJL8avo0Q0+RsUIS2o2GM1hYKC
 YGFjGcrCnM25F151by5Nvp7sug==
X-Google-Smtp-Source: ABdhPJy9cbGsq9beDGhZ/ZOG4BZHJ6JEA06Q1icCuY3jWe/IhWGfFHuALc39aWFrIsgILMTtfQucaA==
X-Received: by 2002:a17:90b:248f:: with SMTP id
 nt15mr3348566pjb.137.1641548119363; 
 Fri, 07 Jan 2022 01:35:19 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:8f6b:ee:64d8:ae81])
 by smtp.gmail.com with ESMTPSA id j17sm5269192pfu.77.2022.01.07.01.35.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Jan 2022 01:35:19 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH RFT v2 6/8] media: hantro: Implement
 V4L2_CID_JPEG_ACTIVE_MARKER control
Date: Fri,  7 Jan 2022 17:34:53 +0800
Message-Id: <20220107093455.73766-7-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
In-Reply-To: <20220107093455.73766-1-wenst@chromium.org>
References: <20220107093455.73766-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_013520_067064_EFD4F533 
X-CRM114-Status: GOOD (  14.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Hantro JPEG encoder driver adds various segments to the JPEG header.
While it would be quite complicated to make these segments selectable
to userspace, given that the driver has to fill in various fields in
these segments, and also take care of alignment, it would be nice if
the driver could signal to userspace what segments are included.

Implement the V4L2_CID_JPEG_ACTIVE_MARKER control, and make it read
only so that it always returns the set of segments that the driver adds.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/staging/media/hantro/hantro_drv.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 6a51f39dde56..b376b9d94b01 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -332,6 +332,11 @@ static const struct v4l2_ctrl_ops hantro_hevc_ctrl_ops = {
 	.s_ctrl = hantro_hevc_s_ctrl,
 };
 
+#define HANTRO_JPEG_ACTIVE_MARKERS	(V4L2_JPEG_ACTIVE_MARKER_APP0 | \
+					 V4L2_JPEG_ACTIVE_MARKER_COM | \
+					 V4L2_JPEG_ACTIVE_MARKER_DQT | \
+					 V4L2_JPEG_ACTIVE_MARKER_DHT)
+
 static const struct hantro_ctrl controls[] = {
 	{
 		.codec = HANTRO_JPEG_ENCODER,
@@ -343,6 +348,22 @@ static const struct hantro_ctrl controls[] = {
 			.def = 50,
 			.ops = &hantro_jpeg_ctrl_ops,
 		},
+	}, {
+		.codec = HANTRO_JPEG_ENCODER,
+		.cfg = {
+			.id = V4L2_CID_JPEG_ACTIVE_MARKER,
+			.max = HANTRO_JPEG_ACTIVE_MARKERS,
+			.def = HANTRO_JPEG_ACTIVE_MARKERS,
+			/*
+			 * Changing the set of active markers/segments also
+			 * messes up the alignment of the JPEG header, which
+			 * is needed to allow the hardware to write directly
+			 * to the output buffer. Implementing this introduces
+			 * a lot of complexity for little gain, as the markers
+			 * enabled is already the minimum required set.
+			 */
+			.flags = V4L2_CTRL_FLAG_READ_ONLY,
+		},
 	}, {
 		.codec = HANTRO_MPEG2_DECODER,
 		.cfg = {
-- 
2.34.1.575.g55b058a8bb-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
