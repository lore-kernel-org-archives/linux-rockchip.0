Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E9F6C47077
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jan 2024 04:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GSPFHqvvI7AQ/d8NIVO/wbA1RM+OgzkKy+wTMUkIMLM=; b=4rpidLMTWd2QGp
	bO6yI8gexGuST7qUqgcxCRJD/+Ft9b2nLRTstpN2XgfouUkE8dxPpj14EPDmhC9WGQiAsiRPMKf0b
	DDyW79ey7PAzUEFv66amZ6Eu/ogEhSYiUPnWpt1AplqVKq68zYFsCMcxroPK2kTxPa85+r5KJ7ugf
	LwSzr3MmX9txKlO86YGGY/V07pynvMeyxT+P+lhVAE8latiGYEddJye4jTD7AbF0yckLc3JWuwSa0
	tIIG4vsrpcV2VY/MmUwuzAeUQMkeaTzfwQmlDC3Bbe+xZeXe1BgBmVoCZDgYJNIpJaJQbNxy69itq
	T6XLEr+cgXjvqVOjEN/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNmo4-00Fp0u-1P;
	Thu, 11 Jan 2024 04:36:40 +0000
Received: from [50.53.46.231] (helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
	id 1rNmnz-00Fp0S-3A;
	Thu, 11 Jan 2024 04:36:36 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH] media: verisilicon: fix hantro.h kernel-doc warning
Date: Wed, 10 Jan 2024 20:36:35 -0800
Message-ID: <20240111043635.17065-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

Remove an extraneous kernel-doc description in hantro.h to
eliminate a kernel-doc warning:

hantro.h:277: warning: Excess struct member 'jpeg_enc' description in 'hantro_ctx'

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
---
 drivers/media/platform/verisilicon/hantro.h |    1 -
 1 file changed, 1 deletion(-)

diff -- a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -237,7 +237,6 @@ struct hantro_dev {
  * @codec_ops:		Set of operations related to codec mode.
  * @postproc:		Post-processing context.
  * @h264_dec:		H.264-decoding context.
- * @jpeg_enc:		JPEG-encoding context.
  * @mpeg2_dec:		MPEG-2-decoding context.
  * @vp8_dec:		VP8-decoding context.
  * @hevc_dec:		HEVC-decoding context.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
