Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B548C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 May 2022 15:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=apkcEnK2ieziIlBkT1Eg5oOlsNZaJQZ9J43fsQpU0Rg=; b=hZyiAnIRPInJ4L
	1T1XRZwewp+r/hWQjFC6UOGpVAJ0mkCRYZXTgnhMF5sLi8zwjy2CEHppFNfEyI0xtiFKvZlFGPrHn
	D5NRNiOp7G4eUyHUmH+pRQVAchMZAM9F7BIKrs54BrEGelrvfH6sh9QpFg0Md2daP97jmcouhnLQT
	tm7N1lHnz7Lw7MmV/9gOiF0DRQDl/wv5pv4GmVCdyPolTp3TxRo0XqeOdHj9+VKjOU9rupWP9bOr0
	Y+D949DlH8dXg8ntx0HDNH+kbEM2Dd7L6I9dDFfkFyFJ4y1D4CfQ63d8yKufQ8Bdy+C0evCUG/zQP
	cnoyf1VSllWr3K3q+kNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nluJQ-006SFE-2i; Tue, 03 May 2022 15:19:40 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nluJN-006SEq-Dk
 for linux-rockchip@lists.infradead.org; Tue, 03 May 2022 15:19:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id A99681F43FFB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651591175;
 bh=Lzclz0U3PP1cu2Zk2o7bgbp4dAMVqW5utV/LmtxRt/8=;
 h=From:To:Cc:Subject:Date:From;
 b=No+GYtV7o4MzLGjC8LKJubPV8clRjS7feBQujvJ4NGgRzHhV+lf68pxiYSotIiQbh
 4qz6KfqEnD4DoCvAQg66QA2ysWV2wWaYMyzyv/Do+3SfucSYp7G4U1bZNBOqI6bC7O
 ABgqCgJuOA/+0tSxLTUNhMGOcZaEtpxBiBGMEnxkGSFAd+XzFhxGGHrL/w8gfl2IDh
 7GqLB81jS6KJO/dZKrnauPLzmG+pf9z61YcuQHgdVgJv0MpKYFSOfS+2XjrB7jj5ZR
 g8DX4a1zeh4eGdD336KDNAhixfR6gBKCJzQIJH4q7jX47PYvqrZFavOVbxbYvd9Onf
 8MgcZuAeSB40g==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 jon@nanocrew.net, aford173@gmail.com, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4] media: hantro: HEVC: unconditionnaly set
 pps_{cb/cr}_qp_offset values
Date: Tue,  3 May 2022 17:19:20 +0200
Message-Id: <20220503151920.802417-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_081937_635024_7AEDB873 
X-CRM114-Status: GOOD (  10.67  )
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

Always set pps_cb_qp_offset and pps_cr_qp_offset values in Hantro/G2
register whatever is V4L2_HEVC_PPS_FLAG_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT
flag value.
The vendor code does the same to set these values.
This fixes conformance test CAINIT_G_SHARP_3.

Fluster HEVC score is increase by one with this patch.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
---
This patch has been tested with these branches:
- GStreamer: https://gitlab.freedesktop.org/benjamin.gaignard1/gstreamer/-/tree/HEVC_aligned_with_kernel_5.15
- Linux: https://gitlab.collabora.com/benjamin.gaignard/for-upstream/-/tree/WIP_HEVC_UAPI_V6

It is the setup used to prepare version 6 of the patches to move HEVC
uAPI to stable.

Fluster score was 77/147 before these series of patches and is now
124/147.

 drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index 6deb31b7b993..503f4b028bc5 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -194,13 +194,8 @@ static void set_params(struct hantro_ctx *ctx)
 		hantro_reg_write(vpu, &g2_max_cu_qpd_depth, 0);
 	}
 
-	if (pps->flags & V4L2_HEVC_PPS_FLAG_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT) {
-		hantro_reg_write(vpu, &g2_cb_qp_offset, pps->pps_cb_qp_offset);
-		hantro_reg_write(vpu, &g2_cr_qp_offset, pps->pps_cr_qp_offset);
-	} else {
-		hantro_reg_write(vpu, &g2_cb_qp_offset, 0);
-		hantro_reg_write(vpu, &g2_cr_qp_offset, 0);
-	}
+	hantro_reg_write(vpu, &g2_cb_qp_offset, pps->pps_cb_qp_offset);
+	hantro_reg_write(vpu, &g2_cr_qp_offset, pps->pps_cr_qp_offset);
 
 	hantro_reg_write(vpu, &g2_filt_offset_beta, pps->pps_beta_offset_div2);
 	hantro_reg_write(vpu, &g2_filt_offset_tc, pps->pps_tc_offset_div2);
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
