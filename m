Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26269C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 20:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JqGPZFUtPTIgrt3qpOCihFL5P1KRK+O0dbzkpDNSbsw=; b=Rpos8OiNfHVZi3
	LT4vyQbaYtaB/j1CjqB8XFkSf4lmBn2rBVWBWNWMrIEJ1cfhCVn/be4R8GvAj0kn0deo82V9tLLPX
	rc2NlSQXyw3fXDl93DhSN8dqWcj27+kWazzM0z727nTunoRYXDo3uN1/vZ0NQjPF2OPrKPaqZhZCq
	PPegMThKE3BN7J3ap+qrWx/hZX2iFzIlmhXP6GkQ0roc+uQWDG/1QXebyZjyKo41WehRj5N60d5wU
	qJ/np72t+vUuGsa6lS0wixloS55+TxsPHzVHTluPtg2k+LBlnyn0C+YuZzjtDXkG9xu6N7nSWLSKW
	5/fMjBIQKcvkewuHwRQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbq3O-002dWy-WC; Tue, 05 Apr 2022 20:45:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbq3C-002dHt-UJ
 for linux-rockchip@lists.infradead.org; Tue, 05 Apr 2022 20:45:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 8AE231F448D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1649191517;
 bh=rqMU1/6TJ46L9lH5r2+bP74ysDX3ywT+LO6k1I+k3Bg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e0xQeerm22/DL9eaBXTFzKpNmAFPoq+WBaI7dSn6jnuIgTrIWvI/lo4J7spQbFoKq
 Cos7uP0Jy4wKHvWiN6o8mH8HZ4A2QUjKDw4EG9pYcAfTuaD+Q2Fz4HfSCBn0mw9rqb
 /wSjUUUNcjRJJl8WwuWtruH4MiXh41HjlAPFPg9u4zWPodmfTMx1JRHILNQMIZUpOT
 Uzgigm0SbC7g1UHGb7X0bCpvo/shMpj49NjkeMilgOELJ6yB4G5IUdnm/0o/g9vk2G
 OgudDuSyHR6f2nrHuqtGLvs4cgtFVaWV+WxlKyrH6GjmwZXC5CBXCmCL/KMZJ8AWiF
 MrFNqFeuAl3cA==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: [PATCH v3 21/24] media: hantro: Stop using H.264 parameter pic_num
Date: Tue,  5 Apr 2022 16:44:22 -0400
Message-Id: <20220405204426.259074-22-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220405204426.259074-1-nicolas.dufresne@collabora.com>
References: <20220405204426.259074-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_134519_172679_F602F826 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
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

The hardware expects FrameNumWrap or long_term_frame_idx. Picture
numbers are per field, and are mostly used during the memory
management process, which is done in userland. This fixes two
ITU conformance tests:

  - MR6_BT_B
  - MR8_BT_B

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/hantro/hantro_h264.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
index 0b4d2491be3b..228629fb3cdf 100644
--- a/drivers/staging/media/hantro/hantro_h264.c
+++ b/drivers/staging/media/hantro/hantro_h264.c
@@ -354,8 +354,6 @@ u16 hantro_h264_get_ref_nbr(struct hantro_ctx *ctx, unsigned int dpb_idx)
 
 	if (!(dpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
 		return 0;
-	if (dpb->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
-		return dpb->pic_num;
 	return dpb->frame_num;
 }
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
