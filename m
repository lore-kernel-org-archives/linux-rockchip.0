Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABA69C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 08:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=st92MfHQAsEjbEG7VquLnqb9pEknwAzx0Dweppkp1mk=; b=G8s7Uv6co/mZ87
	BhoE5SuVToq5xBh50/z/g8WElEaEvzF8xhZ0NJ6SdSgz8v4KxWdr8gveGbrH+QDqAbuoYDnzI5Lqf
	1Skjbw02BTKwyMri+sVYRtOgjwV56QDMHlwx1+FVLMimid51EeQZSWivCS1nf7Ugb65C72XFtzmJq
	qGIQfh7BoK7g7JTiD8W8qpKnpTf56HDrplnIY+K/5SSNlPVKFD+o1y9YeOaQT0NUMGSIBhqFyR4cr
	ghb8LcECBZEee8IaVWGAmt5e7WFAdsTADtxKHDPSyFdp2iUOsirbfFqv5HDWppC9zIZVJzUVTrVnd
	U04XyONAn2oNigod+yUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZqUg-001MPQ-Fn; Thu, 31 Mar 2022 08:49:26 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZqUZ-001MKa-J7
 for linux-rockchip@lists.infradead.org; Thu, 31 Mar 2022 08:49:21 +0000
Received: by mail-pj1-x1029.google.com with SMTP id jx9so23400529pjb.5
 for <linux-rockchip@lists.infradead.org>; Thu, 31 Mar 2022 01:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W056jK4JO9Wem+3qlNSvwaayL2PwMR77g5EtZS2gUYw=;
 b=WmCBHXFFuScgmmMGMP/VH609AxnAySmVJWaJZ62cOndAUFjHiwuhvCMbqdzYxL0PqJ
 O8RwQn+EO5U1GQpLfh2uEeY3psnAoZeQKIzE53AC53docGkPbTd37tJD5jjYxV5T0jcV
 17l9p2c+I1LPqJo4fyJQjnK3ZbZE0HKbzk748=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W056jK4JO9Wem+3qlNSvwaayL2PwMR77g5EtZS2gUYw=;
 b=SXLeskIfgvSoJne6WbbGQ5IvYrtK4D3vnOtEKEUul3VcL22CqsAwZsplKL5i5oulQq
 6nuD6ruAew/cb9ibBk7zRZqp3tazecN1wB/b8gE2+yAH7DipIr1fHKHKzAoQ8MLreyFk
 Mb2nRNB/fvG6EGfxs3IJbtbdXvCj0ZlKNp4dexYnW6kKX3vRka18B3n7iCg0HzpHZ6ql
 xVE54f0M4tUl93t0qgjyn3oL7wKXHE0liGnmqhOLZC4jpuErrRBteNbH6H1hBcTycegZ
 CHdShPJuHyXkzEu/nIvF3o7RkFVObILKCiDpdLfCTH70dB575pWQ/6LDucSIpE5QRrqz
 S+jQ==
X-Gm-Message-State: AOAM533qInzcHfNV2OGWJbeZrMgFhiXfKu4uRa3UfhxPBxwmN8X/cxud
 sGy2M5jTVIVd/qAUmrwSij0IOw==
X-Google-Smtp-Source: ABdhPJyIyUj9Alp436tInM7YNihHEEDUYPNgqt+AGVoPl3O5jctUXjLSQUMXrAN+OoCit0uHawL0gQ==
X-Received: by 2002:a17:902:ea03:b0:154:4af3:bb5e with SMTP id
 s3-20020a170902ea0300b001544af3bb5emr4124775plg.95.1648716553888; 
 Thu, 31 Mar 2022 01:49:13 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:deb3:b2d3:c33d:e877])
 by smtp.gmail.com with ESMTPSA id
 mw10-20020a17090b4d0a00b001c7cc82daabsm10408026pjb.1.2022.03.31.01.49.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Mar 2022 01:49:13 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH] media: hantro: Empty encoder capture buffers by default
Date: Thu, 31 Mar 2022 16:49:06 +0800
Message-Id: <20220331084907.628349-1-wenst@chromium.org>
X-Mailer: git-send-email 2.35.1.1021.g381101b075-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_014919_643511_F10A33FB 
X-CRM114-Status: GOOD (  12.36  )
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

The payload size for encoder capture buffers is set by the driver upon
finishing encoding each frame, based on the encoded length returned from
hardware, and whatever header and padding length used. Setting a
non-zero default serves no real purpose, and also causes issues if the
capture buffer is returned to userspace unused, confusing the
application.

Instead, always set the payload size to 0 for encoder capture buffers
when preparing them.

Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
Fixes: 082aaecff35f ("media: hantro: Fix .buf_prepare")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---

This was previously incorrectly squashed into my Hantro encoder cmd
patch [1].

[1] https://lore.kernel.org/linux-media/20220301042225.1540019-1-wenst@chromium.org/

 drivers/staging/media/hantro/hantro_v4l2.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 67148ba346f5..261beb0c40f6 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -733,8 +733,12 @@ static int hantro_buf_prepare(struct vb2_buffer *vb)
 	 * (for OUTPUT buffers, if userspace passes 0 bytesused, v4l2-core sets
 	 * it to buffer length).
 	 */
-	if (V4L2_TYPE_IS_CAPTURE(vq->type))
-		vb2_set_plane_payload(vb, 0, pix_fmt->plane_fmt[0].sizeimage);
+	if (V4L2_TYPE_IS_CAPTURE(vq->type)) {
+		if (ctx->is_encoder)
+			vb2_set_plane_payload(vb, 0, 0);
+		else
+			vb2_set_plane_payload(vb, 0, pix_fmt->plane_fmt[0].sizeimage);
+	}
 
 	return 0;
 }
-- 
2.35.1.1021.g381101b075-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
