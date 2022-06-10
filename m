Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35AD2C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 19:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=28UwMO/JrAY/xZnMliLQ6axHqKB+4AculmPjxXf9rzM=; b=rskzb1SHfaa26qIf2viWDxmkoY
	abvigtkRY0C3Yh0MoV4r3+Xk84EmlTf8sg1ejNyFpiDxsocazdpZPnU0xwREHEF5/DTFeS+FgD0vT
	7P4fY+KOCpHmVBsYojLQd6hN7Ft5HiIbPY78iCsFAG9NL08T6nITD4I4prJGRaf1ui2rfBlfJOj4q
	ZZ/5w6n5SzUCaUaoledcVbCal133RxIFIH/55GIYrkIDycf8mPxTqNiTyzsFjgZ2cdJ9R6aktVrFZ
	YXyUEf7ZSOlBQj9pz2RWL97/f3BA0AtEuuoBnpuBq24TRPs06L73El6Ba4uaCWHfWNfCKBTRZ1gpy
	DZOa5cyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk5Q-009VkZ-KR; Fri, 10 Jun 2022 19:14:24 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzk5N-009Vie-PK
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 19:14:23 +0000
Received: from localhost (unknown [94.134.91.164])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DE838660171F;
	Fri, 10 Jun 2022 20:14:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654888456;
	bh=6GXcmorL5zNXiebjSNEfJIyYSLvMDnksHIFtCZk5Tow=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kIq37SN3oFbZFxM5JjGcBaERVUJj6Ua9iqJagSoqLJDGAUR45CSOdSGBQlD9858tU
	 lap4CDD0sJ49xIuNZVGpdLLjRMm7tOlkRNrv9t4Sqs1VP4XoRazkY6iYw/ENXBB1BA
	 Lcu6ElJFG3Tl6760KXW8XXJ5tfxp+GB9KMgzcsz4THPq6N6edCLYxqoNlia1edXTVC
	 B+6iZm0HtbBHDfd5ca5jEfy7k7rKZ9XAGFKsdW5CKu+2yqda7dVzeqiiNP2nGyn49w
	 CXJ366NeC9SCjIqjK3v2HK89kGBENqrQcTZj4rPPeaYXL12UKDHFbmnVebrMW3k/f0
	 039zdkvBOEIiQ==
Date: Fri, 10 Jun 2022 21:14:13 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: linux-media@vger.kernel.org,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kernel@collabora.com, linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 5/5] media: rkvdec: Improve error handling
Message-ID: <20220610191413.xgwfw5n6snje3khj@basti-XPS-13-9310>
References: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
 <20220610125215.240539-6-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610125215.240539-6-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_121422_004851_D1D9CE59 
X-CRM114-Status: GOOD (  11.14  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Nicolas,

Tested with: python3 fluster.py run -d GStreamer-H.264-V4L2SL-Gst1.0 -ts JVT-AVC_
V1 -so /tmp/h264_test.csv -f csv -j1

Ran 129/135 tests successfully               in 82.280 secs

On 10.06.2022 08:52, Nicolas Dufresne wrote:
>There is two way decode errors can occur. In one case, the ready

s/There is two way decode/There are two ways decoding/


>status is not set and nothing have been written into the destination,

s/nothing have been/nothing has been/

>while in the other case, the buffer is written but may contain a
>certain amount of errors. In order to differentiate these, we set
>the payload for the first case to 0.
>
>Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Tested-by: Sebastian Fricke <sebastian.fricke@collabora.com>

>---
> drivers/staging/media/rkvdec/rkvdec.c | 26 ++++++++++++++++++++++----
> 1 file changed, 22 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
>index 7e76f8b72885..27f1f7276dd2 100644
>--- a/drivers/staging/media/rkvdec/rkvdec.c
>+++ b/drivers/staging/media/rkvdec/rkvdec.c
>@@ -954,14 +954,32 @@ static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
> 	enum vb2_buffer_state state;
> 	u32 status;
>
>+	ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
> 	status = readl(rkvdec->regs + RKVDEC_REG_INTERRUPT);
>-	state = (status & RKVDEC_RDY_STA) ?
>-		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
>+
>+	if (!(status & RKVDEC_RDY_STA)) {
>+		struct vb2_v4l2_buffer *dst_buf = NULL;
>+
>+		if (status & RKVDEC_TIMEOUT_STA)
>+			pr_debug("Decoder stopped due to internal timeout.");
>+		else
>+			pr_debug("Decoder stopped due to internal error.");

(Just personal preference.. I would prefer "due to an internal" over
"due to internal")

>+
>+		/*
>+		 * When this happens, the buffer is left unmodified. As it
>+		 * contains no meaningful data we mark is a empty.

s/is a empty/it as empty/

The rest looks nice. Thanks.

Greetings,
Sebastian

>+		 */
>+		dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
>+		vb2_set_plane_payload(&dst_buf->vb2_buf, 0, 0);
>+		state = VB2_BUF_STATE_ERROR;
>+	} else {
>+		state = VB2_BUF_STATE_DONE;
>+	}
>
> 	writel(0, rkvdec->regs + RKVDEC_REG_INTERRUPT);
>-	ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
>
>-	if (ctx->coded_fmt_desc->ops->check_error_info)
>+	if (ctx->coded_fmt_desc->ops->check_error_info &&
>+	    state == VB2_BUF_STATE_DONE)
> 		state = ctx->coded_fmt_desc->ops->check_error_info(ctx);
>
> 	if (cancel_delayed_work(&rkvdec->watchdog_work))
>-- 
>2.36.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
