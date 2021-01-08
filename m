Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21C14C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 09:22:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C6FEA23383
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 09:22:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C6FEA23383
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OlrgoqQBXWT2mrbq8Dmng5NrB/co+YGA0uPB2ZTruYg=; b=l7wEUTaccPeiqI7wHhsjkgP0+O
	DiP7HMzJgpxbR5c0bcJuUSjpMH+VqoGSUUJWUcTO6S7ey175XPTy/rVdTgMo2rWACy5+lDd1EtnKa
	PmkS4MB5LqTiJfDD94bJhC5imHxAzKQn1Fgj539sDqkn2Is8QpLTLGiWu/TCiACDnij9a65HHSsQu
	wcFCMFcIAOURfMu6cIFPn2msoq5gKRlqsawczcqgkTVpx47RfcTO78rqTKpsmylmZDXsxPcc+kxNZ
	76qcZ07OjuADUPjXhA0XVUw+ACADwpYsNGuvEXWCRgrUFIH/9HMqVx/l3AbOWua8vOF9sibz3q26j
	QnPR7VTw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxnyJ-00029m-00; Fri, 08 Jan 2021 09:22:15 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxnyE-00027X-Sp
 for linux-rockchip@lists.infradead.org; Fri, 08 Jan 2021 09:22:13 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DByJQ1McQzl36x;
 Fri,  8 Jan 2021 17:20:54 +0800 (CST)
Received: from ubuntu.network (10.175.138.68) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.498.0; Fri, 8 Jan 2021 17:22:00 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <ezequiel@collabora.com>, <mchehab@kernel.org>,
 <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 -next] media: rkvdec: convert comma to semicolon
Date: Fri, 8 Jan 2021 17:22:44 +0800
Message-ID: <20210108092244.18845-1-zhengyongjun3@huawei.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Originating-IP: [10.175.138.68]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_042212_567186_89CE1436 
X-CRM114-Status: UNSURE (   8.42  )
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
Cc: gregkh@linuxfoundation.org, Zheng Yongjun <zhengyongjun3@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Replace a comma between expression statements by a semicolon.

Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index d25c4a37e2af..66572066e7a0 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -130,7 +130,7 @@ static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f,
 	memset(f, 0, sizeof(*f));
 	f->fmt.pix_mp.pixelformat = fourcc;
 	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
-	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709,
+	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709;
 	f->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 	f->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
 	f->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
-- 
2.22.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
