Return-Path: <SRS0=TxuA=EB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34B6C388F9
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2020 16:29:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3EB7E22284
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2020 16:29:05 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="fFUGwQig"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3EB7E22284
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SUOYW9w1N6XwIS/s8gL0C2GBNMDye+i/aNwru/6PcNA=; b=fFUGwQiglDoN4nERU5XTeGsOXw
	EkGBkXs2qCkNcUYlg/xjqF69F6bjua44poUVZny85ynW5Cy4MwJZ9lZeFOxwg7FAIlAaZymSQxR2K
	t/S3h72fbPg+Fj4eNb9KiqzP9DwcJauh+4Jf8bH+HNboBDZMQWOX5H1bg7dIvdDNUdVIgDN0oU8nP
	cHOK3jRIS/I6C8TtiiALi+UTv/VLpoLF/uZ4tj4MvmrCly2/QKiUxUBUtlaldHvSiQzI4CdPpUArf
	VbbKak/A8FIqz4zUBft+liExeHhQJ4mkVW3Vl5c9Ohgvqe9Asji630eyMVNpxyHY1OIuAiWvU3K/V
	bcT0vAOg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kX5Mj-0008F5-A4; Mon, 26 Oct 2020 16:29:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kX5Mf-0008CW-OF
 for linux-rockchip@lists.infradead.org; Mon, 26 Oct 2020 16:28:59 +0000
Received: from guri.fritz.box
 (p200300c7cf0cab0029cf35aefe00641e.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf0c:ab00:29cf:35ae:fe00:641e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3722E1F44E41;
 Mon, 26 Oct 2020 16:28:55 +0000 (GMT)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH] media: staging: rkisp1: capture: set default quantization on
 'set_fmt'
Date: Mon, 26 Oct 2020 17:28:48 +0100
Message-Id: <20201026162848.18310-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201026_122857_924176_DEC13619 
X-CRM114-Status: GOOD (  11.13  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 's/try_fmt' ioctl, set the quantization field to
V4L2_QUANTIZATION_DEFAULT. This fixes the compliance
errors:

fail: v4l2-test-formats.cpp(357): quantization >= 0xff
fail: v4l2-test-formats.cpp(473): testColorspace(!node->is_io_mc, pix_mp.pixelformat, pix_mp.colorspace, pix_mp.ycbcr_enc, pix_mp.quantization)
test VIDIOC_TRY_FMT: FAIL
fail: v4l2-test-formats.cpp(357): quantization >= 0xff
fail: v4l2-test-formats.cpp(473): testColorspace(!node->is_io_mc, pix_mp.pixelformat, pix_mp.colorspace, pix_mp.ycbcr_enc, pix_mp.quantization)
test VIDIOC_S_FMT: FAIL

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index b6f497ce3e95..9a0f88b2254b 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -1132,6 +1132,7 @@ static void rkisp1_try_fmt(const struct rkisp1_capture *cap,
 	pixm->field = V4L2_FIELD_NONE;
 	pixm->colorspace = V4L2_COLORSPACE_DEFAULT;
 	pixm->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
+	pixm->quantization = V4L2_QUANTIZATION_DEFAULT;
 
 	info = rkisp1_fill_pixfmt(pixm, cap->id);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
