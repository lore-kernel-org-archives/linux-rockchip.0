Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03268C531C9
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jul 2026 20:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1OPOEE5gouDqVcDITaeiNQupf0hsL5kAYU5XrkZWnk=; b=EZGorjcYLBdmxg
	jhOc8Kv6toGWg7YrO4xbE+M0o9Osd+g5+1nbGn5qsey7HU6VhslR2KuE/A4J2S84RmU6eECUQhlZq
	cHXT1BAsIB60zkbjEVU6rPjKnenm0KdJmy6mY6A9dEVnI2Sx8E/dFPmuxf4qkaRGHtct2HMFA5jGV
	x6yjDwbJKq2u8fN+fkQ+z1Uq+hI/Hk/veyWN5giSO4o5CYd3WVGQssisxmfujLQ7JMxqrJt/QMdrB
	l2lpjLBHi0Sm6I/EgqkLaHZE67oywtjm9kHHF0SIlRW2ZGrldVesPC6Y6smMRfTPm6vozAEj6zjXB
	Rqjp+3onhoEJSoeI3DBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo5Sy-00000001b5S-33bJ;
	Sun, 26 Jul 2026 20:28:56 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo5Sq-00000001azr-47um
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Jul 2026 20:28:52 +0000
Received: by mail-pj2-x01.google.com with SMTP id 98e67ed59e1d1-380f4166f80so2027430a91.1
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Jul 2026 13:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785097728; x=1785702528; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FbhNNzs08fTZ2K27yGEfF/2tuOjSgn/k+EN2qVB/Pe4=;
        b=JWbs/PaZd5dXVH6By6HHe+yx058u9pFCTTtNOUSxLiPyDUQMZBoEDaWFjoOCkzzRYw
         D/qlu4IvXy2mL5KlDO3TAOpbi/4lLsrJ2Ys17n/8k9VTU82Alz71ChQJ9AeYipR6Z3pi
         sDYevxtzHJcjBo2dA7Czcr93gx04FNi2CizWGxB0JIlweY5Brk33TjmGLaQVYl9keEi1
         a24tehI9CuVrl+ajbTd6z4xkUhzYmTGg0yyi8JKQMU5hdB8I9Q6Mci9gsA9EMDyebfKg
         s6fJyQZYDGP25sDFut7nesZEUAexf/Pk7ydjxg440uq1AiRwADiEdlHF4IjbzhD27+B+
         dSXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785097728; x=1785702528;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FbhNNzs08fTZ2K27yGEfF/2tuOjSgn/k+EN2qVB/Pe4=;
        b=AxARgFkIa62wgfs1Bc6xx4bh/+Ccy1bZudWkBYTS52mCYcKgwDyQPv/vf8mo0Prm+n
         lDEkH++ZwgVe8zGIATMxsmV5n77QxXTvO5SM7G0fJdaUDFfTMJpmeYY/rtKKT0210yQq
         o5StR1QJHzE3a5/sOFF8fyspWtUDNvPG/LXgyXroGn18s7XCDzHaWd/xf66osWyPD2nR
         ZvVlz0h0bqwEM093unIyXYTqRb0W+bGZZMZQq/Zyz0+BsHeR+qhri5f2aYr2yRCq6CBg
         t0XAoONgjmoF2Uaa83ICkSMezT0gsycNcLP2zGA3yX2PjEo8nNrQ3Xrb3b15G5ohkAiB
         bRqg==
X-Forwarded-Encrypted: i=1; AHgh+RqCCvVLDE8+kw+iU/c4e/8yJ2a09GTjEPYtUH7iaCIv8KQezaE5JfG3vC3C8yefRa6s/rWjCnms0zbHdt6d8Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxdz8wxBNzOMe+YlcOVEA5WFjf2kLb/dvskGdP6D1txvereo2mi
	xjWtGulQhSGn3tvi1mCAUzAEHQwhDGapJIdja5BU5E1PAXqvYw6c6uxLylwhI50Zc6h85Q==
X-Gm-Gg: AR+sD11knhOXuauxk6axwNjno8Rxub9tOVhm1GOeQNS2u2uSt/nepT0c5T/l4OefGHV
	AncYe7FSu2PbHW1y+0wgF3D96rt/T7OkGKUKdiWQOJfXJfdv6Kg5+84jYUTJ+CVKLf0EaqiIP/B
	I1yK+33cqCTj3gxjULlCRrBYTytZYHSLIyzprHZr6k5HLnqd09D1NCGsW3Hi2O3eROHqdzIJxVM
	kgMWO6pHJ2r5AucGUAHSCRqj7vbovq16PSakOPGIbY77+uNRtFx7GbIfWWm0ARwDNPrfjuk8Lyc
	SpNr+6IqsZKlwBloUgl2owzKyBvvE5wmlBVbjRQrMG2ylrbSjsn8/Af/P+IitsaLqMNs4TqtY9i
	k7yiFtLBDeUfzcEDnh0y9rphW2p0yLMIGM2XQwjMEVIxXNbZUeQ0djo0OtRd+mN1x+crEb9ym2u
	TlXGuTjVN4smm0CsI3tCLaplbwiTN6dyR1xAfuITtezFiSvQsh
X-Received: by 2002:a05:6a21:618e:b0:3c2:dcdd:a861 with SMTP id adf61e73a8af0-3c67df10b92mr5823010637.43.1785097728339;
        Sun, 26 Jul 2026 13:28:48 -0700 (PDT)
Received: from [127.0.1.1] ([2601:647:4d7d:1e60:c46f:4bb9:6cdd:73bd])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13e6461ef84sm132697c88.14.2026.07.26.13.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jul 2026 13:28:47 -0700 (PDT)
From: Venkata Atchuta Bheemeswara Sarma Darbha <vdarbha0473@gmail.com>
Date: Sun, 26 Jul 2026 15:25:37 -0500
Subject: [PATCH 4/4] media: rkvdec: align bytesperline to 64 bytes in
 rkvdec_fill_decoded_pixfmt()
MIME-Version: 1.0
Message-Id: <20260726-b4-add-rkvdec2-vp9-vdpu381-v1-4-180fb2d1f10c@gmail.com>
References: <20260726-b4-add-rkvdec2-vp9-vdpu381-v1-0-180fb2d1f10c@gmail.com>
In-Reply-To: <20260726-b4-add-rkvdec2-vp9-vdpu381-v1-0-180fb2d1f10c@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Igor Paunovic <royalnet026@gmail.com>, 
 Francesco Saverio Pavone <pavone.lawyer@gmail.com>, 
 Venkata Atchuta Bheemeswara Sarma Darbha <vdarbha0473@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_132849_070781_6D078468 
X-CRM114-Status: GOOD (  10.73  )
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

From: Igor Paunovic <royalnet026@gmail.com>

Ensure bytesperline is 64-byte aligned and scale sizeimage accordingly.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
Signed-off-by: Francesco Saverio Pavone <pavone.lawyer@gmail.com>
Signed-off-by: Venkata Atchuta Bheemeswara Sarma Darbha <vdarbha0473@gmail.com>
---
 drivers/media/platform/rockchip/rkvdec/rkvdec.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
index 436bb460f04e..6ab6530b1cc9 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
@@ -102,12 +102,20 @@ static void rkvdec_fill_decoded_pixfmt(struct rkvdec_ctx *ctx,
 				       struct v4l2_pix_format_mplane *pix_mp)
 {
 	const struct rkvdec_variant *variant = ctx->dev->variant;
+	struct v4l2_plane_pix_format *plane = &pix_mp->plane_fmt[0];
+	u32 aligned_bpl;
 
 	v4l2_fill_pixfmt_mp(pix_mp, pix_mp->pixelformat, pix_mp->width, pix_mp->height);
 
-	ctx->colmv_offset = pix_mp->plane_fmt[0].sizeimage;
+	/* ensure bpl is 64 byte aligned and scale sizeimage accordingly. */
+	aligned_bpl = ALIGN(plane->bytesperline, 64);
+	if (aligned_bpl != plane->bytesperline) {
+		plane->sizeimage = plane->sizeimage / plane->bytesperline * aligned_bpl;
+		plane->bytesperline = aligned_bpl;
+	}
 
-	pix_mp->plane_fmt[0].sizeimage += variant->ops->colmv_size(pix_mp->width, pix_mp->height);
+	ctx->colmv_offset = plane->sizeimage;
+	plane->sizeimage += variant->ops->colmv_size(pix_mp->width, pix_mp->height);
 }
 
 static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f,

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
